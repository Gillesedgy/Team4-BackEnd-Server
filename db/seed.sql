\c  out_n_abt;

<<<<<<< HEAD
INSERT INTO users (username, email, password, address, native_language, image_url) VALUES 
('nick', 'nick@gmail.com', 'password123', '123 Main St, Anytown, USA', 'English','https://example.com/image1.jpg'),
('JannyAdams', 'janedoe@gmail.com', 'qwerty123', '456 High St, Othertown, USA', 'Spanish','https://example.com/image2.jpg'),
('BobSmith', 'bobsmith@yahoo.com', 'pass1234', '789 Low St, Smalltown, USA', 'French','https://example.com/image12.jpg'),
('MaryJohnson', 'maryj@gmail.com', 'mysecurepassword', '111 Elm St, Bigtown, USA', 'English','https://example.com/image7.jpg'),
('DavidLee', 'davidlee@hotmail.com', 'mypassword123', '555 Oak St, Littletown, USA', 'Chinese','https://example.com/image9.jpg');
=======
INSERT INTO users (username, email, password, address, native_language) VALUES 
('nick', 'nick@gmail.com', 'password123', '123 Main St, Anytown, USA', 'English'),
('JannyAdams', 'janny@gmail.com', 'qwerty123', '456 High St, Othertown, USA', 'Spanish'),
('BobSmith', 'bobsmith@yahoo.com', 'pass1234', '789 Low St, Smalltown, USA', 'French'),
('MaryJohnson', 'maryj@gmail.com', 'mysecurepassword', '111 Elm St, Bigtown, USA', 'English'),
('DavidLee', 'davidlee@hotmail.com', 'mypassword123', '555 Oak St, Littletown, USA', 'Chinese');
>>>>>>> a4e60dd31698dc9c4e4d0e2016c559b8296197db

INSERT INTO categories (name) VALUES
('Apartments'),
('Casas'),
('Maisons'),
('公寓'),
('Other'),
('Jobs'),
('Rentals');

<<<<<<< HEAD
INSERT INTO listings (user_id, description, native_language, image_url, date_posted, price, longitude, latitude, is_applied, is_favorite, title, company) VALUES 
(1, 'Beautiful 2-bedroom apartment for rent', 'English', 'https://example.com/image1.jpg', '2022-01-01', 2000.00, -73.9857, 40.7484, false, false, 'Spacious Apartment', 'ABC Realty'),
(2, 'Hermosa casa en alquiler en el centro de la ciudad', 'Spanish', 'https://example.com/image2.jpg', '2022-02-15', 1500.00, -73.9876, 40.7452, false, false, 'Casa Grande', 'DEF Realty'),
(3, 'Belle maison à louer avec vue sur la mer', 'French', 'https://example.com/image3.jpg', '2022-03-22', 2500.00, -73.9825, 40.7525, false, false, 'Maison de Luxe', 'GHI Realty'),
(4, 'Cozy studio apartment near downtown', 'English', 'https://example.com/image4.jpg', '2022-04-30', 1000.00, -73.9802, 40.7489, false, false, 'Studio Apartment', 'JKL Realty'),
(5, '漂亮的2居室公寓出租', 'Chinese', 'https://example.com/image5.jpg', '2022-05-15', 3000.00, -73.9781, 40.7501, false, false, '豪华公寓', 'MNO Realty');
=======
INSERT INTO listings (user_id, description, native_language, image_url, date_posted, price, longitude, latitude, is_applied, category_id, is_favorite, title, company) VALUES 
(1, 'Beautiful 2-bedroom apartment for rent', 'English', 'https://example.com/image1.jpg', '2022-01-01', 2000.00, -73.9857, 40.7484, false, 1, false, 'Spacious Apartment', 'ABC Realty'),
(2, 'Hermosa casa en alquiler en el centro de la ciudad', 'Spanish', 'https://example.com/image2.jpg', '2022-02-15', 1500.00, -73.9876, 40.7452, false, 2, false, 'Casa Grande', 'DEF Realty'),
(3, 'Belle maison à louer avec vue sur la mer', 'French', 'https://example.com/image3.jpg', '2022-03-22', 2500.00, -73.9825, 40.7525, false, 3, false, 'Maison de Luxe', 'GHI Realty'),
(4, 'Cozy studio apartment near downtown', 'English', 'https://example.com/image4.jpg', '2022-04-30', 1000.00, -73.9802, 40.7489, false, 1, false, 'Studio Apartment', 'JKL Realty'),
(5, '漂亮的2居室公寓出租', 'Chinese', 'https://example.com/image5.jpg', '2022-05-15', 3000.00, -73.9781, 40.7501, false, 4, false, '豪华公寓', 'MNO Realty');

>>>>>>> a4e60dd31698dc9c4e4d0e2016c559b8296197db


