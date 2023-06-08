\c  out_n_abt;

INSERT INTO users (username, email, password, address, native_language, image_url) VALUES 
('nickolaus dymaikvi', 'nickd@gmail.com', 'password123', '123 Main St, NY, NY, 10001', 'German','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('JuliaAndrews', 'juliaAndrews@gmail.com', 'qwerty123', '456 High St, Queenz, NY, 10002', 'Spanish','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('MikeGonzalez', 'MikeGonzalez@yahoo.com', 'pass1234', '142 Linden blvd, Queenz, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('MaryJackson', 'maryjackson@gmail.com', 'mysecurepassword', '111 concord St, Bronx, NY', 'English','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('DaveLee', 'davelee@hotmail.com', 'mypassword123', '555 Franklin St, Brooklyn, NY', 'Chinese','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('EricSmithy', 'eric@gmail.com', 'mypassword123', '777 Broadway, Queens, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Edgy', 'edgy65@gmail.com', 'mypa23', '888 Bedford, NY', 'Creole','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Mina', 'mina07@gmail.com', 'mypassword123', '179 Thomas lane, Queens Village, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Dilruba', 'dilruba23@gmail.com', 'my123dil', '17 Forest Street, Queens, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Nikesh', 'nikesh11@gmail.com', 'myword1nik23', '228 Linden blvd, Queens, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Lennie', 'lennie12@gmail.com', 'passlen123', '127 east 45 street, brooklyn, NY', 'Spanish','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('JD', 'jd23@gmail.com', 'jdworld30', '100 east 77st , Manhattan, NY', 'French','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Carlos', 'carlos47@gmail.com', 'carlopass123', '777 Broad, brooklyn, NY', 'English','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Destiny', 'destiny@gmail.com', 'destiny30', '140 President street, Brooklyn, NY', 'Spanish','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('jacksonjim', 'jacksonjim@gmail.com', 'jacksonhouse30', '222 Weller lane, Queens, NY', 'English','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Triane', 'tritri12@gmail.com', 'trigirl', '888 Broadway, Queens, NY', 'English','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('RhulaNadu', 'rhulaN@gmail.com', 'naduhouseruler', '888 Broadway, Queens, NY', 'Arabic','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Aamir Kapoor', 'Akapoor@gmail.com', 'akapor007', '888 Jamaica Ave, Queens, NY', 'Bangali','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Dan Mazzili', 'DanM@gmail.com', 'Mazziliworld30', ' 346 Hunter Ave, Staten island, NY', 'italian','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image'),
('Johannes Bauer', 'jim@gmail.com', 'jBauer1230', '180 Fremont Ave, Staten island, NY', 'German','https://dummyimage.com/400x400/6e6c6e/e9e9f5.png&text=No+Image');

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

INSERT INTO jobs(user_id, job_title, company, email, location, posted_date, job_type, description, native_language, is_favorite, skills, requirements, salary, logo) VALUES 
(1, 'Shampooer', 'ABC Company', 'shampooer@company.com', 'New York City, NY', '2023-05-26 04:23:50', 'Full-time', 'Responsible for providing shampooing and conditioning services to  clients hair , ensuring  cleaning  and proper application of products. Applying treatments or deep conditioning masks as directed by the hairstylist. Assisting with the removal of hair color or other chemical products, if required.', 'English', FALSE, 'Experience in shampooing and cleaning', 'High school diploma or equivalent', 12.50, NULL),
(2, 'Cook', 'XYZ Restaurant', 'cook@restaurant.com', 'Bronx, NY', '2023-05-28 11:00:00', 'Part-time', 'Responsible for preparing and cooking food according to the restaurants recipes, menu, and quality standards. Cooking Techniques: Applying various cooking techniques, such as grilling, sautéing, baking, frying, or boiling, to prepare different dishes and achieve desired flavors and textures.', 'English', FALSE, 'Experience in cooking and food preparation', 'Culinary degree preferred', 15.75, NULL),
(3, 'Host/Hostess', '123 Cafe', 'host@cafe.com', 'Queens, NY', '2023-05-15 14:00:00', 'Full-time', 'Their primary responsibility is to greet and assist guests, manage seating arrangements, and coordinate with the restaurant or event staff. Handles reservation bookings, ensuring accuracy and maintaining an organized reservation system.', 'English', FALSE, 'Excellent communication and customer service skills', 'Flexible schedule', 10.00, NULL),
(4, 'Fast-Food/Counter Worker', 'QuickBites', 'worker@quickbites.com', 'Brooklyn, NY','2023-05-29 10:35:00' , 'Part-time', 'We are looking for a Fast Food Attendant to join our team! The ideal candidate will be responsible for greeting customers, understanding the menu, and taking accurate food and drink orders. The successful candidate will be responsible for answering questions about menu items, taking orders and providing correct change or bills. We are seeking individuals who are committed to delivering great service in a positive and friendly environment. Responsibilities: Calculate the cost of items and inform customers of the total at the register. Wash dishes and glassware. Maintain a neat, clean appearance. Accurately complete all register transactions. Handle customer complaints and concerns. Maintain a clean, tidy restaurant. Serve customers in a timely fashion. Answer questions about menu items. speak Spanish', 'English', FALSE, 'Ability to work in a fast-paced environment', 'No prior experience required', 9.00, NULL),
(5, 'Amusement/Recreation Attendant', 'FunPark', 'attendant@funpark.com', 'Queens, NY', '2023-05-30 09:45:00', 'Seasonal', 'Job description for amusement/recreation attendant position.', 'English', FALSE, 'Knowledge of safety procedures', 'Ability to work in outdoor conditions', 11.25, NULL),
(6, 'Usher/Lobby Attendant', 'TheaterX', 'usher@theaterx.com', 'New York, NY','2023-05-31 09:45:00' , 'Part-time', 'Job description for usher/lobby attendant position.', 'English', FALSE, 'Strong interpersonal skills', 'Ability to work evenings and weekends', 9.50, NULL),
(7, 'Cashier', 'ShoeRite Mart', 'cashier@shopritemart.com', 'Brooklyn, NY','2022-05-30 14:30:00', 'Full-time', 'Job description for cashier position.', 'English', FALSE, 'Basic math and cash handling skills', 'High school diploma or equivalent', 13.00, NULL),
(8, 'Recreational Protective Services', 'Long Island Beach Resort', 'rps@LIbeachresort.com', 'Nassau, NY', '2023-05-31 11:45:00', 'Seasonal', 'Job description for recreational protective services position.', 'English', FALSE, 'CPR and First Aid certification', 'Strong swimming skills', 14.50, NULL),
(9, 'Customer Service Representative', 'XYZ Corporation', 'jobs@xyzcorp.com', 'Queens, NY', '2022-05-09 11:45:00', 'Full-Time', 'We are looking for a friendly and customer-focused representative to handle inquiries and provide support to our clients. The ideal candidate should have excellent communication and problem-solving skills.', 'English', FALSE, 'Communication skills, Customer service skills', 'High school diploma or equivalent', 16.00, NULL),
(10, 'Sales Representative', 'Sales Co.', 'jobs@salesco.com', 'New York, NY', '2022-05-10 13:30:00', 'Full-Time', 'We are looking for a motivated and results-driven sales representative to sell our products and services. The ideal candidate should have with sales and lead generation.', 'English', FALSE,' Customer service skills','two years experience', 35.000, NULL),
(11, 'Server', 'The Cheesecake Factory', 'server@cheesecakefactory.com', 'New York City', '2023-05-16 02:39:50', 'Part-time', 'Serving food and drinks to customers', 'English', false, 'Communication skills, Customer service skills', 'High school diploma or equivalent', 10.00, NULL),
(12, 'Cashier', 'Walmart', 'cashier@walmart.com', 'Brooklyn', '2023-05-16 02:39:50', 'Full-time', 'Handling cash and credit card transactions at the register', 'English', false, 'Math skills, Customer service skills', 'High school diploma or equivalent', 12.00, NULL),
(13, 'Janitorial Staff', 'NYC Department of Education', 'janitor@nycdoe.com', 'Queens', '2023-05-16 02:39:50', 'Full-time', 'Cleaning classrooms and common areas in schools', 'English and Spanish', false, 'none', 'none', 15.00, NULL),
(14, 'Delivery Driver', 'Dominos Pizza', 'driver@dominos.com', 'Bronx', '2023-05-16 02:39:50', 'Part-time', 'Delivering pizzas to customers homes', 'English', false, 'Drivers license', 'none', 9.00, NULL),
(15, 'Sales Associate', 'Macys', 'sales@macys.com', 'Staten Island', '2023-05-16 02:39:50', 'Full-time', 'Assisting customers with purchases and returns', 'English and Mandarin Chinese', false, 'none', 'none', 11.00, NULL),
(16, 'Housekeeper', 'Clean Sweep Services', 'careers@cleansweepservices.com', 'Brooklyn, NY', '2023-04-28 12:00:00','Part-time', 'Clean Sweep Services is hiring a part-time housekeeper to clean homes and apartments in the Brooklyn area. The ideal candidate will be reliable, thorough, and able to work independently.','Spanish',true,'Cleaning, Organization, Time Management','High school diploma or equivalent, Previous experience in housekeeping',20.00, NULL),
(17, 'Head Housekeeper', 'Riverfront Inn', 'hr@riverfrontinn.com', 'Albany, NY', '2023-05-05 10:00:00', 'Full-time', 'Riverfront Inn is seeking a head housekeeper to manage our housekeeping team and ensure that our guest rooms are always clean and well-stocked. The ideal candidate will have previous hotel housekeeping experience and strong leadership skills.','English' ,false,'Housekeeping, Leadership, Time Management', 'High school diploma or equivalent, Previous experience in hotel housekeeping, Supervisory experience', 60000.00, NULL),
(18, 'Taxi Dispatcher', 'Green Cab', 'dispatcher@greencab.com', 'New York City', '2022-05-02 10:00:00', 'Part-time','Dispatch taxi drivers to their pickup locations', 'English', true, 'Communication, Multitasking', 'Experience in dispatching or customer service',25000.00, NULL);


INSERT INTO listings (user_id, description, native_language, image_url, date_posted, price, location, is_applied, is_favorite, title, company, rooms) VALUES 
(1, 'Beautiful 2-bedroom apartment and 1 bath for rent/with Laundry. Apartment features huge living room with stainless steel appliances and microwave. We do not discriminate against people based on their source of income including receipt of rental assistance programs/vouchers or government assistance. A five minute walk to the nearest train station. pet friendly ', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685117772/2bd_jamaica_ave10_n_gsiuly.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685117723/2bd_jamaica_ave06_n_alesfj.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685117717/2bd_jamaica_ave05_n_b1lnmg.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685117712/2bd_jamaica_ave04_n_ocihu6.jpg"}', '2023-05-01', 2000.00 ,'261 Rocky River st. Brooklyn NY 11211',  false, false, 'Spacious Apartment', 'ABC Realty', 2),
(2, 'Apartamento recién renovado de 3 habitaciones, con 1.5 baños, electrodomésticos nuevos de acero inoxidable y amplios armarios. ¡Patio trasero, sí, lo has leído correctamente! Lavadora y secadora (en el lugar, compartidas). A pocos pasos de cafeterías, restaurantes, supermercados, tiendas, tintorerías y más. Autobuses de NYC y autobuses exprés a menos de 5 minutos a pie.', 'Spanish', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376994/333461899_6130355357003158_3955282739333668510_n_pb0ok1.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376993/331241435_6114636901928736_6324535801240891957_n_ppwqr8.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376993/334293449_5397438480357403_5519856102618222089_n_imz3hf.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376994/333603325_5908445955930215_7470195324925700766_n_mm7kl2.jpg"}', '2022-02-15', 2500.00, '9518 Green Hill Street Bronx NY 10468', false, false, 'Casa Grande', 'DEF Realty', 3),
(3, 'Spacieux appartement de 3 chambres avec cuisine équipée offrant beaucoup despace de rangement et une salle à manger séparée, des planchers en bois, de hauts plafonds et de belles grandes chambres. 1 1/2 salles de bains. Beaucoup despace de rangement dans les placards Proche du train, des magasins, de la salle de sport, des restaurants, des cafés et bien plus encore... À seulement quelques minutes de Manhattan! Animaux de compagnie autorisés!', 'French', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376995/_1bd_1bath_NY_NY4_n_bgmlqt.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376996/_1bd_1bath_NY_NY9_n_m5pe6r.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376995/_1bd_1bath_NY_NY2_n_jtmvqo.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376995/_1bd_1bath_NY_NY5_n_clr7pu.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376995/_1bd_1bath_NY_NY6_n_fq2ypv.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376994/_1bd_1bath_NY_NY8_n_kypam5.jpg"}', '2022-03-22', 2500.00, '43 Univserity Ave. Middletown, NY 10940' , false, false, 'Maison de Luxe', 'GHI Realty', 3),
(4, 'Big Recently Renovated 2 Cozy studio apartment with a eat in kitchen near downtown looking over the bridge. Only 5 walk minutes to train station. Separate kitchen with space for dining table. There is washer and dryer in the build. Big living/Sleeping Area, Hardwood Floors. Big Double Closet Build-in. Heat/hot water included. Steps from all Bars, Cafes, Restaurants, Grocery, Shopping……………….', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376988/349272380_1409873252888386_3132109661737396475_n_gumbrk.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376988/349141849_580912920898102_398187689017230462_n_pyazwq.jpg"}', '2022-04-15', 1000.00, '8594 South Sugar Ave Astoria, NY 11106', false, false, 'Studio Apartment', 'JKL Realty', 1),
(5, '巨大的客厅！现代化的厨房，不锈钢电器，白色瓷砖背板，花岗岩台面！硬木地板，巨大的窗户，充足的自然光线。位于三楼，需步行上楼，无电梯。建筑内或单位内没有洗衣设备。紧邻纽约市立学院，步行即可到达，距离公园仅三个街区。', 'Chinese', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376980/348061210_9984865958197505_387814710345616039_n_ox63pe.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376980/348896731_9747867265225206_523918362352393774_n_ncnjqq.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376980/348898281_6115803401873448_6276996072755421422_n_rgfgli.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376980/345244474_6058630247595749_4639971716633736477_n_gbajsa.jpg"}', '2022-05-15', 2000.00, '514 West 136th street#10 New York, NY 10029', false, false, '豪华公寓', 'MNO Realty',2),
(6, 'Neighborhood: Soundview  Location: St. Lawrence & 172nd Street Transportation: 6 Train. Apartment features: Very Spacious, Eat in kitchen, Classic white kitchen appliances, Plenty of closet space Building Amenities: Heat & hot water, Clean and lighted hallways, A front door buzzer, No Dogs, only 1 cat per unit Contact me anytime. Let’s make sure you’re the first to visit this apartment. Allow me to open the door for you!', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685377000/348918163_6340505052678542_3628645908180593801_n_dht8jd.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376998/347211764_6471597289620092_5434519306949980036_n_ouvqxf.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376999/347215130_6565282543491502_5830161797195532709_n_sdn2bp.jpg"}', '2023-05-01', 1400.00, '1772 East 172nd street #4k Bronx, NY 10457', false, false, 'Studio apartment in the Bronx', NULL, 1),
(7, 'LAVI KAY LA SE PA NAN APPEL! GARANTI YO AKSEPTE. Pa rele tout randevou yo planifye pa imèl. Yon lojman espase ak 2 chanm sitiyasyon nan twazyèm etaj yon imèb ki gen eskalye. Unit la gen yon gwo kizin/salon konbine, de gwo chanm. Planche bwa atravè tout, ak anpil espas pou mete rad ak bagay.', 'Creole', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376988/349090768_3631014230465100_8257859732119380441_n_lsgqxt.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376989/5485_n_Large_lgkfry.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376989/5486_n_Medium_famans.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376989/5487_n_Medium_vk0vwn.png"}', '2023-05-01', 1800.00, '7804 North Smith Store Lane Astoria, NY 11103' , FALSE, FALSE, 'Affordable senior housing in Queens', NULL, 2),
(8, 'Unidad de 1 dormitorio disponible en Rosedale, Queens. Amplia unidad de nivel inferior con cocina y baño separados. Abundante espacio de armario junto con almacenamiento adicional y estanterías. La cocina renovada cuenta con nuevos gabinetes blancos y acabados de acero inoxidable. Ducha incluida en el baño. Fácil acceso a las autopistas cercanas y al transporte público del MTA.', 'Spanish', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376995/_1bd_1bath_NY_NY4_n_bgmlqt.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685377002/325592490_1324797355036512_9138660597628639626_n_xlcydk.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685377003/349032019_6291499277606285_5435269428539722195_n_qpaiqm.jpg"}', '2023-05-01', 1295.00, '149-65 254th street #2. Rosedale, NY 11419', FALSE, FALSE, 'Viviendas accesibles para personas mayores en Queens',  NULL, 1),
(9, '宽敞的两居室，拥有充足的自然阳光和壁橱空间。卧室可以轻松容纳一张特大号或大号床、梳妆台和床头柜，配有两个大窗户和一个壁橱。客厅/餐厅可以容纳您的三人座或组合沙发、电视、咖啡桌和餐桌！建筑物保养良好，有住家管理员。 公寓/建筑特点：特大号/大号床，高天花板，不锈钢电器，大量橱柜空间，整个公寓铺有硬木地板，大窗户，充足的阳光，大窗户，住家管理员，更新的厨房，吧台，更新的浴室，建筑物保养良好，接受担保人，居住区域附近有地铁线路。', 'Chinese', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376986/343916163_9204602126279890_5019524014765604102_n_gyobps.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376986/342404351_5792254020874964_2211416952198912604_n_xy0kps.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376987/333777581_5855153634595495_3207510914409371147_n_pyiulx.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376987/340974853_6269711606425219_9081072333783922512_n_j40pfc.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376987/341592060_5825229707604915_1371055584538583394_n_cau9ql.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376986/333768905_9120501634687712_7089367464650979491_n_xwlkqd.jpg"}', '2023-05-08', 1825.00, '879 Lenox Road #D10 Brooklyn, NY 11229', FALSE, FALSE, '布鲁克林的经济实惠公寓。', NULL, 2),
(10, '대형 1베드룸 - 매우 경제적 - 세탁실과 엘리베이터 임대안정화된 보석같은 집! 아파트 - 퀸 사이즈 침실, 넓은 거실, 넉넉한 레이아웃에 침실 내부에 걸어다니기 좋은 옷장이 있습니다. 개조된 대리석 욕실, 별도의 주방 공간 건물 - Freeman Street 6호선과 2호선 역 바로 옆에 편리하게 위치해 있으며, 엘리베이터, 건물 내 세탁실이 있습니다. 빠르게 대응하세요! 빨리 사라질 것입니다!', 'Korean', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685377001/345567516_6243540082380636_1670733123878573416_n_p1kdg8.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685377001/349131393_6090726367641683_1949853010843844020_n_akdsfr.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1686243073/349076384_4880579358733486_2474663998936167045_n_psy3jm.jpg"}', '2023-05-10', 900.00, '675 Harrison Street Bronx, NY 10451', FALSE, FALSE, '다. Whole Foods와 가깝습니다', NULL, 1),
(11, 'Căn hộ một phòng ngủ ở Staten Island cổ điển, đẹp và yên tĩnh Căn hộ rộng lớn, có cửa sổ và ánh sáng mặt trời trong mỗi phòng, Phòng khách rộng rãi và tủ áo 6 feet, Bao gồm nước, Kết nối máy giặt trong căn hộ, Bãi đậu xe đi kèm, Vui lòng gửi email cho tôi về căn hộ tuyệt vời này', 'Vietnamese', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685452867/S.I._1bd_1bath03_n_hajskg.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685452867/S.I._1bd_1bath01_n_shkjtt.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685452867/S.I._1bd_1bath02_n_ptktwa.jpg"}', '2023-05-13', 1200.00, '10 Kimberly Lane #40A. Staten Island, NY 10312', FALSE, FALSE, 'Căn hộ chung ở Staten Island.', NULL, 1),
(12, 'Pet-friendly spacious 2 bedroom located on the third floor of a walk up building. The unit features a large open kitchen/living room combo, two spacious bedrooms. wood flooring throughout, and ample closet and storage space. Heat and hot water are included. Close to the shopping center. ', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376992/IMG_9249_1bd.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376992/IMG_9250_l8nytr.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376992/IMG_9251_iuztp6.jpg"}', '2023-05-15', 1000.00, '6374 Forest street Woodside, NY 11377', FALSE, FALSE, 'Affordable senior housing in Queens', NULL, 2),
(13, 'Brand new 1 bedroom on the second floor walk-up. Includes heating and hot water. No pets Hardwood flooring New kitchen and bathroom Lots of windows for natural sunlight. The bedroom comes with closet space. Close to public transportation and local schools.', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376981/IMG_9206_1bd02_s7oixw.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376982/IMG_9205_1bd01_j3vwgs.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376982/IMG_9207_1bd03_jd56nz.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376983/IMG_9208_1bd04_rpq3zs.png"}', '2023-05-01', 1600.00, '8117 Walnut Lane Astoria, Ny 11103', FALSE, FALSE, 'One-Bedroom Apartment in Queens', NULL, 1),
(14, 'Estudio espacioso en el corazón de Flatbush. Habitación grande, mucho espacio de armario, pisos de madera, edificio de época, lavandería en el lugar. Edificio con ascensor, cerca de tiendas, cerca del transporte, a pasos de las líneas de tren 2 y 5. Excelente zona.', 'Spanish', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685383884/348955212_922897962331756_1047365756462126755_1bd_1bath_03_n_og9thy.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685383884/348984651_3197594000538338_7059067105194104302_1bd_1bath_04_n_mlhvns.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685383884/348816852_3452485468399725_285662590010363271_1bd_1bath_02_n_yrz6tl.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685383884/348601298_3047841088855268_18213349375347090_1bd_1bath_01_n_wv2zu1.jpg"}', '2023-05-03"}', 1400.00, '251 East 29 street #3A Brooklyn, NY 11210 ', FALSE, FALSE, 'Estudio en Brooklyn.', NULL, 0),
(15, 'Beautiful One bedroom one bath unit. Bedroom has walk in closet. Eat in kitchen with stools . Great location steps from forest park stores and transportation. Tenant pays electric', 'English', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd01_n_c7pnao.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd06_n_ofejyt.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd04_n_kpyhez.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd09_n_j9kcle.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd05_n_xpzbkc.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd08_n_ljir6f.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd03_n_ayfrwu.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd02_n._lwyv6r.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685455563/Qns_1bd07_n_bavzke.jpg"}', '2023-05-01', 1200.00, '147 S. Bear Hill Ave. Fresh Meadows, NY 11365', FALSE, FALSE,'One-Bedroom Apartment in Queens', NULL, 1),
(16, 'COZY RENT STABILIZED STUDIO AVAILABLE IMMEDIATELY 1 BLOCK FROM KINGS HIGHWAY TRAIN STATION! Apartment features beautiful hardwood floors throughout, large windows with excellent sunlight and separate kitchen with dining area. Well maintained building features live in super. Close to transportation, restaurants, supermarkets, cafes and everything you need. Pets not allowed. Must have good income and credit. Email inquiries only. Showing by appointment only.', 'Spanish', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376985/IMG_9195_studio_bk01_vdvxiy.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376985/IMG_9196_studi0_bk02_l3m553.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376985/IMG_9197_studio_bk03_nw2x2x.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376985/IMG_9198_studio_bk04_gxavqf.png"}', '2023-05-03', 900.00, '7122 Carpenter Ave. Brooklyn, NY 11229', FALSE, FALSE, 'Studio Apartment in Brooklyn', NULL, 0),
(17, 'أجهزة بيضاء، أرضيات خشبية، غرفة معيشة كبيرة، تدفئة ومياه مشمولة! مشرف موجود في الموقع، مشرف يسكن في المبنى، غرف نوم بحجم كوين، الكثير من الضوء الطبيعي. يقع بالقرب من الحديقة.','Arabic', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376992/2bd_bx_1300_01__n_okmcqd.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376991/2bd_1bath_bx_1300_02_n_kk0p55.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376992/2bd_1bath_bx_1300_03_n_riiqdc.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376991/2bd_1bath_bx_1300_05__hyyx0x.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376991/2bd_1bath_bx_1300_04__gs50rk.jpg"}', '2023-05-06"}', 1500.00, '79 Eagle Street Bronx, NY 10466', FALSE, FALSE, 'مؤخرًا بواسطة أجهزة جديدة. شقة بغرفتي نوم في برونكس', NULL, 2),
(18, '১ বেডরুম ১ বাথরুম অ্যাপার্টমেন্ট (লেআউট চেক করুন - ৩১৭ বর্গফুট) আকর্ষণীয় সুন্দর পুনর্নির্মাণযোগ্য, পুনর্নির্মাণের অংশে উল্লিখিত ব্রিক ওয়াল, চমকপ্রদ কাঠের মেজাজ, ৮ ফুটের দরজা এবং সুন্দর বাথরুম, অবিশাল রঙের রান্নাঘর যেখানে ক্যাবিনেটের অনেক স্থান, গ্র্যানাইট কাউন্টারটপ, স্টেইনলেস স্টিল প্রয়োজনীয় যন্ত্রপাতি ... ডিমার লাইট, বাসা ভাড়ায় তাপ এবং গরম পানি সংযুক্ত, এক্সপ্রেস এ এবং ১ ট্রেন উভয়েই নিকটবর্তী', 'Bangali', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376978/IMG_9221_Large_lfpq6q.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376978/IMG_9220_Large_b02ndx.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376977/IMG_9218_Large_sqtivh.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376977/IMG_9222_Large_nmvy1s.png"}', '2023-05-10', 1000.00, '8032 Wintergreen Street New York, NY 10016', FALSE, FALSE, 'ম্যানহাটানে বৃদ্ধ জনদের জন্য একটি একক বেডরুমের আপার্টমেন্ট।', NULL, 1),
(19, 'Affascinante unità in affitto con 3 camere da letto A pochi passi dal Parco Silverlake. Facile percorso per il traghetto, il ponte Verrazano, il campo da golf, tutti i negozi locali, ristoranti e molto altro ancora. Caratteristiche dell appartamento: inclusi riscaldamento e acqua calda, al secondo piano senza ascensore, luminoso e soleggiato, pavimenti in legno lucidato in tutta la casa, soffitti alti, camere da letto con spazio per un letto king-size e queen-size con armadi, ingresso con guardaroba, porta francese verso un ampio soggiorno, ampie finestre in ogni stanza, bagno completo aggiornato con nuove piastrelle, cucina attrezzata con elettrodomestici in acciaio inossidabile, lavanderia nell edificio, supervisore in loco.', 'italian', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685376974/IMG_9236_Medium_kgikct.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376975/IMG_9234_Medium_fedit2.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376975/IMG_9239_Medium_eeqqnq.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376976/IMG_9237_Medium_jmpvfr.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376976/IMG_9235_Medium_jzkn45.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376975/IMG_9233_Medium_u5rfwy.png","https://res.cloudinary.com/dldvfnn89/image/upload/v1685376976/IMG_9238_Medium_kzdsjq.png"}', '2023-05-12', 1800.00, '9389 Thorne Drive Staten Island, NY 10312', FALSE, FALSE,' Appartamento di tre camere da letto a Staten Island.', NULL, 3),
(20, 'Geräumige 2 Schlafzimmer Heizung und Warmwasser inklusive, Renoviertes Küche und Badezimmer, Gutes Einkommen und Kredit erforderlich, Zu Fuß erreichbar von allem, Wäscherei im Apartmentkomplex, Haustiere erlaubt, Garagenparkplatz Waschküche im Gebäude, Hausmeister vor Ort', 'German', '{"https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd01_n_zgj32m.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd02_n_xkp9vv.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd03_n_o7oi3h.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd04_n_joihil.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd05_n_s5duob.jpg","https://res.cloudinary.com/dldvfnn89/image/upload/v1685453700/S.I.2bd06_n_yon6gb.jpg"}', '2023-05-16', 1850.00, '61 Frazer street, Staten Island, NY 10312', FALSE, FALSE,'Dreizimmerwohnung in Staten Island.', NULL, 2);


INSERT INTO community_board (user_id, post_title, post_content, image_url, native_language) VALUES
(1, 'Looking for a new recipe to try', 'Im tired of making the same meals all the time. Does anyone have a favorite recipe they like to share?', 'https://res.cloudinary.com/dldvfnn89/image/upload/v1685463606/cld-sample-4.jpg', 'English'),
(2, 'Recomendaciones de libros', 'Me gustaría leer algo nuevo y emocionante. ¿Alguien tiene alguna recomendación de libros?', 'https://res.cloudinary.com/dldvfnn89/image/upload/v1686243509/book-composition-with-open-book_Small_qzqyph.png', 'Spanish'),
(3, 'Conseils pour faire du yoga à la maison', 'Je suis nouveau dans le yoga et j aimerais en faire à la maison. Des conseils pour un débutant?', 'https://res.cloudinary.com/dldvfnn89/image/upload/v1686243718/relaxed-dark-skinned-woman-with-sporty-body_Small_cquoka.png', 'French'),
(4, 'New hobby ideas', 'I need a new hobby to fill my free time. What are some hobbies that you enjoy?', 'https://res.cloudinary.com/dldvfnn89/image/upload/v1686235857/arts-craft-artistic-artist-design-ideas-concept_jssgut.jpg', 'English'),
(5, 'Sugerencias de películas', 'Me encanta ver películas en mi tiempo libre. ¿Alguien tiene alguna sugerencia de películas para ver?', 'https://res.cloudinary.com/dldvfnn89/image/upload/v1686244333/celluloid-with-videotape-cinema-tickets_Small_auohra.png', 'Spanish');

INSERT INTO comments (user_id, community_board_id, comment_body) VALUES
(1, 1, 'I recommend checking out neighborhoods near the downtown area.'),
(2, 1, 'Looking for a new recipe to try? How about a delicious and healthy Quinoa Salad with roasted vegetables? It is packed with flavor and easy to make. Let me know if you had like the recipe!'),
(3, 2, 'Puedes buscar en sitios como Idealista o Fotocasa.'),
(4, 2, 'Si necesitas ayuda con la mudanza, puedo recomendarte una buena empresa.'),
(5, 1, 'I completely understand feeling tired of making the same meals. One of my favorite recipes to share is a mouthwatering Chicken Alfredo Pasta. It is creamy, savory, and always a hit. If you are interested, I can provide you with the detailed recipe.'),
(6, 1, 'If youre in the mood for something different, I highly recommend trying a homemade Margherita Pizza. It is a classic Italian recipe with a thin, crispy crust topped with fresh tomatoes, mozzarella cheese, and basil leaves. Let me know if you would like the recipe!'),
(7, 1, 'I have recently discovered a fantastic recipe for Thai Red Curry with vegetables and tofu. It is a burst of flavors and perfect for those who enjoy spicy dishes. If you are interested, I had be happy to share the recipe with you!'),
(8, 3, 'Pour trouver une maison à louer, je vous conseille de chercher sur Leboncoin ou PAP.'),
(9, 2, '¡Claro! Te recomendaría leer "Cien años de soledad" de Gabriel García Márquez. Es una novela épica llena de realismo mágico que te transportará a un mundo fascinante.'),
(10, 2, 'Si te gustan los thrillers, te recomiendo "La sombra del viento" de Carlos Ruiz Zafón. Es una historia misteriosa y cautivadora ambientada en la Barcelona de posguerra.'),
(11, 2, 'Si prefieres la ciencia ficción, te sugiero leer "Dune" de Frank Herbert. Es una obra maestra del género con un universo vasto y personajes memorables.'),
(12, 1, 'I know the feeling of wanting to switch things up in the kitchen. How about trying a flavorful and comforting Butternut Squash Soup? It is easy to make and perfect for chilly evenings. Let me know if you would like the recipe!'),
(13, 2, 'Una opción interesante es "El alquimista" de Paulo Coelho. Esta novela te invita a reflexionar sobre el sentido de la vida y perseguir tus sueños.'),
(13, 2, 'Si buscas una novela histórica apasionante, te recomiendo "Los pilares de la Tierra" de Ken Follett. Ambientada en la Edad Media, esta obra te sumergirá en intrigas y construcción de catedrales.'),
(14, 3, 'Absolument! Pour commencer le yoga à la maison, je vous recommande de trouver un espace calme et confortable où vous pourrez vous détendre. Vous pouvez suivre des tutoriels en ligne pour les débutants et commencer par des poses simples comme le chien tête en bas et la posture du guerrier. N oubliez pas de vous concentrer sur votre respiration et d écouter votre corps. Bonne pratique!'),
(15, 4, 'Exploring new hobbies is always exciting! If you are looking for a creative outlet, you could try painting, drawing, or even pottery. If you enjoy being active, consider hiking, cycling, or dancing. If you prefer a more relaxing hobby, you could try gardening or reading. The possibilities are endless, so choose something that sparks your interest and brings you joy!'),
(16, 3, 'Bienvenue dans le monde du yoga! Pour les débutants à la maison, il est important de commencer lentement et d écouter votre corps. Vous pouvez commencer par des séances courtes de 10 à 15 minutes et augmenter progressivement la durée. Suivre des vidéos guidées ou utiliser des applications de yoga peut vous aider à apprendre les poses correctement. N oubliez pas de vous étirer et de respirer profondément. Bonne pratique!'),
(17, 3, 'Je suis ravi que vous souhaitiez essayer le yoga à la maison! Pour les débutants, je recommande de commencer par des séances de yoga doux et d apprendre les bases des postures de base. Vous pouvez également investir dans un tapis de yoga confortable et utiliser des accessoires tels que des blocs et des sangles pour vous aider dans les poses. N oubliez pas découter votre corps et de pratiquer régulièrement. Bonne pratique!'),
(18, 3, 'Le yoga à la maison peut être une expérience merveilleuse ! Pour les débutants, je suggère de commencer par des vidéos de yoga pour débutants disponibles en ligne. Cela vous guidera à travers des séances simples et vous aidera à comprendre les bases. Assurez-vous de créer un espace tranquille, d avoir un tapis de yoga confortable et de pratiquer régulièrement pour profiter pleinement des bienfaits du yoga. Bonne pratique!'),
(19, 3, 'Félicitations pour votre décision de commencer le yoga à la maison ! Pour les débutants, je recommande de commencer par des postures de base telles que la posture de l arbre, le chat-vache et le guerrier. Vous pouvez également essayer la méditation et la respiration profonde pour vous détendre davantage. L important est de pratiquer régulièrement et d être patient avec vous-même. Profitez de votre pratique de yoga à la maison!'),
(20, 4, 'Finding a new hobby can be a great way to spend your free time! Have you ever considered learning a musical instrument? Playing the guitar, piano, or even the ukulele can be both fun and rewarding. If you are into crafting, you might enjoy knitting, sewing, or even woodworking. Do not be afraid to explore different hobbies until you find the one that truly captivates you!'),
(13, 4, 'It is wonderful that you are looking for a new hobby! How about trying your hand at cooking or baking? Experimenting with new recipes and flavors can be both enjoyable and delicious. If you are interested in wellness, you could explore yoga, meditation, or even start a journaling practice. Do not hesitate to try something completely new and step out of your comfort zone!'),
(15, 4, 'When it comes to hobbies, the possibilities are endless! If you are into arts and crafts, you might enjoy painting, origami, or even calligraphy. If you are a nature lover, consider birdwatching, gardening, or photography. For those who love learning, exploring a new language, playing chess, or solving puzzles could be exciting. Remember, hobbies are about having fun and discovering new passions!'),
(4, 4, 'Finding a new hobby can be a thrilling adventure! If you enjoy being active, you could try hiking, rock climbing, or even martial arts. If you are a fan of storytelling, writing short stories or starting a blog could be fulfilling. For those who appreciate the arts, learning to play a musical instrument, attending art classes, or visiting museums can be inspiring. Embrace your interests and dive into a new hobby with enthusiasm!');

INSERT INTO fav_jobs (user_id, job_id) VALUES
(1, 5),
(1, 7),
(1, 9),
(2, 12),
(3, 10);

INSERT INTO fav_listings (user_id, listing_id) VALUES
(4, 8),
(5, 14),
(6, 18);

INSERT INTO fav_community_posts (user_id, community_board_id) VALUES
(1, 3),
(2, 5),
(3, 1);