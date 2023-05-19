\c  out_n_abt;

INSERT INTO users (username, email, password, address, native_language, image_url) VALUES 
('nickolaus dymaikvi', 'nickd@gmail.com', 'password123', '123 Main St, NY, NY, 10001', 'German','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('JuliaAndrews', 'juliaAndrews@gmail.com', 'qwerty123', '456 High St, Queenz, NY, 10002', 'Spanish','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('MikeGonzalez', 'MikeGonzalez@yahoo.com', 'pass1234', '142 Linden blvd, Queenz, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('MaryJackson', 'maryjackson@gmail.com', 'mysecurepassword', '111 concord St, Bronx, NY', 'English','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('DaveLee', 'davelee@hotmail.com', 'mypassword123', '555 Franklin St, Brooklyn, NY', 'Chinese','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('EricSmithy', 'eric@gmail.com', 'mypassword123', '777 Broadway, Queens, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Edgy', 'edgy65@gmail.com', 'mypa23', '888 Bedford, NY', 'Creole','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Mina', 'mina07@gmail.com', 'mypassword123', '179 Thomas lane, Queens Village, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Dilruba', 'dilruba23@gmail.com', 'my123dil', '17 Forest Street, Queens, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Nikesh', 'nikesh11@gmail.com', 'myword1nik23', '228 Linden blvd, Queens, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Lennie', 'lennie12@gmail.com', 'passlen123', '127 east 45 street, brooklyn, NY', 'Spanish','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('JD', 'jd23@gmail.com', 'jdworld30', '100 east 77st , Manhattan, NY', 'French','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Carlos', 'carlos47@gmail.com', 'carlopass123', '777 Broad, brooklyn, NY', 'English','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Destiny', 'destiny@gmail.com', 'destiny30', '140 President street, Brooklyn, NY', 'Spanish','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('jacksonjim', 'jacksonjim@gmail.com', 'jacksonhouse30', '222 Weller lane, Queens, NY', 'English','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Triane', 'tritri12@gmail.com', 'trigirl', '888 Broadway, Queens, NY', 'English','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('RhulaNadu', 'rhulaN@gmail.com', 'naduhouseruler', '888 Broadway, Queens, NY', 'Arabic','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Aamir Kapoor', 'Akapoor@gmail.com', 'akapor007', '888 Jamaica Ave, Queens, NY', 'Bangali','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Dan Mazzili', 'DanM@gmail.com', 'Mazziliworld30', ' 346 Hunter Ave, Staten island, NY', 'italian','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
('Johannes Bauer', 'jim@gmail.com', 'jBauer1230', '180 Fremont Ave, Staten island, NY', 'German','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}');



INSERT INTO categories (name) VALUES
('Apartments'),
('Events'),
('Furniture'),
('Homes'),
('Food'),
('Casas'),
('Housing'),
('Language'),
('Other'),
('Activities'),
('Jobs'),
('Rentals');

INSERT INTO listings (user_id, description, native_language, image_url, date_posted, price, location, is_applied, is_favorite, title, company, rooms) VALUES 
(1, 'Beautiful 2-bedroom apartment for rent. A five minute walk to the nearest train station. pet friendly ', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-01','261 Rocky River st. Brooklyn NY 11211', 40.7484, false, false, 'Spacious Apartment', 'ABC Realty', 2),
(2, 'Hermosa casa en alquiler en el centro de la ciudad', 'Spanish', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2022-02-15', 1500.00, '9518 Green Hill Street Bronx NY 10468', false, false, 'Casa Grande', 'DEF Realty', 3),
(3, 'Un bel appartement de 3 chambres avec 1 salle de bain avec laveuse et secheuse. ll est situe pres de la communaute pour les courses.', 'French', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2022-03-22', 2500.00, '43 Univserity Ave. Middletown, NY 10940' , false, false, 'Maison de Luxe', 'GHI Realty', 3),
(4, 'Cozy studio apartment with a eat in kitchen near downtown looking over the bridge. There is washer and dryer in the build. Transport is 2 blocks away.', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2022-04-30', 1000.00, '8594 South Sugar Ave Astoria, NY 11106', false, false, 'Studio Apartment', 'JKL Realty', 0),
(5, '漂亮的2居室公寓出租', 'Chinese', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2022-05-15', 3000.00, -73.9781, 40.7501, false, false, '豪华公寓', 'MNO Realty',3),
(6, 'Affordable studio apartment with terrace and full kitchen in the Bronx. location is near yankees station. easy access to public transportation ', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-01', 1000.00, '',FALSE, FALSE, 'Studio apartment in the Bronx', NULL, 1),
(7, 'Yon apatman 2 chanm espasye ak 1 twalet ak lave linge ak sech. Li sitiye pre kominote pou achte manje, lekol ak sant pwovizwa. Li akeyi bet kay. Li gen 3 blok soti nan gare a.', 'Creole', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-01', 1000.00, -73.8099, 40.7282, FALSE, FALSE, 'Affordable senior housing in Queens', NULL, 2),
(8, 'Departamento de un dormitorio y un baño de bajo costo con amplia sala y vista al parque.', 'Spanish', '{"https://dummyimage.com/400x400/6e6c6e/e9ef5.png&text=No+Image"}', '2023-05-05', 800.00, -73.8099, 40.7282, FALSE, FALSE, 'Viviendas accesibles para personas mayores en Queens',  NULL, 1),
(9, '宽敞的低收入两居室，带有半个浴室和露台，俯瞰着布鲁克林的花园公寓。位于火车站和邮局旁边。', 'Chinese', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-08', 1200.00, -73.9442, 40.6782, FALSE, FALSE, '布鲁克林的经济实惠公寓。', NULL, 2),
(10, '맨해튼에 위치한 아늑하고 저소득층을 위한 1베드룸 아파트로 멋진 크기의 주방과 커뮤니티 정원이 있습니', 'Korean', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-10', 900.00, -74.0060, 40.7128, FALSE, FALSE, '다. Whole Foods와 가깝습니다', NULL, 1),
(11, 'Phòng giá cả phải chăng trong căn hộ chung ở Staten Island. Nằm gần bến phà, không chấp nhận thú cưng', 'Vietnamese', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-13', 500.00, -74.0776, 40.5795, FALSE, FALSE, 'Căn hộ chung ở Staten Island.', NULL, 1),
(12, 'Affordable 2-bedroom  with 1 bathroom apartment in Queens. Close to the shopping center. ', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-15', 1000.00, -73.8099, 40.7282, FALSE, FALSE, 'Affordable senior housing in Queens', NULL, 2),
(13, 'Affordable one-bedroom apartment in Queens for low-income families. Close to public transportation and local schools.', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-01', 1200.00, -73.827726, 40.701231, FALSE, FALSE, 'One-Bedroom Apartment in Queens', NULL, 1),
(14, 'Estudio para personas de bajos ingresos en Brooklyn. Cerca del transporte público y servicios locales.', 'Spanish', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-03', 900.00, -73.950971, 40.694474, FALSE, FALSE, 'Estudio en Brooklyn.', NULL, 0),
(15, 'Affordable one-bedroom apartment in Queens for low-income families. Close to public transportation and local schools.', 'English', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-01', 1200.00, -73.827726, 40.701231, FALSE, FALSE,'One-Bedroom Apartment in Queens', NULL, 1),
(16, 'Studio apartment for low-income individuals in Brooklyn. Close to public transportation and local amenities.', 'Spanish', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-03', 900.00, -73.950971, 40.694474, FALSE, FALSE, 'Studio Apartment in Brooklyn', NULL, 0),
(17, 'ترجمة الجملة إلى العربية: "شقة بغرفتي نوم واسعة في برونكس للعائلات ذات الدخل المنخفض. تم تجديدها ', 'Arabic', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-06', 1500.00, -73.868353, 40.841350, FALSE, FALSE, 'مؤخرًا بواسطة أجهزة جديدة. شقة بغرفتي نوم في برونكس', NULL, 2),
(18, 'ম্যানহাটানে কম আয়ের বৃদ্ধ জনদের জন্য একটি আবাসিক একক বেডরুমের আপার্টমেন্ট। স্থানীয় হাসপাতাল এবং সম্প্রদায় কেন্দ্রের কাছাকাছি।', 'Bangali', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-10', 1000.00, -73.984168, 40.769718, FALSE, FALSE, 'ম্যানহাটানে বৃদ্ধ জনদের জন্য একটি একক বেডরুমের আপার্টমেন্ট।', NULL, 1),
(19, 'Appartamento conveniente di tre camere da letto a Staten Island per famiglie a basso reddito. Include un cortile e un garage.', 'italian', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-12', 1800.00, -74.144577, 40.582465, FALSE, FALSE,' Appartamento di tre camere da letto a Staten Island.', NULL, 3),
(20, 'Günstige Zweizimmerwohnung in Staten Island für einkommensschwache Familien. Enthält einen Hinterhof und eine Garage.', 'German', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', '2023-05-16', 1800.00, -74.144577, 40.582465, FALSE, FALSE,'Dreizimmerwohnung in Staten Island.', NULL, 2);


INSERT INTO discussions_board (user_id, post_title, post_content, image_url, native_language) VALUES
(1, 'Looking for a new recipe to try', 'Im tired of making the same meals all the time. Does anyone have a favorite recipe they like to share?', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', 'English'),
(2, 'Recomendaciones de libros', 'Me gustaría leer algo nuevo y emocionante. ¿Alguien tiene alguna recomendación de libros?', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', 'Spanish'),
(3, 'Conseils pour faire du yoga à la maison', 'Je suis nouveau dans le yoga et j aimerais en faire à la maison. Des conseils pour un débutant?', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', 'French'),
(4, 'New hobby ideas', 'I need a new hobby to fill my free time. What are some hobbies that you enjoy?', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', 'English'),
(5, 'Sugerencias de películas', 'Me encanta ver películas en mi tiempo libre. ¿Alguien tiene alguna sugerencia de películas para ver?', '{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}', 'Spanish');

INSERT INTO comments (user_id, discussions_id, comment_body,image_url) VALUES
(1, 1, 'I recommend checking out neighborhoods near the downtown area.','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
(2, 1, 'I found a great apartment using Zillow. You should give it a try!','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
(3, 2, 'Puedes buscar en sitios como Idealista o Fotocasa.','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
(4, 2, 'Si necesitas ayuda con la mudanza, puedo recomendarte una buena empresa.','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}'),
(5, 3, 'Pour trouver une maison à louer, je vous conseille de chercher sur Leboncoin ou PAP.','{"https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image"}');

INSERT INTO jobs(user_id, job_title, company, email, location, posted_date, job_type, description, native_language, is_favorite, skills, requirements, salary) VALUES 
(1, 'Web Developer', 'Acme Inc.', 'jobs@acmeinc.com', 'New York, NY', '2022-05-10 12:00:00', 'Full-Time', 'We are seeking an experienced web developer to join our team. The ideal candidate should have experience with HTML, CSS, JavaScript, and React.', 'English', FALSE, 'Full-stack web developer', 'none', 45.00),
(2, 'Software Engineer', 'Tech Solutions', 'jobs@techsolutions.com', 'Seattle, WA', '2022-05-09 14:15:00', 'Full-Time', 'We are seeking a talented software engineer to develop and maintain our web application. The ideal candidate should have experience with Ruby on Rails and React.', 'English', FALSE, 'none', 'none', 75.000),
(3, 'Graphic Designer', 'Design Co.', 'jobs@designco.com', 'Long island, NY', '2022-05-10 10:00:00', 'Part-Time', 'We are looking for a creative and detail-oriented graphic designer to join our team. The ideal candidate should have experience with Adobe Creative Suite and branding design.', 'English', FALSE,'Full-stack','windows knowledge',60.000),
(4, 'Customer Service Representative', 'XYZ Corporation', 'jobs@xyzcorp.com', 'Queens, NY', '2022-05-09 11:45:00', 'Full-Time', 'We are looking for a friendly and customer-focused representative to handle inquiries and provide support to our clients. The ideal candidate should have excellent communication and problem-solving skills.', 'English', FALSE, 'Communication skills, Customer service skills', 'High school diploma or equivalent', 16.00),
(5, 'Sales Representative', 'Sales Co.', 'jobs@salesco.com', 'New York, NY', '2022-05-10 13:30:00', 'Full-Time', 'We are looking for a motivated and results-driven sales representative to sell our products and services. The ideal candidate should have with sales and lead generation.', 'English', FALSE,' Customer service skills','two years experience', 35.000),
(6, 'Server', 'The Cheesecake Factory', 'server@cheesecakefactory.com', 'New York City', '2023-05-16 02:39:50', 'Part-time', 'Serving food and drinks to customers', 'English', false, 'Communication skills, Customer service skills', 'High school diploma or equivalent', 10.00),
(7, 'Cashier', 'Walmart', 'cashier@walmart.com', 'Brooklyn', '2023-05-16 02:39:50', 'Full-time', 'Handling cash and credit card transactions at the register', 'English', false, 'Math skills, Customer service skills', 'High school diploma or equivalent', 12.00),
(8, 'Janitorial Staff', 'NYC Department of Education', 'janitor@nycdoe.com', 'Queens', '2023-05-16 02:39:50', 'Full-time', 'Cleaning classrooms and common areas in schools', 'English and Spanish', false, 'none', 'none', 15.00),
(9, 'Delivery Driver', 'Dominos Pizza', 'driver@dominos.com', 'Bronx', '2023-05-16 02:39:50', 'Part-time', 'Delivering pizzas to customers homes', 'English', false, 'Drivers license', 'none', 9.00),
(10, 'Sales Associate', 'Macys', 'sales@macys.com', 'Staten Island', '2023-05-16 02:39:50', 'Full-time', 'Assisting customers with purchases and returns', 'English and Mandarin Chinese', false, 'none', 'none', 11.00),
(11, 'Housekeeper', 'Clean Sweep Services', 'careers@cleansweepservices.com', 'Brooklyn, NY', '2023-04-28 12:00:00','Part-time', 'Clean Sweep Services is hiring a part-time housekeeper to clean homes and apartments in the Brooklyn area. The ideal candidate will be reliable, thorough, and able to work independently.','Spanish',true,'Cleaning, Organization, Time Management','High school diploma or equivalent, Previous experience in housekeeping',20.00),
(12, 'Head Housekeeper', 'Riverfront Inn', 'hr@riverfrontinn.com', 'Albany, NY', '2023-05-05 10:00:00', 'Full-time', 'Riverfront Inn is seeking a head housekeeper to manage our housekeeping team and ensure that our guest rooms are always clean and well-stocked. The ideal candidate will have previous hotel housekeeping experience and strong leadership skills.','English' ,false,'Housekeeping, Leadership, Time Management', 'High school diploma or equivalent, Previous experience in hotel housekeeping, Supervisory experience', 60000.00),
(13, 'Taxi Dispatcher', 'Green Cab', 'dispatcher@greencab.com', 'New York City', '2022-05-02 10:00:00', 'Part-time','Dispatch taxi drivers to their pickup locations', 'English', true, 'Communication, Multitasking', 'Experience in dispatching or customer service',25000.00);