INSERT INTO discussions_board (user_id, post_title, post_content, image_url, native_language) VALUES
(1, 'Looking for a new recipe to try', 'Im tired of making the same meals all the time. Does anyone have a favorite recipe they like to share?', 'https://example.com/food.jpg', 'English'),
(2, 'Recomendaciones de libros', 'Me gustaría leer algo nuevo y emocionante. ¿Alguien tiene alguna recomendación de libros?', NULL, 'Spanish'),
(3, 'Conseils pour faire du yoga à la maison', 'Je suis nouveau dans le yoga et j aimerais en faire à la maison. Des conseils pour un débutant?', 'https://example.com/yoga.jpg', 'French'),
(4, 'New hobby ideas', 'I need a new hobby to fill my free time. What are some hobbies that you enjoy?', NULL, 'English'),
(5, 'Sugerencias de películas', 'Me encanta ver películas en mi tiempo libre. ¿Alguien tiene alguna sugerencia de películas para ver?', NULL, 'Spanish');

<<<<<<< HEAD
INSERT INTO comments (user_id, discussions_id, comment_body,image_url) VALUES
(1, 1, 'I recommend checking out neighborhoods near the downtown area.','https://example.com/image1.jpg'),
(2, 1, 'I found a great apartment using Zillow. You should give it a try!','https://example.com/image1.jpg'),
(3, 2, 'Puedes buscar en sitios como Idealista o Fotocasa.','https://example.com/image1.jpg'),
(4, 2, 'Si necesitas ayuda con la mudanza, puedo recomendarte una buena empresa.','https://example.com/image1.jpg'),
(5, 3, 'Pour trouver une maison à louer, je vous conseille de chercher sur Leboncoin ou PAP.','https://example.com/image1.jpg');
=======
INSERT INTO comments (user_id, discussion_id, comment_body) VALUES
(1, 2, 'I recommend checking out neighborhoods near the downtown area.'),
(2, 1, 'I found a great apartment using Zillow. You should give it a try!'),
(3, 2, 'Puedes buscar en sitios como Idealista o Fotocasa.'),
(4, 2, 'Si necesitas ayuda con la mudanza, puedo recomendarte una buena empresa.'),
(5, 3, 'Pour trouver une maison à louer, je vous conseille de chercher sur Leboncoin ou PAP.');
>>>>>>> a4e60dd31698dc9c4e4d0e2016c559b8296197db

INSERT INTO jobs(user_id, job_title, company, email, location, posted_date, job_type, description, native_language, is_favorite) VALUES 
(1, 'Web Developer', 'Acme Inc.', 'jobs@acmeinc.com', 'New York, NY', '2022-05-10 12:00:00', 'Full-Time', 'We are seeking an experienced web developer to join our team. The ideal candidate should have experience with HTML, CSS, JavaScript, and React.', 'English', FALSE),
(1, 'Marketing Manager', 'Global Corp.', 'jobs@globalcorp.com', 'San Francisco, CA', '2022-05-11 09:30:00', 'Full-Time', 'We are looking for a creative and strategic marketing manager to lead our team. The ideal candidate should have experience with digital marketing, branding, and event planning.', 'English', FALSE),
(2, 'Software Engineer', 'Tech Solutions', 'jobs@techsolutions.com', 'Seattle, WA', '2022-05-09 14:15:00', 'Full-Time', 'We are seeking a talented software engineer to develop and maintain our web application. The ideal candidate should have experience with Ruby on Rails and React.', 'English', FALSE),
(2, 'Graphic Designer', 'Design Co.', 'jobs@designco.com', 'Los Angeles, CA', '2022-05-10 10:00:00', 'Part-Time', 'We are looking for a creative and detail-oriented graphic designer to join our team. The ideal candidate should have experience with Adobe Creative Suite and branding design.', 'English', FALSE),
(3, 'Customer Service Representative', 'XYZ Corporation', 'jobs@xyzcorp.com', 'Dallas, TX', '2022-05-09 11:45:00', 'Full-Time', 'We are looking for a friendly and customer-focused representative to handle inquiries and provide support to our clients. The ideal candidate should have excellent communication and problem-solving skills.', 'English', FALSE),
(4, 'Account Manager', 'ABC Agency', 'jobs@abcagency.com', 'New York, NY', '2022-05-11 16:30:00', 'Full-Time', 'We are seeking an experienced account manager to maintain relationships with our clients and manage projects. The ideal candidate should have experience with client management and digital marketing.', 'English', FALSE),
(5, 'Sales Representative', 'Sales Co.', 'jobs@salesco.com', 'Chicago, IL', '2022-05-10 13:30:00', 'Full-Time', 'We are looking for a motivated and results-driven sales representative to sell our products and services. The ideal candidate should have experience with sales and lead generation.', 'English', FALSE),
(1, 'Data Analyst', 'Data Solutions', 'jobs@datasolutions.com', 'Austin, TX', '2022-05-09 08:00:00', 'Full-Time', 'We are seeking a detail-oriented data analyst to analyze and interpret complex data sets. The ideal candidate should have experience with SQL, Excel, and data visualization tools.', 'English', FALSE),
(2, 'Product Manager', 'Product Co.', 'jobs@productco.com', 'San Francisco, CA', '2022-05-11 10:45:00', 'Full-Time', 'We are looking for a strategic and customer-focused product manager to develop and execute product roadmaps. The ideal candidate should have experience with product management and agile methodologies.', 'English', FALSE);
