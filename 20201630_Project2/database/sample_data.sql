
-- 1. Customer (고객 정보) 
INSERT INTO Customer (loyalty_id, customer_name, email_address, phone_number) VALUES
('CUST001', 'Kim Jihye', 'jihye.kim@example.com', '010-1234-5678'),
('CUST002', 'Lee Junho', 'junho.lee@example.com', '010-9876-5432'),
('CUST003', 'Park Minji', 'minji.park@example.com', '010-1111-2222'),
('CUST004', 'Choi Hyunjun', 'hyunjun.choi@example.com', '010-3333-4444'),
('CUST005', 'Jung Areum', 'areum.jung@example.com', '010-5555-6666'),
('CUST006', 'Kang Sora', 'sora.kang@example.com', '010-2222-3333'),
('CUST007', 'Yoon Daeho', 'daeho.yoon@example.com', '010-4444-5555'),
('CUST008', 'Oh Subin', 'subin.oh@example.com', '010-6666-7777'),
('CUST009', 'Han Sangmin', 'sangmin.han@example.com', '010-8888-9999'),
('CUST010', 'Ryu Jiyoon', 'jiyoon.ryu@example.com', '010-0000-1111'),
('CUST011', 'Seo Hojun', 'hojun.seo@example.com', '010-1212-3434'),
('CUST012', 'Moon Chaewon', 'chaewon.moon@example.com', '010-5656-7878'),
('CUST013', 'Ahn Jinsu', 'jinsu.ahn@example.com', '010-9090-1212'),
('CUST014', 'Jang Hyejin', 'hyejin.jang@example.com', '010-3434-5656'),
('CUST015', 'Kwon Taeyang', 'taeyang.kwon@example.com', '010-7878-9090'),
('CUST016', 'Jeon Yeoreum', 'yeoreum.jeon@example.com', '010-2323-4545'),
('CUST017', 'Lim Woojin', 'woojin.lim@example.com', '010-6767-8989'),
('CUST018', 'Bae Seoyeon', 'seoyeon.bae@example.com', '010-0101-2323'),
('CUST019', 'Song Minwoo', 'minwoo.song@example.com', '010-4545-6767'),
('CUST020', 'Hong Dayeon', 'dayeon.hong@example.com', '010-8989-0101'),
('CUST021', 'Cha Eunwoo', 'eunwoo.cha@example.com', '010-1010-2020');


-- 2. Store (매장 정보) - 20개 이상 레코드
INSERT INTO Store (store_id, store_name, address, ownership_type, open_time, close_time) VALUES
('STR001', 'CU Gangnam', '123 Teheran-ro, Seoul', 'Corporate', '00:00:00', '23:59:59'),
('STR002', 'GS25 Sinchon', '45 Yonsei-ro, Seoul', 'Franchise', '07:00:00', '23:00:00'),
('STR003', '7-Eleven Busan', '88 Haeundae-ro, Busan', 'Franchise', '00:00:00', '23:59:59'),
('STR004', 'CU Hongdae', '99 Hongik-ro, Seoul', 'Corporate', '08:00:00', '22:00:00'),
('STR005', 'GS25 Daejeon', '10 Gyesan-ro, Daejeon', 'Franchise', '09:00:00', '21:00:00'),
('STR006', 'CU Myeongdong', '30 Myeongdong-gil, Seoul', 'Corporate', '00:00:00', '23:59:59'),
('STR007', 'GS25 Jongno', '5 Jong-ro, Seoul', 'Franchise', '06:00:00', '23:30:00'),
('STR008', '7-Eleven Jeju', '10 Doduhangseo-gil, Jeju', 'Franchise', '08:00:00', '20:00:00'),
('STR009', 'CU Yeouido', '20 Gukhoe-daero, Seoul', 'Corporate', '07:30:00', '21:00:00'),
('STR010', 'GS25 Incheon', '50 Cheongna International City, Incheon', 'Franchise', '00:00:00', '23:59:59'),
('STR011', 'CU Suwon', '15 Gyeongsu-daero, Suwon', 'Corporate', '08:00:00', '22:00:00'),
('STR012', '7-Eleven Daegu', '25 Dongseong-ro, Daegu', 'Franchise', '07:00:00', '23:00:00'),
('STR013', 'GS25 Gwangju', '33 Sangmujungang-ro, Gwangju', 'Franchise', '09:00:00', '21:00:00'),
('STR014', 'CU Ulsan', '40 Samho-ro, Ulsan', 'Corporate', '00:00:00', '23:59:59'),
('STR015', '7-Eleven Cheongju', '18 Seowon-gu, Cheongju', 'Franchise', '08:00:00', '22:00:00'),
('STR016', 'GS25 Paju', '11 Munbal-ro, Paju', 'Franchise', '09:00:00', '21:00:00'),
('STR017', 'CU Gyeongju', '7 Gyerim-ro, Gyeongju', 'Corporate', '07:00:00', '23:00:00'),
('STR018', '7-Eleven Sokcho', '13 Donghae-daero, Sokcho', 'Franchise', '08:00:00', '20:00:00'),
('STR019', 'GS25 Chuncheon', '22 Chuncheon-ro, Chuncheon', 'Franchise', '00:00:00', '23:59:59'),
('STR020', 'CU Sejong', '6 Daehak-ro, Sejong', 'Corporate', '08:30:00', '21:30:00'),
('STR021', '7-Eleven Ansan', '5 Jungang-daero, Ansan', 'Franchise', '07:00:00', '23:00:00');


