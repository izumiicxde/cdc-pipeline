import pyodbc
import uuid
from faker import Faker
import random
from datetime import datetime, timedelta
import logging

# Set up logging
logging.basicConfig(filename='sql_operations.log', level=logging.INFO, format='%(asctime)s - %(message)s')

# Initialize Faker for dummy data
fake = Faker()

# Database connection with SQL Server authentication
conn_str = (
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=NESS-OS;"
    "DATABASE=theproject;"
    "UID=admin;"
    "PWD=adminpass;"
)

try:
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()
except pyodbc.Error as e:
    logging.error(f"Failed to connect to database: {e}")
    raise

# Helper functions
def generate_uuid():
    return str(uuid.uuid4())

def generate_created_at():
    """Generate a createdAt timestamp spread over at least 2 weeks (14 days)."""
    start_date = datetime.now() - timedelta(days=30)  # 30 days ago to ensure 2-week spread
    end_date = datetime.now()
    return fake.date_time_between(start_date=start_date, end_date=end_date).strftime('%Y-%m-%d %H:%M:%S')

def generate_updated_at(created_at):
    """Generate updatedAt after createdAt."""
    created_at_dt = datetime.strptime(created_at, '%Y-%m-%d %H:%M:%S')
    return fake.date_time_between(start_date=created_at_dt, end_date=datetime.now()).strftime('%Y-%m-%d %H:%M:%S')

# Data stores for tracking IDs to satisfy foreign key constraints
user_ids = []
blog_ids = []
tag_ids = []

# Operation generators
def generate_user_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60  # Total 400
    
    # Inserts
    for _ in range(insert_count):
        user_id = generate_uuid()
        email = fake.unique.email()
        username = fake.unique.user_name()
        password = fake.password()
        full_name = fake.name()
        image = fake.image_url() if random.choice([True, False]) else None
        created_at = generate_created_at()
        updated_at = generate_updated_at(created_at)
        query = """
        INSERT INTO [User] (id, email, username, password, fullName, image, createdAt, updatedAt)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        """
        params = (user_id, email, username, password, full_name, image, created_at, updated_at)
        operations.append((query, params))
        user_ids.append(user_id)
    
    # Updates
    for _ in range(update_count):
        if user_ids:
            user_id = random.choice(user_ids)
            email = fake.unique.email()
            username = fake.unique.user_name()
            full_name = fake.name()
            image = fake.image_url() if random.choice([True, False]) else None
            created_at = generate_created_at()
            updated_at = generate_updated_at(created_at)
            query = """
            UPDATE [User]
            SET email = ?, username = ?, fullName = ?, image = ?, createdAt = ?, updatedAt = ?
            WHERE id = ?
            """
            params = (email, username, full_name, image, created_at, updated_at, user_id)
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        if user_ids:
            user_id = random.choice(user_ids)
            query = "DELETE FROM [User] WHERE id = ?"
            params = (user_id,)
            operations.append((query, params))
            user_ids.remove(user_id)
    
    random.shuffle(operations)
    return operations

def generate_blog_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60
    
    # Inserts
    for _ in range(insert_count):
        if user_ids:
            blog_id = generate_uuid()
            user_id = random.choice(user_ids)
            title = fake.sentence(nb_words=6)
            body = fake.paragraph(nb_sentences=5)
            cover_image = fake.image_url() if random.choice([True, False]) else None
            slug = fake.slug()
            created_at = generate_created_at()
            updated_at = generate_updated_at(created_at)
            query = """
            INSERT INTO Blog (id, title, body, coverImage, slug, userId, createdAt, updatedAt)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            """
            params = (blog_id, title, body, cover_image, slug, user_id, created_at, updated_at)
            operations.append((query, params))
            blog_ids.append(blog_id)
    
    # Updates
    for _ in range(update_count):
        if blog_ids:
            blog_id = random.choice(blog_ids)
            title = fake.sentence(nb_words=6)
            body = fake.paragraph(nb_sentences=5)
            cover_image = fake.image_url() if random.choice([True, False]) else None
            slug = fake.slug()
            created_at = generate_created_at()
            updated_at = generate_updated_at(created_at)
            query = """
            UPDATE Blog
            SET title = ?, body = ?, coverImage = ?, slug = ?, createdAt = ?, updatedAt = ?
            WHERE id = ?
            """
            params = (title, body, cover_image, slug, created_at, updated_at, blog_id)
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        if blog_ids:
            blog_id = random.choice(blog_ids)
            query = "DELETE FROM Blog WHERE id = ?"
            params = (blog_id,)
            operations.append((query, params))
            blog_ids.remove(blog_id)
    
    random.shuffle(operations)
    return operations

