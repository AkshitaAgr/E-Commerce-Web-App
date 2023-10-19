-- CATEGORIES

-- Insert Produce category
INSERT INTO category (categoryid, name)
VALUES (1, 'Fresh Produce');

-- Insert Dairy and Eggs category
INSERT INTO category (categoryid, name)
VALUES (2, 'Dairy and Eggs');

-- Insert Meat and Seafood category
INSERT INTO category (categoryid, name)
VALUES (3, 'Meat and Seafood');

-- Insert Bakery category
INSERT INTO category (categoryid, name)
VALUES (4, 'Bakery');

-- Insert Canned Goods category
INSERT INTO category (categoryid, name)
VALUES (5, 'Canned Goods');

-- Insert Frozen Foods category
INSERT INTO category (categoryid, name)
VALUES (6, 'Frozen Foods');

-- Insert Beverages category
INSERT INTO category (categoryid, name)
VALUES (7, 'Beverages');

-- Insert Snacks category
INSERT INTO category (categoryid, name)
VALUES (8, 'Snacks');

-- Insert Condiments and Sauces category
INSERT INTO category (categoryid, name)
VALUES (9, 'Condiments and Sauces');

-- Insert Household and Cleaning category
INSERT INTO category (categoryid, name)
VALUES (10, 'Household and Cleaning');

-- Insert Pet category
INSERT INTO category (categoryid, name)
VALUES (11, 'Pet');

-- PRODUCT ITEMS

