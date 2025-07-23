import uuid
from faker import Faker
import random
from datetime import datetime

# Initialize Faker for dummy data
fake = Faker()

# File to store SQL queries
output_file = 'bulk-operation.sql'

# Helper functions
def generate_uuid():
    return str(uuid.uuid4())

def generate_timestamp():
    return datetime.now().strftime('%Y-%m-%d %H:%M:%S')

# Data stores for tracking IDs to satisfy foreign key constraints
user_ids = []
blog_ids = []
tag_ids = []

# Operation generators
def generate_user_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        user_id = generate_uuid()
        email = fake.unique.email()
        username = fake.unique.user_name()
        password = fake.password()
        full_name = fake.name().replace("'", "''")  # Escape single quotes
        image = f"'{fake.image_url()}'" if random.choice([True, False]) else 'NULL'
        query = f"""
        INSERT INTO [User] (id, email, username, password, fullName, image, createdAt, updatedAt)
        VALUES ('{user_id}', '{email}', '{username}', '{password}', '{full_name}', {image}, '{generate_timestamp()}', '{generate_timestamp()}');
        """
        operations.append(query)
        user_ids.append(user_id)
    
    # Updates
    for _ in range(update_count):
        if user_ids:
            user_id = random.choice(user_ids)
            email = fake.unique.email()
            username = fake.unique.user_name()
            full_name = fake.name().replace("'", "''")
            image = f"'{fake.image_url()}'" if random.choice([True, False]) else 'NULL'
            query = f"""
            UPDATE [User]
            SET email = '{email}', username = '{username}', fullName = '{full_name}', image = {image}, updatedAt = '{generate_timestamp()}'
            WHERE id = '{user_id}';
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        if user_ids:
            user_id = random.choice(user_ids)
            query = f"DELETE FROM [User] WHERE id = '{user_id}';"
            operations.append(query)
            user_ids.remove(user_id)
    
    random.shuffle(operations)
    return operations

def generate_blog_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        if user_ids:
            blog_id = generate_uuid()
            user_id = random.choice(user_ids)
            title = fake.sentence(nb_words=6).replace("'", "''")
            body = fake.paragraph(nb_sentences=5).replace("'", "''")
            cover_image = f"'{fake.image_url()}'" if random.choice([True, False]) else 'NULL'
            slug = fake.slug()
            query = f"""
            INSERT INTO Blog (id, title, body, coverImage, slug, userId, createdAt, updatedAt)
            VALUES ('{blog_id}', '{title}', '{body}', {cover_image}, '{slug}', '{user_id}', '{generate_timestamp()}', '{generate_timestamp()}');
            """
            operations.append(query)
            blog_ids.append(blog_id)
    
    # Updates
    for _ in range(update_count):
        if blog_ids:
            blog_id = random.choice(blog_ids)
            title = fake.sentence(nb_words=6).replace("'", "''")
            body = fake.paragraph(nb_sentences=5).replace("'", "''")
            cover_image = f"'{fake.image_url()}'" if random.choice([True, False]) else 'NULL'
            slug = fake.slug()
            query = f"""
            UPDATE Blog
            SET title = '{title}', body = '{body}', coverImage = {cover_image}, slug = '{slug}', updatedAt = '{generate_timestamp()}'
            WHERE id = '{blog_id}';
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        if blog_ids:
            blog_id = random.choice(blog_ids)
            query = f"DELETE FROM Blog WHERE id = '{blog_id}';"
            operations.append(query)
            blog_ids.remove(blog_id)
    
    random.shuffle(operations)
    return operations