def generate_like_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60
    
    # Inserts
    for _ in range(insert_count):
        if user_ids and blog_ids:
            user_id = random.choice(user_ids)
            blog_id = random.choice(blog_ids)
            like_id = generate_uuid()
            query = """
            INSERT INTO [Like] (id, userId, blogId)
            VALUES (?, ?, ?)
            """
            params = (like_id, user_id, blog_id)
            operations.append((query, params))
    
    # Updates
    for _ in range(update_count):
        if user_ids and blog_ids:
            query = """
            UPDATE [Like]
            SET userId = ?, blogId = ?
            WHERE id IN (SELECT TOP 1 id FROM [Like])
            """
            params = (random.choice(user_ids), random.choice(blog_ids))
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        query = "DELETE FROM [Like] WHERE id IN (SELECT TOP 1 id FROM [Like])"
        params = ()
        operations.append((query, params))
    
    random.shuffle(operations)
    return operations

def generate_save_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60
    
    # Inserts
    for _ in range(insert_count):
        if user_ids and blog_ids:
            save_id = generate_uuid()
            user_id = random.choice(user_ids)
            blog_id = random.choice(blog_ids)
            created_at = generate_created_at()
            query = """
            INSERT INTO [Save] (id, userId, blogId, createdAt)
            VALUES (?, ?, ?, ?)
            """
            params = (save_id, user_id, blog_id, created_at)
            operations.append((query, params))
    
    # Updates
    for _ in range(update_count):
        if user_ids and blog_ids:
            created_at = generate_created_at()
            query = """
            UPDATE [Save]
            SET userId = ?, blogId = ?, createdAt = ?
            WHERE id IN (SELECT TOP 1 id FROM [Save])
            """
            params = (random.choice(user_ids), random.choice(blog_ids), created_at)
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        query = "DELETE FROM [Save] WHERE id IN (SELECT TOP 1 id FROM [Save])"
        params = ()
        operations.append((query, params))
    
    random.shuffle(operations)
    return operations

def generate_tag_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60
    
    # Inserts
    for _ in range(insert_count):
        tag_id = generate_uuid()
        name = fake.unique.word()
        query = """
        INSERT INTO Tag (id, name)
        VALUES (?, ?)
        """
        params = (tag_id, name)
        operations.append((query, params))
        tag_ids.append(tag_id)
    
    # Updates
    for _ in range(update_count):
        if tag_ids:
            tag_id = random.choice(tag_ids)
            name = fake.unique.word()
            query = """
            UPDATE Tag
            SET name = ?
            WHERE id = ?
            """
            params = (name, tag_id)
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        if tag_ids:
            tag_id = random.choice(tag_ids)
            query = "DELETE FROM Tag WHERE id = ?"
            params = (tag_id,)
            operations.append((query, params))
            tag_ids.remove(tag_id)
    
    random.shuffle(operations)
    return operations

def generate_blogtag_operations(num_operations=400):
    operations = []
    insert_count, update_count, delete_count = 200, 140, 60
    
    # Inserts
    for _ in range(insert_count):
        if blog_ids and tag_ids:
            blogtag_id = generate_uuid()
            blog_id = random.choice(blog_ids)
            tag_id = random.choice(tag_ids)
            query = """
            INSERT INTO BlogTag (id, blogId, tagId)
            VALUES (?, ?, ?)
            """
            params = (blogtag_id, blog_id, tag_id)
            operations.append((query, params))
    
    # Updates
    for _ in range(update_count):
        if blog_ids and tag_ids:
            query = """
            UPDATE BlogTag
            SET blogId = ?, tagId = ?
            WHERE id IN (SELECT TOP 1 id FROM BlogTag)
            """
            params = (random.choice(blog_ids), random.choice(tag_ids))
            operations.append((query, params))
    
    # Deletes
    for _ in range(delete_count):
        query = "DELETE FROM BlogTag WHERE id IN (SELECT TOP 1 id FROM BlogTag)"
        params = ()
        operations.append((query, params))
    
    random.shuffle(operations)
    return operations

# Execute operations
def execute_operations(operations, table_name):
    for query, params in operations:
        try:
            logging.info(f"Executing for {table_name}: {query.strip()} with params {params}")
            cursor.execute(query, params)
            conn.commit()
        except pyodbc.Error as e:
            logging.error(f"Error executing query for {table_name}: {query.strip()} - {str(e)}")
            conn.rollback()

# Generate and execute operations for each table
try:
    execute_operations(generate_user_operations(), "User")
    execute_operations(generate_blog_operations(), "Blog")
    execute_operations(generate_tag_operations(), "Tag")
    execute_operations(generate_blogtag_operations(), "BlogTag")
    execute_operations(generate_like_operations(), "Like")
    execute_operations(generate_save_operations(), "Save")
except pyodbc.Error as e:
    logging.error(f"Error during operations: {e}")
finally:
    cursor.close()
    conn.close()