-- 3. Vendor (벤더 정보) - 20개 이상 레코드
INSERT INTO Vendor (vendor_id, vendor_name, email_address, phone_number, address) VALUES
('VEND001', 'Orion Distributors', 'orion_dist@example.com', '02-1111-2222', 'Seoul, Guro-gu, Digital-ro 26-gil 98'),
('VEND002', 'Coca-Cola Korea', 'coke_kr@example.com', '02-3333-4444', 'Seoul, Gangnam-gu, Yeongdongdae-ro 511'),
('VEND003', 'Dairy Supply Co.', 'dairy_supply@example.com', '031-5555-6666', 'Gyeonggi-do, Anyang-si, Dongan-gu, Gwanak-daero 324'),
('VEND004', 'Food & Beverage Inc.', 'fb_inc@example.com', '070-7777-8888', 'Seoul, Jung-gu, Sejong-daero 110'),
('VEND005', 'Snack World', 'snack_world@example.com', '051-9999-0000', 'Busan, Busanjin-gu, Seomyeon-ro 5'),
('VEND006', 'Noodle King', 'noodle_king@example.com', '02-1234-5678', 'Seoul, Mapo-gu, World Cup-ro 200'),
('VEND007', 'Beverage Oasis', 'beverage_oasis@example.com', '031-9876-5432', 'Gyeonggi-do, Goyang-si, Ilsanseo-gu, Hosu-ro 500'),
('VEND008', 'Sweet Treats Corp', 'sweet_treats@example.com', '051-2345-6789', 'Busan, Dongnae-gu, Jungang-daero 1300'),
('VEND009', 'Health Foods Ltd.', 'health_foods@example.com', '042-5678-9012', 'Daejeon, Seo-gu, Dunsan-ro 100'),
('VEND010', 'Fresh Produce Direct', 'fresh_produce@example.com', '062-8901-2345', 'Gwangju, Buk-gu, Cheomdan-ro 300'),
('VEND011', 'Bakery Delights', 'bakery_delights@example.com', '053-1234-5678', 'Daegu, Jung-gu, Dongseong-ro 200'),
('VEND012', 'Frozen Goods Co.', 'frozen_goods@example.com', '031-7654-3210', 'Gyeonggi-do, Seongnam-si, Bundang-gu, Jeongja-dong 100'),
('VEND013', 'Household Essentials', 'household_ess@example.com', '02-2121-3434', 'Seoul, Gangdong-gu, Olympic-ro 600'),
('VEND014', 'Local Farms Union', 'local_farms@example.com', '043-3434-5656', 'Chungcheongbuk-do, Cheongju-si, Heungdeok-gu, Sabi-ro 50'),
('VEND015', 'Pet Supplies Plus', 'pet_supplies@example.com', '052-5656-7878', 'Ulsan, Nam-gu, Samsan-ro 100'),
('VEND016', 'Stationery Kingdom', 'stationery_k@example.com', '033-7878-9090', 'Gangwon-do, Chuncheon-si, Gyeongchun-ro 800'),
('VEND017', 'Beauty & Personal Care', 'beauty_pc@example.com', '064-0101-2323', 'Jeju-do, Jeju-si, Nohyeong-dong 700'),
('VEND018', 'Electronics Hub', 'electronics_h@example.com', '044-2323-4545', 'Sejong Special Self-Governing City, Hansol-dong 150'),
('VEND019', 'Publishing House', 'publishing_h@example.com', '031-4545-6767', 'Gyeonggi-do, Bucheon-si, Wonmi-gu, Jung-dong 100'),
('VEND020', 'Outdoor Gear Solutions', 'outdoor_gear@example.com', '02-6767-8989', 'Seoul, Yongsan-gu, Itaewon-ro 200'),
('VEND021', 'Sporting Goods Co.', 'sporting_goods@example.com', '054-8989-0101', 'Gyeongsangbuk-do, Gyeongju-si, Poseok-ro 300');


