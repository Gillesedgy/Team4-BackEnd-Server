\c  out_n_abt;

INSERT INTO users (username, email, password, address, native_language) VALUES 
('JohnDoe', 'johndoe@gmail.com', 'password123', '123 Main St, Anytown, USA', 'English'),
('JaneDoe', 'janedoe@gmail.com', 'qwerty123', '456 High St, Othertown, USA', 'Spanish'),
('BobSmith', 'bobsmith@yahoo.com', 'pass1234', '789 Low St, Smalltown, USA', 'French'),
('MaryJohnson', 'maryj@gmail.com', 'mysecurepassword', '111 Elm St, Bigtown, USA', 'English'),
('DavidLee', 'davidlee@hotmail.com', 'mypassword123', '555 Oak St, Littletown, USA', 'Chinese');

INSERT INTO categories (name) VALUES
('Apartments'),
('Casas'),
('Maisons'),
('公寓'),
('Other'),
('Jobs'),
('Rentals');

INSERT INTO listings (user_id, description, native_language, image_url, date_posted, price, longitude, latitude, is_applied, category_id, is_favorite, title, company) VALUES 
(1, 'Beautiful 2-bedroom apartment for rent', 'English', 'https://example.com/image1.jpg', '2022-01-01', 2000.00, -73.9857, 40.7484, false, 1, false, 'Spacious Apartment', 'ABC Realty'),
(2, 'Hermosa casa en alquiler en el centro de la ciudad', 'Spanish', 'https://example.com/image2.jpg', '2022-02-15', 1500.00, -73.9876, 40.7452, false, 2, false, 'Casa Grande', 'DEF Realty'),
(3, 'Belle maison à louer avec vue sur la mer', 'French', 'https://example.com/image3.jpg', '2022-03-22', 2500.00, -73.9825, 40.7525, false, 3, false, 'Maison de Luxe', 'GHI Realty'),
(4, 'Cozy studio apartment near downtown', 'English', 'https://example.com/image4.jpg', '2022-04-30', 1000.00, -73.9802, 40.7489, false, 1, false, 'Studio Apartment', 'JKL Realty'),
(5, '漂亮的2居室公寓出租', 'Chinese', 'https://example.com/image5.jpg', '2022-05-15', 3000.00, -73.9781, 40.7501, false, 4, false, '豪华公寓', 'MNO Realty');


INSERT INTO discussions_board (user_id, post_title, post_content, image_url, native_language) VALUES
(1, 'Looking for a new recipe to try', 'Im tired of making the same meals all the time. Does anyone have a favorite recipe they like to share?', 'https://example.com/food.jpg', 'English'),
(2, 'Recomendaciones de libros', 'Me gustaría leer algo nuevo y emocionante. ¿Alguien tiene alguna recomendación de libros?', NULL, 'Spanish'),
(3, 'Conseils pour faire du yoga à la maison', 'Je suis nouveau dans le yoga et j aimerais en faire à la maison. Des conseils pour un débutant?', 'https://example.com/yoga.jpg', 'French'),
(4, 'New hobby ideas', 'I need a new hobby to fill my free time. What are some hobbies that you enjoy?', NULL, 'English'),
(5, 'Sugerencias de películas', 'Me encanta ver películas en mi tiempo libre. ¿Alguien tiene alguna sugerencia de películas para ver?', NULL, 'Spanish');

INSERT INTO comments (user_id, discussion_id, comment_body) VALUES
(1, 1, 'I recommend checking out neighborhoods near the downtown area.'),
(2, 1, 'I found a great apartment using Zillow. You should give it a try!'),
(3, 2, 'Puedes buscar en sitios como Idealista o Fotocasa.'),
(4, 2, 'Si necesitas ayuda con la mudanza, puedo recomendarte una buena empresa.'),
(5, 3, 'Pour trouver une maison à louer, je vous conseille de chercher sur Leboncoin ou PAP.');