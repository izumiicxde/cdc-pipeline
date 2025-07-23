PRINT '--- Starting Data Insertion ---';
PRINT 'This script will insert approximately 50-60 records into each table.';


--------------------------------------------------------------------------------------
-- 1. Insert Users (60 records)
--------------------------------------------------------------------------------------
PRINT 'Inserting 60 Users...';
INSERT INTO [dbo].[User] (id, email, username, password, fullName, image) VALUES
(CONVERT(VARCHAR(36), NEWID()), 'user1@example.com', 'user_alpha', 'hashed_pass_1', 'Alice Johnson', '[https://placehold.co/100x100/FF0000/FFFFFF?text=A1](https://placehold.co/100x100/FF0000/FFFFFF?text=A1)'),
(CONVERT(VARCHAR(36), NEWID()), 'user2@example.com', 'user_beta', 'hashed_pass_2', 'Bob Smith', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user3@example.com', 'user_gamma', 'hashed_pass_3', 'Charlie Brown', '[https://placehold.co/100x100/00FF00/000000?text=C3](https://placehold.co/100x100/00FF00/000000?text=C3)'),
(CONVERT(VARCHAR(36), NEWID()), 'user4@example.com', 'user_delta', 'hashed_pass_4', 'Diana Prince', '[https://placehold.co/100x100/0000FF/FFFFFF?text=D4](https://placehold.co/100x100/0000FF/FFFFFF?text=D4)'),
(CONVERT(VARCHAR(36), NEWID()), 'user5@example.com', 'user_epsilon', 'hashed_pass_5', 'Eve Adams', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user6@example.com', 'user_zeta', 'hashed_pass_6', 'Frank White', '[https://placehold.co/100x100/FFFF00/000000?text=F6](https://placehold.co/100x100/FFFF00/000000?text=F6)'),
(CONVERT(VARCHAR(36), NEWID()), 'user7@example.com', 'user_eta', 'hashed_pass_7', 'Grace Kelly', '[https://placehold.co/100x100/FF00FF/FFFFFF?text=G7](https://placehold.co/100x100/FF00FF/FFFFFF?text=G7)'),
(CONVERT(VARCHAR(36), NEWID()), 'user8@example.com', 'user_theta', 'hashed_pass_8', 'Harry Potter', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user9@example.com', 'user_iota', 'hashed_pass_9', 'Ivy Green', '[https://placehold.co/100x100/00FFFF/000000?text=I9](https://placehold.co/100x100/00FFFF/000000?text=I9)'),
(CONVERT(VARCHAR(36), NEWID()), 'user10@example.com', 'user_kappa', 'hashed_pass_10', 'Jack Black', '[https://placehold.co/100x100/800000/FFFFFF?text=J10](https://placehold.co/100x100/800000/FFFFFF?text=J10)'),
(CONVERT(VARCHAR(36), NEWID()), 'user11@example.com', 'user_lambda', 'hashed_pass_11', 'Karen Blue', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user12@example.com', 'user_mu', 'hashed_pass_12', 'Leo Red', '[https://placehold.co/100x100/808000/FFFFFF?text=L12](https://placehold.co/100x100/808000/FFFFFF?text=L12)'),
(CONVERT(VARCHAR(36), NEWID()), 'user13@example.com', 'user_nu', 'hashed_pass_13', 'Mia Orange', '[https://placehold.co/100x100/008000/FFFFFF?text=M13](https://placehold.co/100x100/008000/FFFFFF?text=M13)'),
(CONVERT(VARCHAR(36), NEWID()), 'user14@example.com', 'user_xi', 'hashed_pass_14', 'Noah Purple', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user15@example.com', 'user_omicron', 'hashed_pass_15', 'Olivia Yellow', '[https://placehold.co/100x100/800080/FFFFFF?text=O15](https://placehold.co/100x100/800080/FFFFFF?text=O15)'),
(CONVERT(VARCHAR(36), NEWID()), 'user16@example.com', 'user_pi', 'hashed_pass_16', 'Peter White', '[https://placehold.co/100x100/008080/FFFFFF?text=P16](https://placehold.co/100x100/008080/FFFFFF?text=P16)'),
(CONVERT(VARCHAR(36), NEWID()), 'user17@example.com', 'user_rho', 'hashed_pass_17', 'Quinn Black', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user18@example.com', 'user_sigma', 'hashed_pass_18', 'Rachel Green', '[https://placehold.co/100x100/C0C0C0/000000?text=R18](https://placehold.co/100x100/C0C0C0/000000?text=R18)'),
(CONVERT(VARCHAR(36), NEWID()), 'user19@example.com', 'user_tau', 'hashed_pass_19', 'Sam Blue', '[https://placehold.co/100x100/FFD700/000000?text=S19](https://placehold.co/100x100/FFD700/000000?text=S19)'),
(CONVERT(VARCHAR(36), NEWID()), 'user20@example.com', 'user_upsilon', 'hashed_pass_20', 'Tina Fey', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user21@example.com', 'user_phi', 'hashed_pass_21', 'Uma Thurman', '[https://placehold.co/100x100/DAA520/000000?text=U21](https://placehold.co/100x100/DAA520/000000?text=U21)'),
(CONVERT(VARCHAR(36), NEWID()), 'user22@example.com', 'user_chi', 'hashed_pass_22', 'Victor Hu', '[https://placehold.co/100x100/F08080/000000?text=V22](https://placehold.co/100x100/F08080/000000?text=V22)'),
(CONVERT(VARCHAR(36), NEWID()), 'user23@example.com', 'user_psi', 'hashed_pass_23', 'Wendy Darling', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user24@example.com', 'user_omega', 'hashed_pass_24', 'Xavier Niel', '[https://placehold.co/100x100/ADD8E6/000000?text=X24](https://placehold.co/100x100/ADD8E6/000000?text=X24)'),
(CONVERT(VARCHAR(36), NEWID()), 'user25@example.com', 'user_a', 'hashed_pass_25', 'Yara Greyjoy', '[https://placehold.co/100x100/90EE90/000000?text=Y25](https://placehold.co/100x100/90EE90/000000?text=Y25)'),
(CONVERT(VARCHAR(36), NEWID()), 'user26@example.com', 'user_b', 'hashed_pass_26', 'Zoe Saldaña', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user27@example.com', 'user_c', 'hashed_pass_27', 'Adam Driver', '[https://placehold.co/100x100/DDA0DD/000000?text=A27](https://placehold.co/100x100/DDA0DD/000000?text=A27)'),
(CONVERT(VARCHAR(36), NEWID()), 'user28@example.com', 'user_d', 'hashed_pass_28', 'Bella Hadid', '[https://placehold.co/100x100/F0E68C/000000?text=B28](https://placehold.co/100x100/F0E68C/000000?text=B28)'),
(CONVERT(VARCHAR(36), NEWID()), 'user29@example.com', 'user_e', 'hashed_pass_29', 'Chris Evans', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user30@example.com', 'user_f', 'hashed_pass_30', 'Daisy Ridley', '[https://placehold.co/100x100/FFB6C1/000000?text=D30](https://placehold.co/100x100/FFB6C1/000000?text=D30)'),
(CONVERT(VARCHAR(36), NEWID()), 'user31@example.com', 'user_g', 'hashed_pass_31', 'Ethan Hawke', '[https://placehold.co/100x100/87CEEB/000000?text=E31](https://placehold.co/100x100/87CEEB/000000?text=E31)'),
(CONVERT(VARCHAR(36), NEWID()), 'user32@example.com', 'user_h', 'hashed_pass_32', 'Felicity Jones', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user33@example.com', 'user_i', 'hashed_pass_33', 'Gigi Hadid', '[https://placehold.co/100x100/FF6347/FFFFFF?text=G33](https://placehold.co/100x100/FF6347/FFFFFF?text=G33)'),
(CONVERT(VARCHAR(36), NEWID()), 'user34@example.com', 'user_j', 'hashed_pass_34', 'Hugh Jackman', '[https://placehold.co/100x100/4682B4/FFFFFF?text=H34](https://placehold.co/100x100/4682B4/FFFFFF?text=H34)'),
(CONVERT(VARCHAR(36), NEWID()), 'user35@example.com', 'user_k', 'hashed_pass_35', 'Isla Fisher', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user36@example.com', 'user_l', 'hashed_pass_36', 'Jake Gyllenhaal', '[https://placehold.co/100x100/D2B48C/000000?text=J36](https://placehold.co/100x100/D2B48C/000000?text=J36)'),
(CONVERT(VARCHAR(36), NEWID()), 'user37@example.com', 'user_m', 'hashed_pass_37', 'Kate Winslet', '[https://placehold.co/100x100/F0F8FF/000000?text=K37](https://placehold.co/100x100/F0F8FF/000000?text=K37)'),
(CONVERT(VARCHAR(36), NEWID()), 'user38@example.com', 'user_n', 'hashed_pass_38', 'Liam Hemsworth', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user39@example.com', 'user_o', 'hashed_pass_39', 'Mila Kunis', '[https://placehold.co/100x100/FAEBD7/000000?text=M39](https://placehold.co/100x100/FAEBD7/000000?text=M39)'),
(CONVERT(VARCHAR(36), NEWID()), 'user40@example.com', 'user_p', 'hashed_pass_40', 'Nicole Kidman', '[https://placehold.co/100x100/E0FFFF/000000?text=N40](https://placehold.co/100x100/E0FFFF/000000?text=N40)'),
(CONVERT(VARCHAR(36), NEWID()), 'user41@example.com', 'user_q', 'hashed_pass_41', 'Orlando Bloom', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user42@example.com', 'user_r', 'hashed_pass_42', 'Penelope Cruz', '[https://placehold.co/100x100/F5F5DC/000000?text=P42](https://placehold.co/100x100/F5F5DC/000000?text=P42)'),
(CONVERT(VARCHAR(36), NEWID()), 'user43@example.com', 'user_s', 'hashed_pass_43', 'Ryan sling', '[https://placehold.co/100x100/FFE4C4/000000?text=R43](https://placehold.co/100x100/FFE4C4/000000?text=R43)'),
(CONVERT(VARCHAR(36), NEWID()), 'user44@example.com', 'user_t', 'hashed_pass_44', 'Scarlett Johansson', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user45@example.com', 'user_u', 'hashed_pass_45', 'Tom Hanks', '[https://placehold.co/100x100/FFF0F5/000000?text=T45](https://placehold.co/100x100/FFF0F5/000000?text=T45)'),
(CONVERT(VARCHAR(36), NEWID()), 'user46@example.com', 'user_v', 'hashed_pass_46', 'Uma Thurman', '[https://placehold.co/100x100/F8F8FF/000000?text=U46](https://placehold.co/100x100/F8F8FF/000000?text=U46)'),
(CONVERT(VARCHAR(36), NEWID()), 'user47@example.com', 'user_w', 'hashed_pass_47', 'Vin Diesel', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user48@example.com', 'user_x', 'hashed_pass_48', 'Will Smith', '[https://placehold.co/100x100/F5FFFA/000000?text=W48](https://placehold.co/100x100/F5FFFA/000000?text=W48)'),
(CONVERT(VARCHAR(36), NEWID()), 'user49@example.com', 'user_y', 'hashed_pass_49', 'Xena Warrior', '[https://placehold.co/100x100/F0FFFF/000000?text=X49](https://placehold.co/100x100/F0FFFF/000000?text=X49)'),
(CONVERT(VARCHAR(36), NEWID()), 'user50@example.com', 'user_z', 'hashed_pass_50', 'Yolanda Vega', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user51@example.com', 'user_aa', 'hashed_pass_51', 'Zac Efron', '[https://placehold.co/100x100/FDF5E6/000000?text=Z51](https://placehold.co/100x100/FDF5E6/000000?text=Z51)'),
(CONVERT(VARCHAR(36), NEWID()), 'user52@example.com', 'user_bb', 'hashed_pass_52', 'Amy Adams', '[https://placehold.co/100x100/FFEBCD/000000?text=A52](https://placehold.co/100x100/FFEBCD/000000?text=A52)'),
(CONVERT(VARCHAR(36), NEWID()), 'user53@example.com', 'user_cc', 'hashed_pass_53', 'Ben Affleck', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user54@example.com', 'user_dd', 'hashed_pass_54', 'Cate Blanchett', '[https://placehold.co/100x100/FFEFD5/000000?text=C54](https://placehold.co/100x100/FFEFD5/000000?text=C54)'),
(CONVERT(VARCHAR(36), NEWID()), 'user55@example.com', 'user_ee', 'hashed_pass_55', 'Denzel Washington', '[https://placehold.co/100x100/FFF5EE/000000?text=D55](https://placehold.co/100x100/FFF5EE/000000?text=D55)'),
(CONVERT(VARCHAR(36), NEWID()), 'user56@example.com', 'user_ff', 'hashed_pass_56', 'Emma Stone', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user57@example.com', 'user_gg', 'hashed_pass_57', 'George Clooney', '[https://placehold.co/100x100/F0F8FF/000000?text=G57](https://placehold.co/100x100/F0F8FF/000000?text=G57)'),
(CONVERT(VARCHAR(36), NEWID()), 'user58@example.com', 'user_hh', 'hashed_pass_58', 'Helen Mirren', '[https://placehold.co/100x100/F5F5DC/000000?text=H58](https://placehold.co/100x100/F5F5DC/000000?text=H58)'),
(CONVERT(VARCHAR(36), NEWID()), 'user59@example.com', 'user_ii', 'hashed_pass_59', 'Idris Elba', NULL),
(CONVERT(VARCHAR(36), NEWID()), 'user60@example.com', 'user_jj', 'hashed_pass_60', 'Julia Roberts', '[https://placehold.co/100x100/FFF0F5/000000?text=J60](https://placehold.co/100x100/FFF0F5/000000?text=J60)');


--------------------------------------------------------------------------------------
-- 2. Insert Blogs (50 records)
--------------------------------------------------------------------------------------
PRINT 'Inserting 50 Blogs...';
INSERT INTO [dbo].[Blog] (id, title, body, coverImage, slug, userId) VALUES
(CONVERT(VARCHAR(36), NEWID()), 'The Future of AI in Healthcare', 'A comprehensive look at AI''s impact on medical diagnostics and patient care.', '[https://placehold.co/600x400/FF0000/FFFFFF?text=AI_Health](https://placehold.co/600x400/FF0000/FFFFFF?text=AI_Health)', 'future-ai-healthcare', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Understanding Blockchain Beyond Crypto', 'Exploring the distributed ledger technology''s applications in supply chain and finance.', NULL, 'blockchain-beyond-crypto', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Mastering Python for Data Science', 'From basic syntax to advanced libraries like Pandas and Scikit-learn.', '[https://placehold.co/600x400/00FF00/000000?text=Python_DS](https://placehold.co/600x400/00FF00/000000?text=Python_DS)', 'mastering-python-data-science', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Art of Minimalist Living', 'Declutter your life and find joy in simplicity.', '[https://placehold.co/600x400/0000FF/FFFFFF?text=Minimalism](https://placehold.co/600x400/0000FF/FFFFFF?text=Minimalism)', 'art-minimalist-living', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Sustainable Travel: Eco-Friendly Adventures', 'Tips for reducing your environmental footprint while exploring the world.', NULL, 'sustainable-travel-eco-friendly', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Introduction to Quantum Computing', 'A beginner''s guide to the fascinating world of quantum mechanics and computation.', '[https://placehold.co/600x400/FFFF00/000000?text=Quantum](https://placehold.co/600x400/FFFF00/000000?text=Quantum)', 'intro-quantum-computing', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Healthy Eating Habits for Busy Professionals', 'Quick and nutritious meal prep ideas.', '[https://placehold.co/600x400/FF00FF/FFFFFF?text=HealthyFood](https://placehold.co/600x400/FF00FF/FFFFFF?text=HealthyFood)', 'healthy-eating-busy-pros', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Psychology of Productivity', 'Unlocking your potential by understanding how your mind works.', NULL, 'psychology-productivity', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the Wonders of Deep Learning', 'From neural networks to convolutional architectures.', '[https://placehold.co/600x400/00FFFF/000000?text=DeepLearning](https://placehold.co/600x400/00FFFF/000000?text=DeepLearning)', 'exploring-deep-learning', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Investing for Beginners: A Step-by-Step Guide', 'Understanding stocks, bonds, and mutual funds.', '[https://placehold.co/600x400/800000/FFFFFF?text=Investing](https://placehold.co/600x400/800000/FFFFFF?text=Investing)', 'investing-for-beginners', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Rise of Electric Vehicles', 'Impact on environment, economy, and future of transportation.', NULL, 'rise-electric-vehicles', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Effective Communication Strategies', 'Tips for better personal and professional interactions.', '[https://placehold.co/600x400/808000/FFFFFF?text=Communicate](https://placehold.co/600x400/808000/FFFFFF?text=Communicate)', 'effective-communication-strategies', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Home Gardening for Urban Dwellers', 'Growing fresh produce in small spaces.', '[https://placehold.co/600x400/008000/FFFFFF?text=Garden](https://placehold.co/600x400/008000/FFFFFF?text=Garden)', 'home-gardening-urban', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Cybersecurity Essentials for Everyone', 'Protecting your digital life from common threats.', NULL, 'cybersecurity-essentials', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Benefits of Regular Meditation', 'Finding inner peace and reducing stress.', '[https://placehold.co/600x400/800080/FFFFFF?text=Meditation](https://placehold.co/600x400/800080/FFFFFF?text=Meditation)', 'benefits-regular-meditation', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Photography Tips for Stunning Landscapes', 'Capturing breathtaking natural beauty.', '[https://placehold.co/600x400/008080/FFFFFF?text=Landscape](https://placehold.co/600x400/008080/FFFFFF?text=Landscape)', 'photography-tips-landscapes', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The History of Artificial Intelligence', 'From early concepts to modern breakthroughs.', NULL, 'history-artificial-intelligence', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Developing Web Applications with React', 'A practical guide to building modern front-end apps.', '[https://placehold.co/600x400/C0C0C0/000000?text=React](https://placehold.co/600x400/C0C0C0/000000?text=React)', 'developing-web-apps-react', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Power of Positive Thinking', 'Transform your mindset for a happier life.', '[https://placehold.co/600x400/FFD700/000000?text=Positive](https://placehold.co/600x400/FFD700/000000?text=Positive)', 'power-positive-thinking', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the World of Craft Beer', 'A guide to different styles and brewing techniques.', NULL, 'exploring-craft-beer', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Financial Planning for Retirement', 'Strategies to secure your lden years.', '[https://placehold.co/600x400/DAA520/000000?text=Retirement](https://placehold.co/600x400/DAA520/000000?text=Retirement)', 'financial-planning-retirement', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Benefits of Learning a New Language', 'Expand your horizons and boost cognitive skills.', '[https://placehold.co/600x400/F08080/000000?text=Language](https://placehold.co/600x400/F08080/000000?text=Language)', 'benefits-learning-language', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'DIY Home Improvement Projects', 'Simple upgrades to enhance your living space.', NULL, 'diy-home-improvement', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Understanding Climate Change: A Scientific Perspective', 'Facts, impacts, and potential solutions.', '[https://placehold.co/600x400/ADD8E6/000000?text=Climate](https://placehold.co/600x400/ADD8E6/000000?text=Climate)', 'understanding-climate-change', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Evolution of Video Games', 'From arcade classics to modern esports.', '[https://placehold.co/600x400/90EE90/000000?text=Gaming](https://placehold.co/600x400/90EE90/000000?text=Gaming)', 'evolution-video-games', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Mindfulness for Daily Life', 'Practices to stay present and reduce stress.', NULL, 'mindfulness-daily-life', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the World of Gastronomy', 'A journey through global culinary traditions.', '[https://placehold.co/600x400/DDA0DD/000000?text=Food](https://placehold.co/600x400/DDA0DD/000000?text=Food)', 'exploring-gastronomy', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Impact of Social Media on Society', 'Pros, cons, and future trends.', '[https://placehold.co/600x400/F0E68C/000000?text=SocialMedia](https://placehold.co/600x400/F0E68C/000000?text=SocialMedia)', 'impact-social-media-society', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Getting Started with Machine Learning', 'Basic concepts and practical examples.', NULL, 'getting-started-ml', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Benefits of Outdoor Activities', 'Embracing nature for physical and mental well-being.', '[https://placehold.co/600x400/FFB6C1/000000?text=Outdoor](https://placehold.co/600x400/FFB6C1/000000?text=Outdoor)', 'benefits-outdoor-activities', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Understanding Cryptocurrencies', 'Beyond Bitcoin: A look at altcoins and DeFi.', '[https://placehold.co/600x400/87CEEB/000000?text=Crypto](https://placehold.co/600x400/87CEEB/000000?text=Crypto)', 'understanding-cryptocurrencies', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Future of Remote Work', 'Trends, challenges, and opportunities in the distributed workplace.', NULL, 'future-remote-work', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Effective Time Management Techniques', 'Boost your productivity and reduce procrastination.', '[https://placehold.co/600x400/FF6347/FFFFFF?text=TimeMgmt](https://placehold.co/600x400/FF6347/FFFFFF?text=TimeMgmt)', 'effective-time-management', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the Solar System', 'A beginner''s guide to planets, stars, and galaxies.', '[https://placehold.co/600x400/4682B4/FFFFFF?text=Space](https://placehold.co/600x400/4682B4/FFFFFF?text=Space)', 'exploring-solar-system', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Importance of Sleep', 'How quality sleep impacts health and well-being.', NULL, 'importance-of-sleep', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Building a Personal Brand Online', 'Strategies for standing out in the digital age.', '[https://placehold.co/600x400/D2B48C/000000?text=Branding](https://placehold.co/600x400/D2B48C/000000?text=Branding)', 'building-personal-brand', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The World of Cybersecurity Threats', 'Understanding ransomware, phishing, and malware.', '[https://placehold.co/600x400/F0F8FF/000000?text=CyberThreats](https://placehold.co/600x400/F0F8FF/000000?text=CyberThreats)', 'world-cybersecurity-threats', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Benefits of Reading Books', 'Expand your knowledge and imagination.', NULL, 'benefits-reading-books', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Introduction to Cloud Computing', 'Understanding AWS, Azure, and ogle Cloud.', '[https://placehold.co/600x400/FAEBD7/000000?text=Cloud](https://placehold.co/600x400/FAEBD7/000000?text=Cloud)', 'intro-cloud-computing', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Future of Robotics', 'How robots are transforming industries and daily life.', '[https://placehold.co/600x400/E0FFFF/000000?text=Robots](https://placehold.co/600x400/E0FFFF/000000?text=Robots)', 'future-of-robotics', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Developing Mobile Apps with Flutter', 'Build cross-platform applications efficiently.', NULL, 'developing-mobile-apps-flutter', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Impact of Big Data on Business', 'Leveraging insights for strategic decision-making.', '[https://placehold.co/600x400/FDF5E6/000000?text=BigData](https://placehold.co/600x400/FDF5E6/000000?text=BigData)', 'impact-big-data-business', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Personal Finance Tips for Young Adults', 'Budgeting, saving, and investing wisely.', '[https://placehold.co/600x400/FFEBCD/000000?text=Finance](https://placehold.co/600x400/FFEBCD/000000?text=Finance)', 'personal-finance-young-adults', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the World of Virtual Reality', 'Beyond gaming: applications in education and training.', NULL, 'exploring-virtual-reality', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Benefits of Outdoor Exercise', 'Boost your mood and energy in nature.', '[https://placehold.co/600x400/FFEFD5/000000?text=Exercise](https://placehold.co/600x400/FFEFD5/000000?text=Exercise)', 'benefits-outdoor-exercise', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Understanding Web3 and Decentralization', 'The next evolution of the internet.', '[https://placehold.co/600x400/FFF5EE/000000?text=Web3](https://placehold.co/600x400/FFF5EE/000000?text=Web3)', 'understanding-web3-decentralization', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Art of Storytelling in Marketing', 'Engage your audience with compelling narratives.', NULL, 'art-storytelling-marketing', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Getting Started with Data Visualization', 'Tools and techniques for effective data presentation.', '[https://placehold.co/600x400/F0F8FF/000000?text=DataViz](https://placehold.co/600x400/F0F8FF/000000?text=DataViz)', 'getting-started-data-viz', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'The Future of Work: Automation and AI', 'Preparing for a changing job market.', '[https://placehold.co/600x400/F5F5DC/000000?text=WorkFuture](https://placehold.co/600x400/F5F5DC/000000?text=WorkFuture)', 'future-work-automation-ai', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Healthy Habits for a Productive Day', 'Morning routines and daily rituals.', NULL, 'healthy-habits-productive-day', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), 'Exploring the World of Renewable Energy', 'Solar, wind, and geothermal power.', '[https://placehold.co/600x400/FFF0F5/000000?text=Renewable](https://placehold.co/600x400/FFF0F5/000000?text=Renewable)', 'exploring-renewable-energy', (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()));


--------------------------------------------------------------------------------------
-- 3. Insert Tags (15 records)
--------------------------------------------------------------------------------------
PRINT 'Inserting 15 Tags...';
INSERT INTO [dbo].[Tag] (id, name) VALUES
(CONVERT(VARCHAR(36), NEWID()), 'Technology'),
(CONVERT(VARCHAR(36), NEWID()), 'Data Science'),
(CONVERT(VARCHAR(36), NEWID()), 'AI'),
(CONVERT(VARCHAR(36), NEWID()), 'Blockchain'),
(CONVERT(VARCHAR(36), NEWID()), 'Programming'),
(CONVERT(VARCHAR(36), NEWID()), 'Health'),
(CONVERT(VARCHAR(36), NEWID()), 'Lifestyle'),
(CONVERT(VARCHAR(36), NEWID()), 'Finance'),
(CONVERT(VARCHAR(36), NEWID()), 'Travel'),
(CONVERT(VARCHAR(36), NEWID()), 'Environment'),
(CONVERT(VARCHAR(36), NEWID()), 'Education'),
(CONVERT(VARCHAR(36), NEWID()), 'Productivity'),
(CONVERT(VARCHAR(36), NEWID()), 'Cybersecurity'),
(CONVERT(VARCHAR(36), NEWID()), 'Art'),
(CONVERT(VARCHAR(36), NEWID()), 'Food');


--------------------------------------------------------------------------------------
-- 4. Insert Likes (50 records - randomly linking users and blogs)
--------------------------------------------------------------------------------------
PRINT 'Inserting 50 Likes...';
INSERT INTO [dbo].[Like] (id, userId, blogId) VALUES
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID()));


--------------------------------------------------------------------------------------
-- 5. Insert Saves (50 records - randomly linking users and blogs)
--------------------------------------------------------------------------------------
PRINT 'Inserting 50 Saves...';
INSERT INTO [dbo].[Save] (id, userId, blogId) VALUES
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID())),
(CONVERT(VARCHAR(36), NEWID()), (SELECT TOP 1 id FROM [dbo].[User] ORDER BY NEWID()), (SELECT TOP 1 id FROM [dbo].[Blog] ORDER BY NEWID()));


--------------------------------------------------------------------------------------
-- 6. Insert BlogTags (60 records - many-to-many linking blogs and tags)
--------------------------------------------------------------------------------------
PRINT 'Inserting 60 BlogTags...';
INSERT INTO [dbo].[BlogTag] (id, blogId, tagId)
SELECT TOP 60
    CONVERT(VARCHAR(36), NEWID()),
    b.id AS blogId,
    t.id AS tagId
FROM
    [dbo].[Blog] AS b
CROSS JOIN
    [dbo].[Tag] AS t
ORDER BY NEWID(); 

-- Optional: Re-enable foreign key checks (if disabled earlier)
-- EXEC sp_MSforeachtable "ALTER TABLE ? CHECK CONSTRAINT ALL";
-- 

PRINT 'All test data insertion complete.';


SELECT name, is_cdc_enabled FROM sys.databases WHERE name = 'theproject';

EXEC sys.sp_cdc_help_change_data_capture
    @source_schema = N'dbo', -- Your table's schema
    @source_name = N'Blog';
    
    SELECT *
FROM cdc.dbo_Blog_CT;