-- 4. Product (상품 정보)
INSERT INTO Product (product_UPC, product_name, brand, package_type, size, price) VALUES
('8801234567890', 'Choco Pie', 'Orion', 'Box', '12pcs', 4.50),
('8809876543210', 'Coca-Cola', 'Coca-Cola', 'Bottle', '500ml', 1.80),
('8801111222233', 'Milk', 'Seoul Milk', 'Carton', '1L', 2.50),
('8805555666677', 'Coffee', 'Maxim', 'Stick', '20sticks', 7.00),
('8807777888899', 'Ramen', 'Nongshim', 'Cup', '100g', 1.20),
('8801010101010', 'Snack A', 'BrandX', 'Bag', '50g', 1.00),
('8802020202020', 'Beverage B', 'BrandY', 'Can', '355ml', 1.50),
('8803030303030', 'Candy C', 'BrandZ', 'Bag', '80g', 0.80),
('8804040404040', 'Water', 'Samdasoo', 'Bottle', '2L', 2.00),
('8806060606060', 'Juice D', 'BrandA', 'Carton', '1L', 3.00),
('8809090909090', 'Bread E', 'BrandB', 'Loaf', '400g', 3.50),
('8801357924680', 'Instant Coffee', 'Nescafe', 'Jar', '100g', 6.00),
('8802468013579', 'Green Tea', 'Dongsuh', 'Bag', '50ea', 4.00),
('8809753108642', 'Energy Drink', 'Hot6', 'Can', '250ml', 1.00),
('8808642097531', 'Cookie Set', 'Lotte', 'Box', '8pcs', 3.20),
('8807531086429', 'Soap Bar', 'LG', 'Bar', '100g', 1.50),
('8806420975318', 'Toothbrush', 'Oral-B', 'Each', '1ea', 2.00),
('8805310864297', 'Notebook', 'Monami', 'Each', '1ea', 2.50),
('8804209753186', 'Pen Set', 'Pilot', 'Set', '3ea', 3.00),
('8803186429750', 'Chips', 'Pringles', 'Can', '110g', 2.70),
('8802975318642', 'Cereal', 'Post', 'Box', '500g', 5.50),
('8801864297530', 'Yogurt', 'Binggrae', 'Cup', '150g', 1.00);