-- Insert items into PRODUCT table
INSERT INTO product (productid, name, price, store, category_categoryid)
VALUES
  ('p1', 'Organic Gala Apples', 1.59, 'GreenGrocery Supermart', 1),
  ('p2', 'Organic Gala Apples', 2.29, 'Farm Fresh Mart', 1),
  ('p3', 'Organic Gala Apples', 2.09, 'Organic Oasis', 1),
  ('p4', 'Organic Gala Apples', 2.29, 'Healthy Harvest Store', 1),
  ('p5', 'Organic Gala Apples', 1.99, 'Fresh Market Co.', 1),
  ('p6', 'Organic Gala Apples', 1.79, 'Local Farm Fresh', 1),

  ('p7', 'Ripe Bananas', 0.49, 'GreenGrocery Supermart', 1),
  ('p8', 'Ripe Bananas', 0.59, 'Farm Fresh Mart', 1),
  ('p9', 'Ripe Bananas', 0.63, 'Organic Oasis', 1),
  ('p10', 'Ripe Bananas', 0.55, 'Healthy Harvest Store', 1),
  ('p11', 'Ripe Bananas', 0.52, 'Fresh Market Co.', 1),
  ('p12', 'Ripe Bananas', 0.48, 'Local Farm Fresh', 1),

  ('p13', 'Juicy Strawberries', 2.99, 'GreenGrocery Supermart', 1),
  ('p14', 'Juicy Strawberries', 3.49, 'Farm Fresh Mart', 1),
  ('p15', 'Juicy Strawberries', 2.79, 'Organic Oasis', 1),
  ('p16', 'Juicy Strawberries', 3.19, 'Healthy Harvest Store', 1),
  ('p17', 'Juicy Strawberries', 2.89, 'Fresh Market Co.', 1),
  ('p18', 'Juicy Strawberries', 2.99, 'Local Farm Fresh', 1),

  ('p19', 'Crisp Green Grapes', 2.49, 'GreenGrocery Supermart', 1),
  ('p20', 'Crisp Green Grapes', 2.79, 'Farm Fresh Mart', 1),
  ('p21', 'Crisp Green Grapes', 2.19, 'Organic Oasis', 1),
  ('p22', 'Crisp Green Grapes', 2.29, 'Healthy Harvest Store', 1),
  ('p23', 'Crisp Green Grapes', 2.09, 'Fresh Market Co.', 1),
  ('p24', 'Crisp Green Grapes', 2.39, 'Local Farm Fresh', 1),

  ('p25', 'Fresh Avocado', 1.29, 'GreenGrocery Supermart', 1),
  ('p26', 'Fresh Avocado', 1.59, 'Farm Fresh Mart', 1),
  ('p27', 'Fresh Avocado', 1.39, 'Organic Oasis', 1),
  ('p28', 'Fresh Avocado', 1.49, 'Healthy Harvest Store', 1),
  ('p29', 'Fresh Avocado', 1.69, 'Fresh Market Co.', 1),
  ('p30', 'Fresh Avocado', 1.79, 'Local Farm Fresh', 1),

  ('p31', 'Red Bell Peppers', 1.29, 'GreenGrocery Supermart', 1),
  ('p32', 'Red Bell Peppers', 1.49, 'Farm Fresh Mart', 1),
  ('p33', 'Red Bell Peppers', 1.39, 'Organic Oasis', 1),
  ('p34', 'Red Bell Peppers', 1.59, 'Healthy Harvest Store', 1),
  ('p35', 'Red Bell Peppers', 1.69, 'Fresh Market Co.', 1),
  ('p36', 'Red Bell Peppers', 1.79, 'Local Farm Fresh', 1),

  ('p37', 'Crunchy Carrots', 0.99, 'GreenGrocery Supermart', 1),
  ('p38', 'Crunchy Carrots', 1.19, 'Farm Fresh Mart', 1),
  ('p39', 'Crunchy Carrots', 0.89, 'Organic Oasis', 1),
  ('p40', 'Crunchy Carrots', 1.09, 'Healthy Harvest Store', 1),
  ('p41', 'Crunchy Carrots', 1.29, 'Fresh Market Co.', 1),
  ('p42', 'Crunchy Carrots', 0.95, 'Local Farm Fresh', 1),

  ('p43', 'Vine-Ripened Tomatoes', 1.79, 'GreenGrocery Supermart', 1),
  ('p44', 'Vine-Ripened Tomatoes', 2.09, 'Farm Fresh Mart', 1),
  ('p45', 'Vine-Ripened Tomatoes', 1.59, 'Organic Oasis', 1),
  ('p46', 'Vine-Ripened Tomatoes', 1.99, 'Healthy Harvest Store', 1),
  ('p47', 'Vine-Ripened Tomatoes', 2.29, 'Fresh Market Co.', 1),
  ('p48', 'Vine-Ripened Tomatoes', 2.19, 'Local Farm Fresh', 1),
  
  ('p49', 'Leafy Romaine Lettuce', 1.49, 'GreenGrocery Supermart', 1),
  ('p50', 'Leafy Romaine Lettuce', 1.69, 'Farm Fresh Mart', 1),
  ('p51', 'Leafy Romaine Lettuce', 1.39, 'Organic Oasis', 1),
  ('p52', 'Leafy Romaine Lettuce', 1.59, 'Healthy Harvest Store', 1),
  ('p53', 'Leafy Romaine Lettuce', 1.79, 'Fresh Market Co.', 1),
  ('p54', 'Leafy Romaine Lettuce', 1.89, 'Local Farm Fresh', 1),

  ('p55', 'Spicy Jalapeño Peppers', 0.79, 'GreenGrocery Supermart', 1),
  ('p56', 'Spicy Jalapeño Peppers', 0.89, 'Farm Fresh Mart', 1),
  ('p57', 'Spicy Jalapeño Peppers', 0.75, 'Organic Oasis', 1),
  ('p58', 'Spicy Jalapeño Peppers', 0.85, 'Healthy Harvest Store', 1),
  ('p59', 'Spicy Jalapeño Peppers', 0.82, 'Fresh Market Co.', 1),
  ('p60', 'Spicy Jalapeño Peppers', 0.88, 'Local Farm Fresh', 1),
  
  ('p61', 'Zesty Lemons', 0.69, 'GreenGrocery Supermart', 1),
  ('p62', 'Zesty Lemons', 0.79, 'Farm Fresh Mart', 1),
  ('p63', 'Zesty Lemons', 0.65, 'Organic Oasis', 1),
  ('p64', 'Zesty Lemons', 0.75, 'Healthy Harvest Store', 1),
  ('p65', 'Zesty Lemons', 0.72, 'Fresh Market Co.', 1),
  ('p66', 'Zesty Lemons', 0.78, 'Local Farm Fresh', 1),
  
  ('p67', 'Purple Eggplant', 1.79, 'GreenGrocery Supermart', 1),
  ('p68', 'Purple Eggplant', 1.99, 'Farm Fresh Mart', 1),
  ('p69', 'Purple Eggplant', 1.75, 'Organic Oasis', 1),
  ('p70', 'Purple Eggplant', 1.89, 'Healthy Harvest Store', 1),
  ('p71', 'Purple Eggplant', 1.82, 'Fresh Market Co.', 1),
  ('p72', 'Purple Eggplant', 1.98, 'Local Farm Fresh', 1),
  
  ('p73', 'Plump Blueberries', 2.99, 'GreenGrocery Supermart', 1),
  ('p74', 'Plump Blueberries', 3.29, 'Farm Fresh Mart', 1),
  ('p75', 'Plump Blueberries', 2.79, 'Organic Oasis', 1),
  ('p76', 'Plump Blueberries', 3.09, 'Healthy Harvest Store', 1),
  ('p77', 'Plump Blueberries', 2.92, 'Fresh Market Co.', 1),
  ('p78', 'Plump Blueberries', 3.18, 'Local Farm Fresh', 1),

  ('p79', 'Fresh Broccoli Crowns', 1.29, 'GreenGrocery Supermart', 1),
  ('p80', 'Fresh Broccoli Crowns', 1.49, 'Farm Fresh Mart', 1),
  ('p81', 'Fresh Broccoli Crowns', 1.39, 'Organic Oasis', 1),
  ('p82', 'Fresh Broccoli Crowns', 1.59, 'Healthy Harvest Store', 1),
  ('p83', 'Fresh Broccoli Crowns', 1.69, 'Fresh Market Co.', 1),
  ('p84', 'Fresh Broccoli Crowns', 1.79, 'Local Farm Fresh', 1),
  
  ('p85', 'Golden Ripe Pineapple', 2.99, 'GreenGrocery Supermart', 1),
  ('p86', 'Golden Ripe Pineapple', 3.29, 'Farm Fresh Mart', 1),
  ('p87', 'Golden Ripe Pineapple', 2.79, 'Organic Oasis', 1),
  ('p88', 'Golden Ripe Pineapple', 3.09, 'Healthy Harvest Store', 1),
  ('p89', 'Golden Ripe Pineapple', 2.92, 'Fresh Market Co.', 1),
  ('p90', 'Golden Ripe Pineapple', 3.18, 'Local Farm Fresh', 1),
  
  ('p91', 'Sweet Honeydew Melon', 3.49, 'GreenGrocery Supermart', 1),
  ('p92', 'Sweet Honeydew Melon', 3.79, 'Farm Fresh Mart', 1),
  ('p93', 'Sweet Honeydew Melon', 3.29, 'Organic Oasis', 1),
  ('p94', 'Sweet Honeydew Melon', 3.59, 'Healthy Harvest Store', 1),
  ('p95', 'Sweet Honeydew Melon', 3.42, 'Fresh Market Co.', 1),
  ('p96', 'Sweet Honeydew Melon', 3.68, 'Local Farm Fresh', 1),
  
  ('p97', 'Organic Spinach', 2.99, 'GreenGrocery Supermart', 1),
  ('p98', 'Organic Spinach', 3.29, 'Farm Fresh Mart', 1),
  ('p99', 'Organic Spinach', 2.79, 'Organic Oasis', 1),
  ('p100', 'Organic Spinach', 3.09, 'Healthy Harvest Store', 1),
  ('p101', 'Organic Spinach', 2.92, 'Fresh Market Co.', 1),
  ('p102', 'Organic Spinach', 3.18, 'Local Farm Fresh', 1),

  ('p103', 'Fresh Whole Milk', 2.49, 'Dairy Delights', 2),
  ('p104', 'Fresh Whole Milk', 2.69, 'MooMoo Farms', 2),
  ('p105', 'Fresh Whole Milk', 2.39, 'Farm Fresh Dairy', 2),
  ('p106', 'Fresh Whole Milk', 2.59, 'Healthy Harvest Store', 2),
  ('p107', 'Fresh Whole Milk', 2.79, 'Dairy Haven', 2),
  ('p108', 'Fresh Whole Milk', 2.89, 'Local Dairy Delights', 2),
  
  ('p109', 'Large Grade A Eggs', 2.29, 'Dairy Delights', 2),
  ('p110', 'Large Grade A Eggs', 2.49, 'MooMoo Farms', 2),
  ('p111', 'Large Grade A Eggs', 2.19, 'Farm Fresh Dairy', 2),
  ('p112', 'Large Grade A Eggs', 2.39, 'Healthy Harvest Store', 2),
  ('p113', 'Large Grade A Eggs', 2.59, 'Dairy Haven', 2),
  ('p114', 'Large Grade A Eggs', 2.69, 'Local Dairy Delights', 2),
  
  ('p115', 'Creamy Yogurt (Plain)', 1.99, 'Dairy Delights', 2),
  ('p116', 'Creamy Yogurt (Plain)', 2.19, 'MooMoo Farms', 2),
  ('p117', 'Creamy Yogurt (Plain)', 1.79, 'Farm Fresh Dairy', 2),
  ('p118', 'Creamy Yogurt (Plain)', 1.99, 'Healthy Harvest Store', 2),
  ('p119', 'Creamy Yogurt (Plain)', 2.09, 'Dairy Haven', 2),
  ('p120', 'Creamy Yogurt (Plain)', 2.29, 'Local Dairy Delights', 2),

  ('p121', 'Greek Yogurt (Vanilla)', 2.49, 'Dairy Delights', 2),
  ('p122', 'Greek Yogurt (Vanilla)', 2.69, 'MooMoo Farms', 2),
  ('p123', 'Greek Yogurt (Vanilla)', 2.29, 'Farm Fresh Dairy', 2),
  ('p124', 'Greek Yogurt (Vanilla)', 2.49, 'Healthy Harvest Store', 2),
  ('p125', 'Greek Yogurt (Vanilla)', 2.79, 'Dairy Haven', 2),
  ('p126', 'Greek Yogurt (Vanilla)', 2.89, 'Local Dairy Delights', 2),
  
  ('p127', 'Cheddar Cheese (Sharp)', 3.99, 'Dairy Delights', 2),
  ('p128', 'Cheddar Cheese (Sharp)', 4.29, 'MooMoo Farms', 2),
  ('p129', 'Cheddar Cheese (Sharp)', 3.79, 'Farm Fresh Dairy', 2),
  ('p130', 'Cheddar Cheese (Sharp)', 3.99, 'Healthy Harvest Store', 2),
  ('p131', 'Cheddar Cheese (Sharp)', 4.19, 'Dairy Haven', 2),
  ('p132', 'Cheddar Cheese (Sharp)', 4.39, 'Local Dairy Delights', 2),
  
  ('p133', 'Large Grade AA Eggs', 2.39, 'Dairy Delights', 2),
  ('p134', 'Large Grade AA Eggs', 2.59, 'MooMoo Farms', 2),
  ('p135', 'Large Grade AA Eggs', 2.19, 'Farm Fresh Dairy', 2),
  ('p136', 'Large Grade AA Eggs', 2.39, 'Healthy Harvest Store', 2),
  ('p137', 'Large Grade AA Eggs', 2.59, 'Dairy Haven', 2),
  ('p138', 'Large Grade AA Eggs', 2.69, 'Local Dairy Delights', 2),
  
  ('p139', 'Organic Almond Milk', 3.49, 'Dairy Delights', 2),
  ('p140', 'Organic Almond Milk', 3.79, 'MooMoo Farms', 2),
  ('p141', 'Organic Almond Milk', 3.29, 'Farm Fresh Dairy', 2),
  ('p142', 'Organic Almond Milk', 3.59, 'Healthy Harvest Store', 2),
  ('p143', 'Organic Almond Milk', 3.42, 'Dairy Haven', 2),
  ('p144', 'Organic Almond Milk', 3.68, 'Local Dairy Delights', 2),

  ('p145', 'Organic Skim Milk', 2.99, 'Dairy Delights', 2),
  ('p146', 'Organic Skim Milk', 3.29, 'MooMoo Farms', 2),
  ('p147', 'Organic Skim Milk', 2.79, 'Farm Fresh Dairy', 2),
  ('p148', 'Organic Skim Milk', 3.09, 'Healthy Harvest Store', 2),
  ('p149', 'Organic Skim Milk', 2.92, 'Dairy Haven', 2),
  ('p150', 'Organic Skim Milk', 3.18, 'Local Dairy Delights', 2),
  
  ('p151', 'Butter (Salted)', 3.49, 'Dairy Delights', 2),
  ('p152', 'Butter (Salted)', 3.79, 'MooMoo Farms', 2),
  ('p153', 'Butter (Salted)', 3.29, 'Farm Fresh Dairy', 2),
  ('p154', 'Butter (Salted)', 3.59, 'Healthy Harvest Store', 2),
  ('p155', 'Butter (Salted)', 3.42, 'Dairy Haven', 2),
  ('p156', 'Butter (Salted)', 3.68, 'Local Dairy Delights', 2),
  
  ('p157', 'Large Grade AAA Eggs', 2.49, 'Dairy Delights', 2),
  ('p158', 'Large Grade AAA Eggs', 2.69, 'MooMoo Farms', 2),
  ('p159', 'Large Grade AAA Eggs', 2.29, 'Farm Fresh Dairy', 2),
  ('p160', 'Large Grade AAA Eggs', 2.49, 'Healthy Harvest Store', 2),
  ('p161', 'Large Grade AAA Eggs', 2.69, 'Dairy Haven', 2),
  ('p162', 'Large Grade AAA Eggs', 2.79, 'Local Dairy Delights', 2),
  
  ('p163', 'Organic Soy Milk', 3.29, 'Dairy Delights', 2),
  ('p164', 'Organic Soy Milk', 3.59, 'MooMoo Farms', 2),
  ('p165', 'Organic Soy Milk', 3.09, 'Farm Fresh Dairy', 2),
  ('p166', 'Organic Soy Milk', 3.39, 'Healthy Harvest Store', 2),
  ('p167', 'Organic Soy Milk', 3.22, 'Dairy Haven', 2),
  ('p168', 'Organic Soy Milk', 3.48, 'Local Dairy Delights', 2),

  ('p169', 'Boneless Skinless Chicken Breasts', 4.99, 'MeatWorld', 3),
  ('p170', 'Boneless Skinless Chicken Breasts', 5.29, 'Meat Master', 3),
  ('p171', 'Boneless Skinless Chicken Breasts', 4.79, 'Seafood & More', 3),
  ('p172', 'Boneless Skinless Chicken Breasts', 5.09, 'Protein Paradise', 3),
  ('p173', 'Boneless Skinless Chicken Breasts', 4.89, 'Meat Market', 3),
  ('p174', 'Boneless Skinless Chicken Breasts', 5.19, 'Local Butcher', 3),
  
  ('p175', 'Atlantic Salmon Fillet', 9.99, 'MeatWorld', 3),
  ('p176', 'Atlantic Salmon Fillet', 10.29, 'Meat Master', 3),
  ('p177', 'Atlantic Salmon Fillet', 9.79, 'Seafood & More', 3),
  ('p178', 'Atlantic Salmon Fillet', 10.09, 'Protein Paradise', 3),
  ('p179', 'Atlantic Salmon Fillet', 9.89, 'Meat Market', 3),
  ('p180', 'Atlantic Salmon Fillet', 10.19, 'Local Butcher', 3),
  
  ('p181', 'Ground Beef (Lean)', 3.99, 'MeatWorld', 3),
  ('p182', 'Ground Beef (Lean)', 4.29, 'Meat Master', 3),
  ('p183', 'Ground Beef (Lean)', 3.79, 'Seafood & More', 3),
  ('p184', 'Ground Beef (Lean)', 4.09, 'Protein Paradise', 3),
  ('p185', 'Ground Beef (Lean)', 3.89, 'Meat Market', 3),
  ('p186', 'Ground Beef (Lean)', 4.19, 'Local Butcher', 3),
  
  ('p187', 'Wild-Caught Shrimp (Large)', 12.99, 'MeatWorld', 3),
  ('p188', 'Wild-Caught Shrimp (Large)', 13.29, 'Meat Master', 3),
  ('p189', 'Wild-Caught Shrimp (Large)', 12.79, 'Seafood & More', 3),
  ('p190', 'Wild-Caught Shrimp (Large)', 13.09, 'Protein Paradise', 3),
  ('p191', 'Wild-Caught Shrimp (Large)', 12.89, 'Meat Market', 3),
  ('p192', 'Wild-Caught Shrimp (Large)', 13.19, 'Local Butcher', 3),

  ('p193', 'Ribeye Steak (Prime)', 12.99, 'MeatWorld', 3),
  ('p194', 'Ribeye Steak (Prime)', 13.29, 'Meat Master', 3),
  ('p195', 'Ribeye Steak (Prime)', 12.79, 'Seafood & More', 3),
  ('p196', 'Ribeye Steak (Prime)', 13.09, 'Protein Paradise', 3),
  ('p197', 'Ribeye Steak (Prime)', 12.89, 'Meat Market', 3),
  ('p198', 'Ribeye Steak (Prime)', 13.19, 'Local Butcher', 3),
  
  ('p199', 'Fresh Tilapia Fillet', 7.99, 'MeatWorld', 3),
  ('p200', 'Fresh Tilapia Fillet', 8.29, 'Meat Master', 3),
  ('p201', 'Fresh Tilapia Fillet', 7.79, 'Seafood & More', 3),
  ('p202', 'Fresh Tilapia Fillet', 8.09, 'Protein Paradise', 3),
  ('p203', 'Fresh Tilapia Fillet', 7.89, 'Meat Market', 3),
  ('p204', 'Fresh Tilapia Fillet', 8.19, 'Local Butcher', 3),
  
  ('p205', 'Lean Ground Turkey', 5.49, 'MeatWorld', 3),
  ('p206', 'Lean Ground Turkey', 5.79, 'Meat Master', 3),
  ('p207', 'Lean Ground Turkey', 5.29, 'Seafood & More', 3),
  ('p208', 'Lean Ground Turkey', 5.59, 'Protein Paradise', 3),
  ('p209', 'Lean Ground Turkey', 5.39, 'Meat Market', 3),
  ('p210', 'Lean Ground Turkey', 5.69, 'Local Butcher', 3),
  
  ('p211', 'Fresh Atlantic Cod Fillet', 10.99, 'MeatWorld', 3),
  ('p212', 'Fresh Atlantic Cod Fillet', 11.29, 'Meat Master', 3),
  ('p213', 'Fresh Atlantic Cod Fillet', 10.79, 'Seafood & More', 3),
  ('p214', 'Fresh Atlantic Cod Fillet', 11.09, 'Protein Paradise', 3),
  ('p215', 'Fresh Atlantic Cod Fillet', 10.89, 'Meat Market', 3),
  ('p216', 'Fresh Atlantic Cod Fillet', 11.19, 'Local Butcher', 3),

  ('p217', 'Lobster Tail', 16.99, 'MeatWorld', 3),
  ('p218', 'Lobster Tail', 17.29, 'Meat Master', 3),
  ('p219', 'Lobster Tail', 16.79, 'Seafood & More', 3),
  ('p220', 'Lobster Tail', 17.09, 'Protein Paradise', 3),
  ('p221', 'Lobster Tail', 16.89, 'Meat Market', 3),
  ('p222', 'Lobster Tail', 17.19, 'Local Butcher', 3),
  
  ('p223', 'Pork Tenderloin', 8.99, 'MeatWorld', 3),
  ('p224', 'Pork Tenderloin', 9.29, 'Meat Master', 3),
  ('p225', 'Pork Tenderloin', 8.79, 'Seafood & More', 3),
  ('p226', 'Pork Tenderloin', 9.09, 'Protein Paradise', 3),
  ('p227', 'Pork Tenderloin', 8.89, 'Meat Market', 3),
  ('p228', 'Pork Tenderloin', 9.19, 'Local Butcher', 3),
  
  ('p229', 'Fresh Tuna Steak', 14.99, 'MeatWorld', 3),
  ('p230', 'Fresh Tuna Steak', 15.29, 'Meat Master', 3),
  ('p231', 'Fresh Tuna Steak', 14.79, 'Seafood & More', 3),
  ('p232', 'Fresh Tuna Steak', 15.09, 'Protein Paradise', 3),
  ('p233', 'Fresh Tuna Steak', 14.89, 'Meat Market', 3),
  ('p234', 'Fresh Tuna Steak', 15.19, 'Local Butcher', 3),
  
  ('p235', 'Ground Bison', 11.49, 'MeatWorld', 3),
  ('p236', 'Ground Bison', 11.79, 'Meat Master', 3),
  ('p237', 'Ground Bison', 11.29, 'Seafood & More', 3),
  ('p238', 'Ground Bison', 11.59, 'Protein Paradise', 3),
  ('p239', 'Ground Bison', 11.39, 'Meat Market', 3),
  ('p240', 'Ground Bison', 11.69, 'Local Butcher', 3),

  ('p241', 'Fresh French Baguette', 2.49, 'BakeMaster', 4),
  ('p242', 'Fresh French Baguette', 2.69, 'Bread Haven', 4),
  ('p243', 'Fresh French Baguette', 2.29, 'Golden Crust Bakery', 4),
  ('p244', 'Fresh French Baguette', 2.59, 'Sweet Treats Bakery', 4),
  ('p245', 'Fresh French Baguette', 2.39, 'Local Bakes', 4),
  ('p246', 'Fresh French Baguette', 2.79, 'Artisan Delights', 4),
  
  ('p247', 'Blueberry Muffins (6-pack)', 5.99, 'BakeMaster', 4),
  ('p248', 'Blueberry Muffins (6-pack)', 6.29, 'Bread Haven', 4),
  ('p249', 'Blueberry Muffins (6-pack)', 5.79, 'Golden Crust Bakery', 4),
  ('p250', 'Blueberry Muffins (6-pack)', 6.09, 'Sweet Treats Bakery', 4),
  ('p251', 'Blueberry Muffins (6-pack)', 5.89, 'Local Bakes', 4),
  ('p252', 'Blueberry Muffins (6-pack)', 6.19, 'Artisan Delights', 4),
  
  ('p253', 'Cinnamon Raisin Bread', 3.99, 'BakeMaster', 4),
  ('p254', 'Cinnamon Raisin Bread', 4.29, 'Bread Haven', 4),
  ('p255', 'Cinnamon Raisin Bread', 3.79, 'Golden Crust Bakery', 4),
  ('p256', 'Cinnamon Raisin Bread', 4.09, 'Sweet Treats Bakery', 4),
  ('p257', 'Cinnamon Raisin Bread', 3.89, 'Local Bakes', 4),
  ('p258', 'Cinnamon Raisin Bread', 4.19, 'Artisan Delights', 4),
  
  ('p259', 'Chocolate Chip Cookies (Dozen)', 4.49, 'BakeMaster', 4),
  ('p260', 'Chocolate Chip Cookies (Dozen)', 4.79, 'Bread Haven', 4),
  ('p261', 'Chocolate Chip Cookies (Dozen)', 4.29, 'Golden Crust Bakery', 4),
  ('p262', 'Chocolate Chip Cookies (Dozen)', 4.59, 'Sweet Treats Bakery', 4),
  ('p263', 'Chocolate Chip Cookies (Dozen)', 4.39, 'Local Bakes', 4),
  ('p264', 'Chocolate Chip Cookies (Dozen)', 4.69, 'Artisan Delights', 4),

  ('p265', 'Whole Wheat Bread', 3.49, 'BakeMaster', 4),
  ('p266', 'Whole Wheat Bread', 3.79, 'Bread Haven', 4),
  ('p267', 'Whole Wheat Bread', 3.29, 'Golden Crust Bakery', 4),
  ('p268', 'Whole Wheat Bread', 3.59, 'Sweet Treats Bakery', 4),
  ('p269', 'Whole Wheat Bread', 3.39, 'Local Bakes', 4),
  ('p270', 'Whole Wheat Bread', 3.69, 'Artisan Delights', 4),
  
  ('p271', 'Plain Bagels (6-pack)', 4.99, 'BakeMaster', 4),
  ('p272', 'Plain Bagels (6-pack)', 5.29, 'Bread Haven', 4),
  ('p273', 'Plain Bagels (6-pack)', 4.79, 'Golden Crust Bakery', 4),
  ('p274', 'Plain Bagels (6-pack)', 5.09, 'Sweet Treats Bakery', 4),
  ('p275', 'Plain Bagels (6-pack)', 4.89, 'Local Bakes', 4),
  ('p276', 'Plain Bagels (6-pack)', 5.19, 'Artisan Delights', 4),
  
  ('p277', 'Sourdough Bread', 3.99, 'BakeMaster', 4),
  ('p278', 'Sourdough Bread', 4.29, 'Bread Haven', 4),
  ('p279', 'Sourdough Bread', 3.79, 'Golden Crust Bakery', 4),
  ('p280', 'Sourdough Bread', 4.09, 'Sweet Treats Bakery', 4),
  ('p281', 'Sourdough Bread', 3.89, 'Local Bakes', 4),
  ('p282', 'Sourdough Bread', 4.19, 'Artisan Delights', 4),
  
  ('p283', 'Everything Bagels (6-pack)', 5.49, 'BakeMaster', 4),
  ('p284', 'Everything Bagels (6-pack)', 5.79, 'Bread Haven', 4),
  ('p285', 'Everything Bagels (6-pack)', 5.29, 'Golden Crust Bakery', 4),
  ('p286', 'Everything Bagels (6-pack)', 5.59, 'Sweet Treats Bakery', 4),
  ('p287', 'Everything Bagels (6-pack)', 5.39, 'Local Bakes', 4),
  ('p288', 'Everything Bagels (6-pack)', 5.69, 'Artisan Delights', 4),

  ('p289', 'Rye Bread', 3.59, 'BakeMaster', 4),
  ('p290', 'Rye Bread', 3.89, 'Bread Haven', 4),
  ('p291', 'Rye Bread', 3.39, 'Golden Crust Bakery', 4),
  ('p292', 'Rye Bread', 3.69, 'Sweet Treats Bakery', 4),
  ('p293', 'Rye Bread', 3.49, 'Local Bakes', 4),
  ('p294', 'Rye Bread', 3.79, 'Artisan Delights', 4),
  
  ('p295', 'Cranberry Orange Scones (4-pack)', 4.99, 'BakeMaster', 4),
  ('p296', 'Cranberry Orange Scones (4-pack)', 5.29, 'Bread Haven', 4),
  ('p297', 'Cranberry Orange Scones (4-pack)', 4.79, 'Golden Crust Bakery', 4),
  ('p298', 'Cranberry Orange Scones (4-pack)', 5.09, 'Sweet Treats Bakery', 4),
  ('p299', 'Cranberry Orange Scones (4-pack)', 4.89, 'Local Bakes', 4),
  ('p300', 'Cranberry Orange Scones (4-pack)', 5.19, 'Artisan Delights', 4),

  ('p301', 'Ciabatta Loaf', 3.99, 'BakeMaster', 4),
  ('p302', 'Ciabatta Loaf', 4.29, 'Bread Haven', 4),
  ('p303', 'Ciabatta Loaf', 3.79, 'Golden Crust Bakery', 4),
  ('p304', 'Ciabatta Loaf', 4.09, 'Sweet Treats Bakery', 4),
  ('p305', 'Ciabatta Loaf', 3.89, 'Local Bakes', 4),
  ('p306', 'Ciabatta Loaf', 4.19, 'Artisan Delights', 4),
  
  ('p307', 'Chocolate Croissants (4-pack)', 5.99, 'BakeMaster', 4),
  ('p308', 'Chocolate Croissants (4-pack)', 6.29, 'Bread Haven', 4),
  ('p309', 'Chocolate Croissants (4-pack)', 5.79, 'Golden Crust Bakery', 4),
  ('p310', 'Chocolate Croissants (4-pack)', 6.09, 'Sweet Treats Bakery', 4),
  ('p311', 'Chocolate Croissants (4-pack)', 5.89, 'Local Bakes', 4),
  ('p312', 'Chocolate Croissants (4-pack)', 6.19, 'Artisan Delights', 4),

  ('p313', 'Canned Tomato Soup', 2.49, 'CanCo Mart', 5),
  ('p314', 'Canned Tomato Soup', 2.69, 'Pantry Essentials', 5),
  ('p315', 'Canned Tomato Soup', 2.29, 'Grocery Plus', 5),
  ('p316', 'Canned Tomato Soup', 2.59, 'Value Grocery', 5),
  ('p317', 'Canned Tomato Soup', 2.39, 'Quick Mart', 5),
  ('p318', 'Canned Tomato Soup', 2.79, 'Discount Foods', 5),
  
  ('p319', 'Canned Tuna in Water', 1.99, 'CanCo Mart', 5),
  ('p320', 'Canned Tuna in Water', 2.19, 'Pantry Essentials', 5),
  ('p321', 'Canned Tuna in Water', 1.79, 'Grocery Plus', 5),
  ('p322', 'Canned Tuna in Water', 2.09, 'Value Grocery', 5),
  ('p323', 'Canned Tuna in Water', 1.89, 'Quick Mart', 5),
  ('p324', 'Canned Tuna in Water', 2.29, 'Discount Foods', 5),
  
  ('p325', 'Canned Corn', 1.49, 'CanCo Mart', 5),
  ('p326', 'Canned Corn', 1.69, 'Pantry Essentials', 5),
  ('p327', 'Canned Corn', 1.29, 'Grocery Plus', 5),
  ('p328', 'Canned Corn', 1.59, 'Value Grocery', 5),
  ('p329', 'Canned Corn', 1.39, 'Quick Mart', 5),
  ('p330', 'Canned Corn', 1.79, 'Discount Foods', 5),
  
  ('p331', 'Canned Green Beans', 1.69, 'CanCo Mart', 5),
  ('p332', 'Canned Green Beans', 1.89, 'Pantry Essentials', 5),
  ('p333', 'Canned Green Beans', 1.49, 'Grocery Plus', 5),
  ('p334', 'Canned Green Beans', 1.79, 'Value Grocery', 5),
  ('p335', 'Canned Green Beans', 1.59, 'Quick Mart', 5),
  ('p336', 'Canned Green Beans', 1.99, 'Discount Foods', 5),

  ('p337', 'Canned Chili', 2.99, 'CanCo Mart', 5),
  ('p338', 'Canned Chili', 3.29, 'Pantry Essentials', 5),
  ('p339', 'Canned Chili', 2.79, 'Grocery Plus', 5),
  ('p340', 'Canned Chili', 3.09, 'Value Grocery', 5),
  ('p341', 'Canned Chili', 2.89, 'Quick Mart', 5),
  ('p342', 'Canned Chili', 3.19, 'Discount Foods', 5),
  
  ('p343', 'Canned Peaches', 2.49, 'CanCo Mart', 5),
  ('p344', 'Canned Peaches', 2.69, 'Pantry Essentials', 5),
  ('p345', 'Canned Peaches', 2.29, 'Grocery Plus', 5),
  ('p346', 'Canned Peaches', 2.59, 'Value Grocery', 5),
  ('p347', 'Canned Peaches', 2.39, 'Quick Mart', 5),
  ('p348', 'Canned Peaches', 2.79, 'Discount Foods', 5),
  
  ('p349', 'Canned Black Beans', 1.59, 'CanCo Mart', 5),
  ('p350', 'Canned Black Beans', 1.79, 'Pantry Essentials', 5),
  ('p351', 'Canned Black Beans', 1.39, 'Grocery Plus', 5),
  ('p352', 'Canned Black Beans', 1.69, 'Value Grocery', 5),
  ('p353', 'Canned Black Beans', 1.49, 'Quick Mart', 5),
  ('p354', 'Canned Black Beans', 1.89, 'Discount Foods', 5),
  
  ('p355', 'Canned Pineapple Chunks', 2.99, 'CanCo Mart', 5),
  ('p356', 'Canned Pineapple Chunks', 3.29, 'Pantry Essentials', 5),
  ('p357', 'Canned Pineapple Chunks', 2.79, 'Grocery Plus', 5),
  ('p358', 'Canned Pineapple Chunks', 3.09, 'Value Grocery', 5),
  ('p359', 'Canned Pineapple Chunks', 2.89, 'Quick Mart', 5),
  ('p360', 'Canned Pineapple Chunks', 3.19, 'Discount Foods', 5),

  ('p361', 'Frozen Pizza (Pepperoni)', 4.99, 'CanCo Mart', 6),
  ('p362', 'Frozen Pizza (Pepperoni)', 5.29, 'Pantry Essentials', 6),
  ('p363', 'Frozen Pizza (Pepperoni)', 4.79, 'Grocery Plus', 6),
  ('p364', 'Frozen Pizza (Pepperoni)', 5.09, 'Value Grocery', 6),
  ('p365', 'Frozen Pizza (Pepperoni)', 4.89, 'Quick Mart', 6),
  ('p366', 'Frozen Pizza (Pepperoni)', 5.19, 'Discount Foods', 6),
  
  ('p367', 'Frozen Vegetables (Mixed)', 2.49, 'CanCo Mart', 6),
  ('p368', 'Frozen Vegetables (Mixed)', 2.69, 'Pantry Essentials', 6),
  ('p369', 'Frozen Vegetables (Mixed)', 2.29, 'Grocery Plus', 6),
  ('p370', 'Frozen Vegetables (Mixed)', 2.59, 'Value Grocery', 6),
  ('p371', 'Frozen Vegetables (Mixed)', 2.39, 'Quick Mart', 6),
  ('p372', 'Frozen Vegetables (Mixed)', 2.79, 'Discount Foods', 6),
  
  ('p373', 'Frozen Chicken Nuggets (20-pack)', 6.99, 'CanCo Mart', 6),
  ('p374', 'Frozen Chicken Nuggets (20-pack)', 7.29, 'Pantry Essentials', 6),
  ('p375', 'Frozen Chicken Nuggets (20-pack)', 6.79, 'Grocery Plus', 6),
  ('p376', 'Frozen Chicken Nuggets (20-pack)', 7.09, 'Value Grocery', 6),
  ('p377', 'Frozen Chicken Nuggets (20-pack)', 6.89, 'Quick Mart', 6),
  ('p378', 'Frozen Chicken Nuggets (20-pack)', 7.19, 'Discount Foods', 6),
  
  ('p379', 'Frozen Ice Cream (Vanilla)', 3.99, 'CanCo Mart', 6),
  ('p380', 'Frozen Ice Cream (Vanilla)', 4.29, 'Pantry Essentials', 6),
  ('p381', 'Frozen Ice Cream (Vanilla)', 3.79, 'Grocery Plus', 6),
  ('p382', 'Frozen Ice Cream (Vanilla)', 4.09, 'Value Grocery', 6),
  ('p383', 'Frozen Ice Cream (Vanilla)', 3.89, 'Quick Mart', 6),
  ('p384', 'Frozen Ice Cream (Vanilla)', 4.19, 'Discount Foods', 6),

  ('p385', 'Frozen Burritos (Variety Pack)', 5.49, 'CanCo Mart', 6),
  ('p386', 'Frozen Burritos (Variety Pack)', 5.79, 'Pantry Essentials', 6),
  ('p387', 'Frozen Burritos (Variety Pack)', 5.29, 'Grocery Plus', 6),
  ('p388', 'Frozen Burritos (Variety Pack)', 5.59, 'Value Grocery', 6),
  ('p389', 'Frozen Burritos (Variety Pack)', 5.39, 'Quick Mart', 6),
  ('p390', 'Frozen Burritos (Variety Pack)', 5.69, 'Discount Foods', 6),
  
  ('p391', 'Frozen Waffles (Homestyle)', 2.99, 'CanCo Mart', 6),
  ('p392', 'Frozen Waffles (Homestyle)', 3.29, 'Pantry Essentials', 6),
  ('p393', 'Frozen Waffles (Homestyle)', 2.79, 'Grocery Plus', 6),
  ('p394', 'Frozen Waffles (Homestyle)', 3.09, 'Value Grocery', 6),
  ('p395', 'Frozen Waffles (Homestyle)', 2.89, 'Quick Mart', 6),
  ('p396', 'Frozen Waffles (Homestyle)', 3.19, 'Discount Foods', 6),
  
  ('p397', 'Frozen Chicken Pot Pie', 3.49, 'CanCo Mart', 6),
  ('p398', 'Frozen Chicken Pot Pie', 3.79, 'Pantry Essentials', 6),
  ('p399', 'Frozen Chicken Pot Pie', 3.29, 'Grocery Plus', 6),
  ('p400', 'Frozen Chicken Pot Pie', 3.59, 'Value Grocery', 6),
  ('p401', 'Frozen Chicken Pot Pie', 3.39, 'Quick Mart', 6),
  ('p402', 'Frozen Chicken Pot Pie', 3.69, 'Discount Foods', 6),

  ('p403', 'Frozen Broccoli & Cheese Casserole', 4.99, 'CanCo Mart', 6),
  ('p404', 'Frozen Broccoli & Cheese Casserole', 5.29, 'Pantry Essentials', 6),
  ('p405', 'Frozen Broccoli & Cheese Casserole', 4.79, 'Grocery Plus', 6),
  ('p406', 'Frozen Broccoli & Cheese Casserole', 5.09, 'Value Grocery', 6),
  ('p407', 'Frozen Broccoli & Cheese Casserole', 4.89, 'Quick Mart', 6),
  ('p408', 'Frozen Broccoli & Cheese Casserole', 5.19, 'Discount Foods', 6),
  
  ('p409', 'Frozen Fruit Medley', 3.49, 'CanCo Mart', 6),
  ('p410', 'Frozen Fruit Medley', 3.79, 'Pantry Essentials', 6),
  ('p411', 'Frozen Fruit Medley', 3.29, 'Grocery Plus', 6),
  ('p412', 'Frozen Fruit Medley', 3.59, 'Value Grocery', 6),
  ('p413', 'Frozen Fruit Medley', 3.39, 'Quick Mart', 6),
  ('p414', 'Frozen Fruit Medley', 3.69, 'Discount Foods', 6),
  
  ('p415', 'Strawberry Ice Cream', 4.99, 'CanCo Mart', 6),
  ('p416', 'Strawberry Ice Cream', 5.29, 'Pantry Essentials', 6),
  ('p417', 'Strawberry Ice Cream', 4.79, 'Grocery Plus', 6),
  ('p418', 'Strawberry Ice Cream', 5.09, 'Value Grocery', 6),
  ('p419', 'Strawberry Ice Cream', 4.89, 'Quick Mart', 6),
  ('p420', 'Strawberry Ice Cream', 5.19, 'Discount Foods', 6),
  
  ('p421', 'Chocolate Fudge Brownie Ice Cream', 5.49, 'CanCo Mart', 6),
  ('p422', 'Chocolate Fudge Brownie Ice Cream', 5.79, 'Pantry Essentials', 6),
  ('p423', 'Chocolate Fudge Brownie Ice Cream', 5.29, 'Grocery Plus', 6),
  ('p424', 'Chocolate Fudge Brownie Ice Cream', 5.59, 'Value Grocery', 6),
  ('p425', 'Chocolate Fudge Brownie Ice Cream', 5.39, 'Quick Mart', 6),
  ('p426', 'Chocolate Fudge Brownie Ice Cream', 5.69, 'Discount Foods', 6),

  ('p427', 'Bottled Water (24-pack)', 3.99, 'CanCo Mart', 7),
  ('p428', 'Bottled Water (24-pack)', 4.29, 'Pantry Essentials', 7),
  ('p429', 'Bottled Water (24-pack)', 3.79, 'Grocery Plus', 7),
  ('p430', 'Bottled Water (24-pack)', 4.09, 'Value Grocery', 7),
  ('p431', 'Bottled Water (24-pack)', 3.89, 'Quick Mart', 7),
  ('p432', 'Bottled Water (24-pack)', 4.19, 'Discount Foods', 7),
  
  ('p433', 'Orange Juice (64 oz)', 2.99, 'CanCo Mart', 7),
  ('p434', 'Orange Juice (64 oz)', 3.29, 'Pantry Essentials', 7),
  ('p435', 'Orange Juice (64 oz)', 2.79, 'Grocery Plus', 7),
  ('p436', 'Orange Juice (64 oz)', 3.09, 'Value Grocery', 7),
  ('p437', 'Orange Juice (64 oz)', 2.89, 'Quick Mart', 7),
  ('p438', 'Orange Juice (64 oz)', 3.19, 'Discount Foods', 7),
  
  ('p439', 'Soda (12-pack, Assorted Flavors)', 5.49, 'CanCo Mart', 7),
  ('p440', 'Soda (12-pack, Assorted Flavors)', 5.79, 'Pantry Essentials', 7),
  ('p441', 'Soda (12-pack, Assorted Flavors)', 5.29, 'Grocery Plus', 7),
  ('p442', 'Soda (12-pack, Assorted Flavors)', 5.59, 'Value Grocery', 7),
  ('p443', 'Soda (12-pack, Assorted Flavors)', 5.39, 'Quick Mart', 7),
  ('p444', 'Soda (12-pack, Assorted Flavors)', 5.69, 'Discount Foods', 7),
  
  ('p445', 'Iced Tea (Sweetened, 64 oz)', 1.99, 'CanCo Mart', 7),
  ('p446', 'Iced Tea (Sweetened, 64 oz)', 2.19, 'Pantry Essentials', 7),
  ('p447', 'Iced Tea (Sweetened, 64 oz)', 1.79, 'Grocery Plus', 7),
  ('p448', 'Iced Tea (Sweetened, 64 oz)', 2.09, 'Value Grocery', 7),
  ('p449', 'Iced Tea (Sweetened, 64 oz)', 1.89, 'Quick Mart', 7),
  ('p450', 'Iced Tea (Sweetened, 64 oz)', 2.29, 'Discount Foods', 7),

  ('p451', 'Coffee (Ground, Medium Roast)', 7.99, 'CanCo Mart', 7),
  ('p452', 'Coffee (Ground, Medium Roast)', 8.29, 'Pantry Essentials', 7),
  ('p453', 'Coffee (Ground, Medium Roast)', 7.79, 'Grocery Plus', 7),
  ('p454', 'Coffee (Ground, Medium Roast)', 8.09, 'Value Grocery', 7),
  ('p455', 'Coffee (Ground, Medium Roast)', 7.89, 'Quick Mart', 7),
  ('p456', 'Coffee (Ground, Medium Roast)', 8.19, 'Discount Foods', 7),
  
  ('p457', 'Lemonade (48 oz)', 2.49, 'CanCo Mart', 7),
  ('p458', 'Lemonade (48 oz)', 2.69, 'Pantry Essentials', 7),
  ('p459', 'Lemonade (48 oz)', 2.29, 'Grocery Plus', 7),
  ('p460', 'Lemonade (48 oz)', 2.59, 'Value Grocery', 7),
  ('p461', 'Lemonade (48 oz)', 2.39, 'Quick Mart', 7),
  ('p462', 'Lemonade (48 oz)', 2.79, 'Discount Foods', 7),
  
  ('p463', 'Bottled Iced Coffee (Mocha)', 3.99, 'CanCo Mart', 7),
  ('p464', 'Bottled Iced Coffee (Mocha)', 4.29, 'Pantry Essentials', 7),
  ('p465', 'Bottled Iced Coffee (Mocha)', 3.79, 'Grocery Plus', 7),
  ('p466', 'Bottled Iced Coffee (Mocha)', 4.09, 'Value Grocery', 7),
  ('p467', 'Bottled Iced Coffee (Mocha)', 3.89, 'Quick Mart', 7),
  ('p468', 'Bottled Iced Coffee (Mocha)', 4.19, 'Discount Foods', 7),

  ('p469', 'Coffee (Ground, Dark Roast)', 8.99, 'CanCo Mart', 7),
  ('p470', 'Coffee (Ground, Dark Roast)', 9.29, 'Pantry Essentials', 7),
  ('p471', 'Coffee (Ground, Dark Roast)', 8.79, 'Grocery Plus', 7),
  ('p472', 'Coffee (Ground, Dark Roast)', 9.09, 'Value Grocery', 7),
  ('p473', 'Coffee (Ground, Dark Roast)', 8.89, 'Quick Mart', 7),
  ('p474', 'Coffee (Ground, Dark Roast)', 9.19, 'Discount Foods', 7),
  
  ('p475', 'Green Tea Bags (50-Count)', 3.49, 'CanCo Mart', 7),
  ('p476', 'Green Tea Bags (50-Count)', 3.79, 'Pantry Essentials', 7),
  ('p477', 'Green Tea Bags (50-Count)', 3.29, 'Grocery Plus', 7),
  ('p478', 'Green Tea Bags (50-Count)', 3.59, 'Value Grocery', 7),
  ('p479', 'Green Tea Bags (50-Count)', 3.39, 'Quick Mart', 7),
  ('p480', 'Green Tea Bags (50-Count)', 3.69, 'Discount Foods', 7),

  ('p481', 'Coffee (Whole Bean, French Roast)', 9.49, 'CanCo Mart', 7),
  ('p482', 'Coffee (Whole Bean, French Roast)', 9.79, 'Pantry Essentials', 7),
  ('p483', 'Coffee (Whole Bean, French Roast)', 9.29, 'Grocery Plus', 7),
  ('p484', 'Coffee (Whole Bean, French Roast)', 9.59, 'Value Grocery', 7),
  ('p485', 'Coffee (Whole Bean, French Roast)', 9.39, 'Quick Mart', 7),
  ('p486', 'Coffee (Whole Bean, French Roast)', 9.69, 'Discount Foods', 7),
  
  ('p487', 'Chamomile Tea Bags (40-Count)', 4.99, 'CanCo Mart', 7),
  ('p488', 'Chamomile Tea Bags (40-Count)', 5.29, 'Pantry Essentials', 7),
  ('p489', 'Chamomile Tea Bags (40-Count)', 4.79, 'Grocery Plus', 7),
  ('p490', 'Chamomile Tea Bags (40-Count)', 5.09, 'Value Grocery', 7),
  ('p491', 'Chamomile Tea Bags (40-Count)', 4.89, 'Quick Mart', 7),
  ('p492', 'Chamomile Tea Bags (40-Count)', 5.19, 'Discount Foods', 7),

  ('p493', 'Potato Chips (Classic)', 2.49, 'CanCo Mart', 8),
  ('p494', 'Potato Chips (Classic)', 2.69, 'Pantry Essentials', 8),
  ('p495', 'Potato Chips (Classic)', 2.29, 'Grocery Plus', 8),
  ('p496', 'Potato Chips (Classic)', 2.59, 'Value Grocery', 8),
  ('p497', 'Potato Chips (Classic)', 2.39, 'Quick Mart', 8),
  ('p498', 'Potato Chips (Classic)', 2.79, 'Discount Foods', 8),
  
  ('p499', 'Popcorn (Butter Flavor)', 1.99, 'CanCo Mart', 8),
  ('p500', 'Popcorn (Butter Flavor)', 2.19, 'Pantry Essentials', 8),
  ('p501', 'Popcorn (Butter Flavor)', 1.79, 'Grocery Plus', 8),
  ('p502', 'Popcorn (Butter Flavor)', 2.09, 'Value Grocery', 8),
  ('p503', 'Popcorn (Butter Flavor)', 1.89, 'Quick Mart', 8),
  ('p504', 'Popcorn (Butter Flavor)', 2.29, 'Discount Foods', 8),
  
  ('p505', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.49, 'CanCo Mart', 8),
  ('p506', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.79, 'Pantry Essentials', 8),
  ('p507', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.29, 'Grocery Plus', 8),
  ('p508', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.59, 'Value Grocery', 8),
  ('p509', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.39, 'Quick Mart', 8),
  ('p510', 'Trail Mix (Assorted Nuts & Dried Fruit)', 3.69, 'Discount Foods', 8),

  ('p511', 'Tortilla Chips (Nacho Cheese)', 2.99, 'CanCo Mart', 8),
  ('p512', 'Tortilla Chips (Nacho Cheese)', 3.29, 'Pantry Essentials', 8),
  ('p513', 'Tortilla Chips (Nacho Cheese)', 2.79, 'Grocery Plus', 8),
  ('p514', 'Tortilla Chips (Nacho Cheese)', 3.09, 'Value Grocery', 8),
  ('p515', 'Tortilla Chips (Nacho Cheese)', 2.89, 'Quick Mart', 8),
  ('p516', 'Tortilla Chips (Nacho Cheese)', 3.19, 'Discount Foods', 8),
  
  ('p517', 'Pretzels (Salted)', 1.99, 'CanCo Mart', 8),
  ('p518', 'Pretzels (Salted)', 2.19, 'Pantry Essentials', 8),
  ('p519', 'Pretzels (Salted)', 1.79, 'Grocery Plus', 8),
  ('p520', 'Pretzels (Salted)', 2.09, 'Value Grocery', 8),
  ('p521', 'Pretzels (Salted)', 1.89, 'Quick Mart', 8),
  ('p522', 'Pretzels (Salted)', 2.29, 'Discount Foods', 8),
  
  ('p523', 'Granola Bars (Mixed Variety)', 3.49, 'CanCo Mart', 8),
  ('p524', 'Granola Bars (Mixed Variety)', 3.79, 'Pantry Essentials', 8),
  ('p525', 'Granola Bars (Mixed Variety)', 3.29, 'Grocery Plus', 8),
  ('p526', 'Granola Bars (Mixed Variety)', 3.59, 'Value Grocery', 8),
  ('p527', 'Granola Bars (Mixed Variety)', 3.39, 'Quick Mart', 8),
  ('p528', 'Granola Bars (Mixed Variety)', 3.69, 'Discount Foods', 8),

  ('p529', 'Ketchup (32 oz)', 2.49, 'CanCo Mart', 9),
  ('p530', 'Ketchup (32 oz)', 2.69, 'Pantry Essentials', 9),
  ('p531', 'Ketchup (32 oz)', 2.29, 'Grocery Plus', 9),
  ('p532', 'Ketchup (32 oz)', 2.59, 'Value Grocery', 9),
  ('p533', 'Ketchup (32 oz)', 2.39, 'Quick Mart', 9),
  ('p534', 'Ketchup (32 oz)', 2.79, 'Discount Foods', 9),
  
  ('p535', 'Mustard (Yellow, 16 oz)', 1.99, 'CanCo Mart', 9),
  ('p536', 'Mustard (Yellow, 16 oz)', 2.19, 'Pantry Essentials', 9),
  ('p537', 'Mustard (Yellow, 16 oz)', 1.79, 'Grocery Plus', 9),
  ('p538', 'Mustard (Yellow, 16 oz)', 2.09, 'Value Grocery', 9),
  ('p539', 'Mustard (Yellow, 16 oz)', 1.89, 'Quick Mart', 9),
  ('p540', 'Mustard (Yellow, 16 oz)', 2.29, 'Discount Foods', 9),
  
  ('p541', 'Mayonnaise (32 oz)', 3.49, 'CanCo Mart', 9),
  ('p542', 'Mayonnaise (32 oz)', 3.79, 'Pantry Essentials', 9),
  ('p543', 'Mayonnaise (32 oz)', 3.29, 'Grocery Plus', 9),
  ('p544', 'Mayonnaise (32 oz)', 3.59, 'Value Grocery', 9),
  ('p545', 'Mayonnaise (32 oz)', 3.39, 'Quick Mart', 9),
  ('p546', 'Mayonnaise (32 oz)', 3.69, 'Discount Foods', 9),

  ('p547', 'BBQ Sauce (18 oz)', 2.99, 'CanCo Mart', 9),
  ('p548', 'BBQ Sauce (18 oz)', 3.29, 'Pantry Essentials', 9),
  ('p549', 'BBQ Sauce (18 oz)', 2.79, 'Grocery Plus', 9),
  ('p550', 'BBQ Sauce (18 oz)', 3.09, 'Value Grocery', 9),
  ('p551', 'BBQ Sauce (18 oz)', 2.89, 'Quick Mart', 9),
  ('p552', 'BBQ Sauce (18 oz)', 3.19, 'Discount Foods', 9),
  
  ('p553', 'Soy Sauce (16 oz)', 1.99, 'CanCo Mart', 9),
  ('p554', 'Soy Sauce (16 oz)', 2.19, 'Pantry Essentials', 9),
  ('p555', 'Soy Sauce (16 oz)', 1.79, 'Grocery Plus', 9),
  ('p556', 'Soy Sauce (16 oz)', 2.09, 'Value Grocery', 9),
  ('p557', 'Soy Sauce (16 oz)', 1.89, 'Quick Mart', 9),
  ('p558', 'Soy Sauce (16 oz)', 2.29, 'Discount Foods', 9),
  
  ('p559', 'Ranch Dressing (16 oz)', 3.49, 'CanCo Mart', 9),
  ('p560', 'Ranch Dressing (16 oz)', 3.79, 'Pantry Essentials', 9),
  ('p561', 'Ranch Dressing (16 oz)', 3.29, 'Grocery Plus', 9),
  ('p562', 'Ranch Dressing (16 oz)', 3.59, 'Value Grocery', 9),
  ('p563', 'Ranch Dressing (16 oz)', 3.39, 'Quick Mart', 9),
  ('p564', 'Ranch Dressing (16 oz)', 3.69, 'Discount Foods', 9),

  ('p565', 'Hot Sauce (Tabasco)', 2.99, 'CanCo Mart', 9),
  ('p566', 'Hot Sauce (Tabasco)', 3.29, 'Pantry Essentials', 9),
  ('p567', 'Hot Sauce (Tabasco)', 2.79, 'Grocery Plus', 9),
  ('p568', 'Hot Sauce (Tabasco)', 3.09, 'Value Grocery', 9),
  ('p569', 'Hot Sauce (Tabasco)', 2.89, 'Quick Mart', 9),
  ('p570', 'Hot Sauce (Tabasco)', 3.19, 'Discount Foods', 9),
  
  ('p571', 'Pasta Sauce (Marinara)', 2.49, 'CanCo Mart', 9),
  ('p572', 'Pasta Sauce (Marinara)', 2.69, 'Pantry Essentials', 9),
  ('p573', 'Pasta Sauce (Marinara)', 2.29, 'Grocery Plus', 9),
  ('p574', 'Pasta Sauce (Marinara)', 2.59, 'Value Grocery', 9),
  ('p575', 'Pasta Sauce (Marinara)', 2.39, 'Quick Mart', 9),
  ('p576', 'Pasta Sauce (Marinara)', 2.79, 'Discount Foods', 9),
  
  ('p577', 'Honey (12 oz)', 4.99, 'CanCo Mart', 9),
  ('p578', 'Honey (12 oz)', 5.29, 'Pantry Essentials', 9),
  ('p579', 'Honey (12 oz)', 4.79, 'Grocery Plus', 9),
  ('p580', 'Honey (12 oz)', 5.09, 'Value Grocery', 9),
  ('p581', 'Honey (12 oz)', 4.89, 'Quick Mart', 9),
  ('p582', 'Honey (12 oz)', 5.19, 'Discount Foods', 9),

  ('p583', 'Laundry Detergent (64 oz)', 8.99, 'CleanCo Superstore', 10),
  ('p584', 'Laundry Detergent (64 oz)', 9.29, 'Household Essentials Inc.', 10),
  ('p585', 'Laundry Detergent (64 oz)', 8.79, 'Home Care Emporium', 10),
  ('p586', 'Laundry Detergent (64 oz)', 9.09, 'Clean Sweep Supplies', 10),
  ('p587', 'Laundry Detergent (64 oz)', 8.89, 'Household Solutions', 10),
  ('p588', 'Laundry Detergent (64 oz)', 9.19, 'Clean Home Goods', 10),
  
  ('p589', 'Toilet Paper (12 Rolls)', 5.99, 'CleanCo Superstore', 10),
  ('p590', 'Toilet Paper (12 Rolls)', 6.29, 'Household Essentials Inc.', 10),
  ('p591', 'Toilet Paper (12 Rolls)', 5.79, 'Home Care Emporium', 10),
  ('p592', 'Toilet Paper (12 Rolls)', 6.09, 'Clean Sweep Supplies', 10),
  ('p593', 'Toilet Paper (12 Rolls)', 5.89, 'Household Solutions', 10),
  ('p594', 'Toilet Paper (12 Rolls)', 6.19, 'Clean Home Goods', 10),
  
  ('p595', 'Dish Soap (32 oz)', 3.49, 'CleanCo Superstore', 10),
  ('p596', 'Dish Soap (32 oz)', 3.79, 'Household Essentials Inc.', 10),
  ('p597', 'Dish Soap (32 oz)', 3.29, 'Home Care Emporium', 10),
  ('p598', 'Dish Soap (32 oz)', 3.59, 'Clean Sweep Supplies', 10),
  ('p599', 'Dish Soap (32 oz)', 3.39, 'Household Solutions', 10),
  ('p600', 'Dish Soap (32 oz)', 3.69, 'Clean Home Goods', 10),

  ('p601', 'All-Purpose Cleaner (24 oz)', 4.99, 'CleanCo Superstore', 10),
  ('p602', 'All-Purpose Cleaner (24 oz)', 5.29, 'Household Essentials Inc.', 10),
  ('p603', 'All-Purpose Cleaner (24 oz)', 4.79, 'Home Care Emporium', 10),
  ('p604', 'All-Purpose Cleaner (24 oz)', 5.09, 'Clean Sweep Supplies', 10),
  ('p605', 'All-Purpose Cleaner (24 oz)', 4.89, 'Household Solutions', 10),
  ('p606', 'All-Purpose Cleaner (24 oz)', 5.19, 'Clean Home Goods', 10),
  
  ('p607', 'Broom and Dustpan Set', 12.99, 'CleanCo Superstore', 10),
  ('p608', 'Broom and Dustpan Set', 13.29, 'Household Essentials Inc.', 10),
  ('p609', 'Broom and Dustpan Set', 12.79, 'Home Care Emporium', 10),
  ('p610', 'Broom and Dustpan Set', 13.09, 'Clean Sweep Supplies', 10),
  ('p611', 'Broom and Dustpan Set', 12.89, 'Household Solutions', 10),
  ('p612', 'Broom and Dustpan Set', 13.19, 'Clean Home Goods', 10),
  
  ('p613', 'Trash Bags (Large, 30-Pack)', 6.99, 'CleanCo Superstore', 10),
  ('p614', 'Trash Bags (Large, 30-Pack)', 7.29, 'Household Essentials Inc.', 10),
  ('p615', 'Trash Bags (Large, 30-Pack)', 6.79, 'Home Care Emporium', 10),
  ('p616', 'Trash Bags (Large, 30-Pack)', 7.09, 'Clean Sweep Supplies', 10),
  ('p617', 'Trash Bags (Large, 30-Pack)', 6.89, 'Household Solutions', 10),
  ('p618', 'Trash Bags (Large, 30-Pack)', 7.19, 'Clean Home Goods', 10),
  
  ('p619', 'Air Freshener (Lavender)', 2.49, 'CleanCo Superstore', 10),
  ('p620', 'Air Freshener (Lavender)', 2.69, 'Household Essentials Inc.', 10),
  ('p621', 'Air Freshener (Lavender)', 2.29, 'Home Care Emporium', 10),
  ('p622', 'Air Freshener (Lavender)', 2.59, 'Clean Sweep Supplies', 10),
  ('p623', 'Air Freshener (Lavender)', 2.39, 'Household Solutions', 10),
  ('p624', 'Air Freshener (Lavender)', 2.79, 'Clean Home Goods', 10),

  ('p625', 'Glass Cleaner Spray (20 oz)', 3.99, 'CleanCo Superstore', 10),
  ('p626', 'Glass Cleaner Spray (20 oz)', 4.29, 'Household Essentials Inc.', 10),
  ('p627', 'Glass Cleaner Spray (20 oz)', 3.79, 'Home Care Emporium', 10),
  ('p628', 'Glass Cleaner Spray (20 oz)', 4.09, 'Clean Sweep Supplies', 10),
  ('p629', 'Glass Cleaner Spray (20 oz)', 3.89, 'Household Solutions', 10),
  ('p630', 'Glass Cleaner Spray (20 oz)', 4.19, 'Clean Home Goods', 10),
  
  ('p631', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.49, 'CleanCo Superstore', 10),
  ('p632', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.79, 'Household Essentials Inc.', 10),
  ('p633', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.29, 'Home Care Emporium', 10),
  ('p634', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.59, 'Clean Sweep Supplies', 10),
  ('p635', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.39, 'Household Solutions', 10),
  ('p636', 'Dishwasher Detergent (Tablets, 40-Pack)', 7.69, 'Clean Home Goods', 10),

  ('p637', 'Dog Food (20 lbs, Chicken Flavor)', 14.99, 'Pet Paradise', 11),
  ('p638', 'Dog Food (20 lbs, Chicken Flavor)', 15.29, 'Pet Supplies Plus', 11),
  ('p639', 'Dog Food (20 lbs, Chicken Flavor)', 14.79, 'Paws & Whiskers', 11),
  ('p640', 'Dog Food (20 lbs, Chicken Flavor)', 15.09, 'Pet Haven', 11),
  ('p641', 'Dog Food (20 lbs, Chicken Flavor)', 14.89, 'Pet Essentials', 11),
  ('p642', 'Dog Food (20 lbs, Chicken Flavor)', 15.19, 'Animal Kingdom', 11),
  
  ('p643', 'Cat Litter (Clumping, 15 lbs)', 7.49, 'Pet Paradise', 11),
  ('p644', 'Cat Litter (Clumping, 15 lbs)', 7.79, 'Pet Supplies Plus', 11),
  ('p645', 'Cat Litter (Clumping, 15 lbs)', 7.29, 'Paws & Whiskers', 11),
  ('p646', 'Cat Litter (Clumping, 15 lbs)', 7.59, 'Pet Haven', 11),
  ('p647', 'Cat Litter (Clumping, 15 lbs)', 7.39, 'Pet Essentials', 11),
  ('p648', 'Cat Litter (Clumping, 15 lbs)', 7.69, 'Animal Kingdom', 11),

  ('p649', 'Fish Food (Tropical Fish Flakes)', 3.99, 'Pet Paradise', 11),
  ('p650', 'Fish Food (Tropical Fish Flakes)', 4.29, 'Pet Supplies Plus', 11),
  ('p651', 'Fish Food (Tropical Fish Flakes)', 3.79, 'Paws & Whiskers', 11),
  ('p652', 'Fish Food (Tropical Fish Flakes)', 4.09, 'Pet Haven', 11),
  ('p653', 'Fish Food (Tropical Fish Flakes)', 3.89, 'Pet Essentials', 11),
  ('p654', 'Fish Food (Tropical Fish Flakes)', 4.19, 'Animal Kingdom', 11),

  ('p655', 'Dog Collar (Large, Red)', 9.99, 'Pet Paradise', 11),
  ('p656', 'Dog Collar (Large, Red)', 10.29, 'Pet Supplies Plus', 11),
  ('p657', 'Dog Collar (Large, Red)', 9.79, 'Paws & Whiskers', 11),
  ('p658', 'Dog Collar (Large, Red)', 10.09, 'Pet Haven', 11),
  ('p659', 'Dog Collar (Large, Red)', 9.89, 'Pet Essentials', 11),
  ('p660', 'Dog Collar (Large, Red)', 10.19, 'Animal Kingdom', 11),
  
  ('p661', 'Cat Toy Set (Assorted Toys)', 5.49, 'Pet Paradise', 11),
  ('p662', 'Cat Toy Set (Assorted Toys)', 5.79, 'Pet Supplies Plus', 11),
  ('p663', 'Cat Toy Set (Assorted Toys)', 5.29, 'Paws & Whiskers', 11),
  ('p664', 'Cat Toy Set (Assorted Toys)', 5.59, 'Pet Haven', 11),
  ('p665', 'Cat Toy Set (Assorted Toys)', 5.39, 'Pet Essentials', 11),
  ('p666', 'Cat Toy Set (Assorted Toys)', 5.69, 'Animal Kingdom', 11),

  ('p667', 'Dog Bowl (Stainless Steel, Large)', 12.99, 'Pet Paradise', 11),
  ('p668', 'Dog Bowl (Stainless Steel, Large)', 13.29, 'Pet Supplies Plus', 11),
  ('p669', 'Dog Bowl (Stainless Steel, Large)', 12.79, 'Paws & Whiskers', 11),
  ('p670', 'Dog Bowl (Stainless Steel, Large)', 13.09, 'Pet Haven', 11),
  ('p671', 'Dog Bowl (Stainless Steel, Large)', 12.89, 'Pet Essentials', 11),
  ('p672', 'Dog Bowl (Stainless Steel, Large)', 13.19, 'Animal Kingdom', 11),
  
  ('p673', 'Dog Leash (Nylon, 6 ft)', 7.99, 'Pet Paradise', 11),
  ('p674', 'Dog Leash (Nylon, 6 ft)', 8.29, 'Pet Supplies Plus', 11),
  ('p675', 'Dog Leash (Nylon, 6 ft)', 7.79, 'Paws & Whiskers', 11),
  ('p676', 'Dog Leash (Nylon, 6 ft)', 8.09, 'Pet Haven', 11),
  ('p677', 'Dog Leash (Nylon, 6 ft)', 7.89, 'Pet Essentials', 11),
  ('p678', 'Dog Leash (Nylon, 6 ft)', 8.19, 'Animal Kingdom', 11),
  
  ('p679', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.49, 'Pet Paradise', 11),
  ('p680', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.79, 'Pet Supplies Plus', 11),
  ('p681', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.29, 'Paws & Whiskers', 11),
  ('p682', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.59, 'Pet Haven', 11),
  ('p683', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.39, 'Pet Essentials', 11),
  ('p684', 'Dog Shampoo (Hypoallergenic, 16 oz)', 5.69, 'Animal Kingdom', 11),
  
  ('p685', 'Dog Toy (Squeaky Plush Toy)', 3.99, 'Pet Paradise', 11),
  ('p686', 'Dog Toy (Squeaky Plush Toy)', 4.29, 'Pet Supplies Plus', 11),
  ('p687', 'Dog Toy (Squeaky Plush Toy)', 3.79, 'Paws & Whiskers', 11),
  ('p688', 'Dog Toy (Squeaky Plush Toy)', 4.09, 'Pet Haven', 11),
  ('p689', 'Dog Toy (Squeaky Plush Toy)', 3.89, 'Pet Essentials', 11),
  ('p690', 'Dog Toy (Squeaky Plush Toy)', 4.19, 'Animal Kingdom', 11),
  
  ('p691', 'Fish Aquarium Decorations (Assorted)', 9.99, 'Pet Paradise', 11),
  ('p692', 'Fish Aquarium Decorations (Assorted)', 10.29, 'Pet Supplies Plus', 11),
  ('p693', 'Fish Aquarium Decorations (Assorted)', 9.79, 'Paws & Whiskers', 11),
  ('p694', 'Fish Aquarium Decorations (Assorted)', 10.09, 'Pet Haven', 11),
  ('p695', 'Fish Aquarium Decorations (Assorted)', 9.89, 'Pet Essentials', 11),
  ('p696', 'Fish Aquarium Decorations (Assorted)', 10.19, 'Animal Kingdom', 11);

-- adding a dummy user
INSERT INTO `user`(firstname, middlename, lastname, address, mobile_num, email_address, password_hash)
VALUES ('Jane', '', 'Doe', '1 Street, Suburb', '0123456789', 'jane@example.com', 'pass123');

-- adding a dummy frequently bought list
INSERT INTO order_frequency(frequency, user_userid, product_productid)
VALUES (5, 1, 'p133'),
(4, 1, 'p103'),
(2, 1, 'p46'),
(10, 1, 'p49'),
(7, 1, 'p33');

-- adding dummy cart and cart items
INSERT INTO cart (cartid, user_userid)
VALUES (1, 1);

INSERT INTO cartitems (quantity, cart_cartid, product_productid)
VALUES
    (2, 1, 'p100'),
    (1, 1, 'p691'),
    (5, 1, 'p12');