def generate_like_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        if user_ids and blog_ids:
            like_id = generate_uuid()
            user_id = random.choice(user_ids)
            blog_id = random.choice(blog_ids)
            query = f"""
            INSERT INTO [Like] (id, userId, blogId)
            VALUES ('{like_id}', '{user_id}', '{blog_id}');
            """
            operations.append(query)
    
    # Updates
    for _ in range(update_count):
        if user_ids and blog_ids:
            query = f"""
            UPDATE [Like]
            SET userId = '{random.choice(user_ids)}', [blogId] = '{random.choice(blog_ids)}'
            WHERE id IN (SELECT TOP 1 id FROM [Like]);
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        query = f"DELETE FROM [Like] WHERE id IN (SELECT TOP 1 id FROM [Like]);"
        operations.append(query)
    
    random.shuffle(operations)
    return operations

def generate_save_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        if user_ids and blog_ids:
            save_id = generate_uuid()
            user_id = random.choice(user_ids)
            blog_id = random.choice(blog_ids)
            query = f"""
            INSERT INTO [Save] (id, userId, blogId, createdAt)
            VALUES ('{save_id}', '{user_id}', '{blog_id}', '{generate_timestamp()}');
            """
            operations.append(query)
    
    # Updates
    for _ in range(update_count):
        if user_ids and blog_ids:
            query = f"""
            UPDATE [Save]
            SET userId = '{random.choice(user_ids)}', blogId = '{random.choice(blog_ids)}', createdAt = '{generate_timestamp()}'
            WHERE id IN (SELECT TOP 1 id FROM [Save]);
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        query = f"DELETE FROM [Save] WHERE id IN (SELECT TOP 1 id FROM [Save]);"
        operations.append(query)
    
    random.shuffle(operations)
    return operations

def generate_tag_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        tag_id = generate_uuid()
        name = fake.unique.word()
        query = f"""
        INSERT INTO Tag (id, name)
        VALUES ('{tag_id}', '{name}');
        """
        operations.append(query)
        tag_ids.append(tag_id)
    
    # Updates
    for _ in range(update_count):
        if tag_ids:
            tag_id = random.choice(tag_ids)
            name = fake.unique.word()
            query = f"""
            UPDATE Tag
            SET name = '{name}'
            WHERE id = '{tag_id}';
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        if tag_ids:
            tag_id = random.choice(tag_ids)
            query = f"DELETE FROM Tag WHERE id = '{tag_id}';"
            operations.append(query)
            tag_ids.remove(tag_id)
    
    random.shuffle(operations)
    return operations

def generate_blogtag_operations(num_operations=200):
    operations = []
    insert_count, update_count, delete_count = 100, 70, 30
    
    # Inserts
    for _ in range(insert_count):
        if blog_ids and tag_ids:
            blogtag_id = generate_uuid()
            blog_id = random.choice(blog_ids)
            tag_id = random.choice(tag_ids)
            query = f"""
            INSERT INTO BlogTag (id, blogId, tagId)
            VALUES ('{blogtag_id}', '{blog_id}', '{tag_id}');
            """
            operations.append(query)
    
    # Updates
    for _ in range(update_count):
        if blog_ids and tag_ids:
            query = f"""
            UPDATE BlogTag
            SET blogId = '{random.choice(blog_ids)}', tagId = '{random.choice(tag_ids)}'
            WHERE id IN (SELECT TOP 1 id FROM BlogTag);
            """
            operations.append(query)
    
    # Deletes
    for _ in range(delete_count):
        query = f"DELETE FROM BlogTag WHERE id IN (SELECT TOP 1 id FROM BlogTag);"
        operations.append(query)
    
    random.shuffle(operations)
    return operations

# Write operations to SQL file
with open(output_file, 'w', encoding='utf-8') as f:
    f.write('-- User Operations\n')
    for query in generate_user_operations():
        f.write(query + '\n')
    
    f.write('\n-- Blog Operations\n')
    for query in generate_blog_operations():
        f.write(query + '\n')
    
    f.write('\n-- Tag Operations\n')
    for query in generate_tag_operations():
        f.write(query + '\n')
    
    f.write('\n-- BlogTag Operations\n')
    for query in generate_blogtag_operations():
        f.write(query + '\n')
    
    f.write('\n-- Like Operations\n')
    for query in generate_like_operations():
        f.write(query + '\n')
    
    f.write('\n-- Save Operations\n')
    for query in generate_save_operations():
        f.write(query + '\n')

print(f"SQL queries have been written to {output_file}")