-- 5. Supplies (공급 정보) 
INSERT INTO Supplies (vendor_id, product_UPC) VALUES
('VEND001', '8801234567890'), ('VEND001', '8801010101010'), ('VEND001', '8802020202020'), ('VEND001', '8803030303030'),
('VEND001', '8804040404040'), ('VEND001', '8806060606060'), ('VEND001', '8807777888899'), ('VEND001', '8809090909090'),
('VEND001', '8801357924680'), ('VEND001', '8802468013579'),
('VEND002', '8809876543210'), ('VEND002', '8801010101010'), ('VEND002', '8802020202020'), ('VEND002', '8803030303030'),
('VEND002', '8804040404040'), ('VEND002', '8805555666677'), ('VEND002', '8806060606060'), ('VEND002', '8809090909090'),
('VEND002', '8809753108642'), ('VEND002', '8808642097531'),
('VEND003', '8801111222233'), ('VEND003', '8801234567890'), ('VEND003', '8804040404040'), ('VEND003', '8805555666677'),
('VEND003', '8807777888899'), ('VEND003', '8809876543210'), ('VEND003', '8801010101010'), ('VEND003', '8802020202020'),
('VEND003', '8802975318642'), ('VEND003', '8801864297530'),
('VEND004', '8801234567890'), ('VEND004', '8809876543210'), ('VEND004', '8801111222233'), ('VEND004', '8805555666677'),
('VEND004', '8807777888899'), ('VEND004', '8801010101010'), ('VEND004', '8802020202020'), ('VEND004', '8803030303030'),
('VEND004', '8804040404040'), ('VEND004', '8806060606060'), ('VEND004', '8809090909090'), ('VEND004', '8801357924680'),
('VEND004', '8802468013579'), ('VEND004', '8809753108642'), ('VEND004', '8808642097531'), ('VEND004', '8803186429750'),
('VEND005', '8801234567890'), ('VEND005', '8801111222233'), ('VEND005', '8802020202020'), ('VEND005', '8803030303030'),
('VEND005', '8804040404040'), ('VEND005', '8805555666677'), ('VEND005', '8806060606060'), ('VEND005', '8807777888899'),
('VEND005', '8809090909090'), ('VEND005', '8807531086429'), ('VEND005', '8806420975318'), ('VEND005', '8805310864297'),
('VEND006', '8807777888899'), ('VEND006', '8801010101010'), ('VEND007', '8809876543210'), ('VEND007', '8809753108642'),
('VEND008', '8803030303030'), ('VEND008', '8808642097531'), ('VEND009', '8801111222233'), ('VEND009', '8802468013579'),
('VEND010', '8804040404040'), ('VEND011', '8809090909090'), ('VEND012', '8801234567890'), ('VEND013', '8807531086429'),
('VEND014', '8804040404040'), ('VEND015', '8806420975318'), ('VEND016', '8805310864297'), ('VEND017', '8806420975318'),
('VEND018', '8804209753186'), ('VEND019', '8805310864297'), ('VEND020', '8803186429750'), ('VEND021', '8802975318642');


-- 6. Inventory (재고 정보)
INSERT INTO Inventory (product_UPC, store_id, inventory_level, reorder_threshold, reorder_quantity, last_order_date) VALUES
('8801234567890', 'STR001', 15, 10, 20, '2025-05-20'), ('8809876543210', 'STR001', 3, 5, 30, '2025-05-20'),
('8805555666677', 'STR001', 8, 10, 20, '2025-05-21'), ('8801010101010', 'STR001', 25, 10, 15, '2025-05-22'),
('8802020202020', 'STR001', 18, 5, 20, '2025-05-23'), ('8804040404040', 'STR001', 5, 10, 10, '2025-05-24'),
('8801357924680', 'STR001', 10, 5, 10, '2025-05-25'), ('8802468013579', 'STR001', 12, 5, 15, '2025-05-26'),

('8809876543210', 'STR002', 12, 5, 20, '2025-05-20'), ('8801111222233', 'STR002', 4, 5, 50, '2025-05-21'),
('8807777888899', 'STR002', 20, 10, 10, '2025-05-22'), ('8801234567890', 'STR002', 8, 10, 15, '2025-05-23'),
('8803030303030', 'STR002', 30, 5, 10, '2025-05-24'), ('8806060606060', 'STR002', 15, 5, 20, '2025-05-25'),
('8809753108642', 'STR002', 6, 5, 10, '2025-05-26'), ('8808642097531', 'STR002', 10, 5, 10, '2025-05-27'),

('8801111222233', 'STR003', 0, 5, 50, '2025-05-20'), ('8801234567890', 'STR003', 22, 10, 20, '2025-05-21'),
('8805555666677', 'STR003', 15, 10, 20, '2025-05-22'), ('8807777888899', 'STR003', 10, 10, 10, '2025-05-23'),
('8804040404040', 'STR003', 12, 10, 10, '2025-05-24'), ('8809090909090', 'STR003', 7, 5, 15, '2025-05-25'),
('8807531086429', 'STR003', 2, 5, 10, '2025-05-26'), ('8806420975318', 'STR003', 8, 5, 10, '2025-05-27'),

('8805555666677', 'STR004', 25, 10, 20, '2025-05-20'), ('8801010101010', 'STR004', 10, 10, 15, '2025-05-21'),
('8809876543210', 'STR004', 7, 5, 30, '2025-05-22'), ('8807777888899', 'STR004', 18, 10, 10, '2025-05-23'),
('8802020202020', 'STR004', 10, 5, 20, '2025-05-24'), ('8803186429750', 'STR004', 5, 5, 10, '2025-05-25'),
('8802975318642', 'STR004', 15, 10, 20, '2025-05-26'), ('8801864297530', 'STR004', 12, 5, 15, '2025-05-27'),

('8801234567890', 'STR005', 10, 10, 20, '2025-05-20'), ('8801111222233', 'STR005', 15, 5, 50, '2025-05-21'),
('8803030303030', 'STR005', 5, 5, 10, '2025-05-22'), ('8806060606060', 'STR005', 8, 5, 20, '2025-05-23'),
('8809090909090', 'STR005', 1, 5, 15, '2025-05-24'), ('8804209753186', 'STR005', 10, 5, 10, '2025-05-25'),
('8805310864297', 'STR005', 7, 5, 10, '2025-05-26'), ('8807531086429', 'STR005', 3, 5, 5, '2025-05-27'),

('8801234567890', 'STR006', 20, 10, 20, '2025-05-28'), ('8809876543210', 'STR006', 15, 5, 30, '2025-05-29'),
('8805555666677', 'STR007', 10, 10, 20, '2025-05-28'), ('8801111222233', 'STR008', 5, 5, 50, '2025-05-29'),
('8807777888899', 'STR009', 25, 10, 10, '2025-05-30'), ('8801010101010', 'STR010', 12, 10, 15, '2025-05-31'),
('8802020202020', 'STR011', 20, 5, 20, '2025-06-01'), ('8803030303030', 'STR012', 35, 5, 10, '2025-06-02'),
('8804040404040', 'STR013', 15, 10, 10, '2025-06-03'), ('8806060606060', 'STR014', 10, 5, 20, '2025-06-04'),
('8809090909090', 'STR015', 5, 5, 15, '2025-06-05'), ('8801357924680', 'STR016', 8, 5, 10, '2025-06-06'),
('8802468013579', 'STR017', 18, 5, 15, '2025-06-07'), ('8809753108642', 'STR018', 3, 5, 10, '2025-06-08'),
('8808642097531', 'STR019', 7, 5, 10, '2025-06-09'), ('8807531086429', 'STR020', 1, 5, 10, '2025-06-10'),
('8806420975318', 'STR021', 10, 5, 10, '2025-06-11');


-- 7. Sale_transaction (거래 정보) 
INSERT INTO Sale_transaction (transaction_id, store_id, loyalty_id, transaction_date, total_amount, payment_method) VALUES
('TRN00001', 'STR001', 'CUST001', '2025-05-15 10:00:00', 10.50, 'card'),
('TRN00002', 'STR001', NULL, '2025-05-16 11:30:00', 5.00, 'cash'),
('TRN00003', 'STR002', 'CUST003', '2025-05-17 14:00:00', 8.20, 'online'),
('TRN00004', 'STR003', NULL, '2025-05-18 16:00:00', 18.00, 'card'),
('TRN00005', 'STR001', 'CUST001', '2025-05-19 09:00:00', 7.40, 'cash'),
('TRN00006', 'STR004', 'CUST005', '2025-05-20 13:00:00', 20.00, 'card'),
('TRN00007', 'STR005', NULL, '2025-05-21 17:00:00', 6.00, 'online'),
('TRN00008', 'STR001', 'CUST003', '2025-06-01 10:00:00', 15.00, 'card'),
('TRN00009', 'STR002', NULL, '2025-06-02 11:00:00', 9.00, 'cash'),
('TRN00010', 'STR003', 'CUST001', '2025-06-03 14:00:00', 11.00, 'online'),
('TRN00011', 'STR001', 'CUST005', '2025-06-04 15:00:00', 8.50, 'card'),
('TRN00012', 'STR002', 'CUST003', '2025-06-05 16:00:00', 6.90, 'cash'),
('TRN00013', 'STR004', NULL, '2025-06-06 12:00:00', 18.00, 'online'),
('TRN00014', 'STR005', 'CUST001', '2025-06-07 10:00:00', 11.50, 'card'),
('TRN00015', 'STR001', 'CUST003', '2025-06-08 11:00:00', 22.50, 'cash'),
('TRN00016', 'STR006', 'CUST002', '2025-06-08 13:00:00', 7.00, 'card'),
('TRN00017', 'STR007', NULL, '2025-06-09 10:30:00', 12.00, 'cash'),
('TRN00018', 'STR008', 'CUST004', '2025-06-10 14:00:00', 9.50, 'online'),
('TRN00019', 'STR009', 'CUST006', '2025-06-11 16:00:00', 14.00, 'card'),
('TRN00020', 'STR010', NULL, '2025-06-12 09:00:00', 5.00, 'cash'),
('TRN00021', 'STR001', 'CUST001', '2025-06-13 10:00:00', 10.00, 'card'),
('TRN00022', 'STR002', 'CUST003', '2025-06-13 11:00:00', 7.00, 'online');


-- 8. Sale_Item (거래 품목) 
INSERT INTO Sale_Item (transaction_id, product_UPC, quantity, price_at_sale) VALUES
('TRN00001', '8801234567890', 2, 9.00), ('TRN00001', '8809876543210', 1, 1.50),
('TRN00002', '8805555666677', 1, 5.00),
('TRN00003', '8809876543210', 3, 5.40), ('TRN00003', '8801111222233', 1, 2.80),
('TRN00004', '8801234567890', 4, 18.00),
('TRN00005', '8805555666677', 1, 7.00), ('TRN00005', '8803030303030', 3, 2.40),
('TRN00006', '8805555666677', 2, 14.00), ('TRN00006', '8801010101010', 6, 6.00),
('TRN00007', '8801111222233', 2, 5.00), ('TRN00007', '8807777888899', 1, 1.00),
('TRN00008', '8801234567890', 3, 13.50), ('TRN00008', '8809876543210', 1, 1.50),
('TRN00009', '8809876543210', 5, 9.00),
('TRN00010', '8801111222233', 2, 5.00), ('TRN00010', '8807777888899', 5, 6.00),
('TRN00011', '8805555666677', 1, 7.00), ('TRN00011', '8802020202020', 1, 1.50),
('TRN00012', '8801234567890', 1, 4.50), ('TRN00012', '8803030303030', 3, 2.40),
('TRN00013', '8805555666677', 2, 14.00), ('TRN00013', '8801010101010', 4, 4.00),
('TRN00014', '8801111222233', 3, 7.50), ('TRN00014', '8804040404040', 2, 4.00),
('TRN00015', '8801234567890', 5, 22.50),
('TRN00016', '8807777888899', 3, 3.60), ('TRN00016', '8801010101010', 3, 3.00),
('TRN00017', '8809876543210', 4, 7.20), ('TRN00017', '8801111222233', 2, 5.00),
('TRN00018', '8803030303030', 5, 4.00), ('TRN00018', '8806060606060', 1, 3.00),
('TRN00019', '8801234567890', 2, 9.00), ('TRN00019', '8805555666677', 1, 7.00),
('TRN00020', '8804040404040', 2, 4.00), ('TRN00020', '8803030303030', 1, 0.80),
('TRN00021', '8801234567890', 1, 4.50), ('TRN00021', '8805555666677', 1, 7.00), ('TRN00021', '8809876543210', 1, 1.80),
('TRN00022', '8805555666677', 1, 7.00);

