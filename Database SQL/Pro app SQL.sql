create database proapp;
use proapp;
create table CUSTOMER (
CID CHAR(8) NOT NULL PRIMARY KEY,
Name CHAR(40) NOT NULL,
Email CHAR(40) NOT NULL UNIQUE,
Phone_Number CHAR(15) NOT NULL,
Address CHAR(100) NOT NULL);

INSERT INTO CUSTOMER (CID, Name, Email, Phone_Number, Address) VALUES
(10000001, 'Linda Herman', 'ryansmith@hotmail.com', '3566409043', '04535 Roberto Trail Apt. 877\nSouth Scott, GA 26934'),
(10000002, 'Brandon Allison', 'walkerkatrina@ramirez.com', '3400974744', '162 Michelle Cliffs Apt. 862\nHeatherstad, WV 54429'),
(10000003, 'Robert Craig', 'jacksonsandra@yahoo.com', '1059367255', '0929 Ryan Pine\nSoliston, KY 31837'),
(10000004, 'Robert Patterson', 'lcontreras@giles.com', '17735465253', '47526 Williams Hollow\nSouth Jimmyfurt, IL 29543'),
(10000005, 'Karen Church', 'bwhite@hotmail.com', '0659476927', '901 Moore Trace\nEdwardsville, KS 68523'),
(10000006, 'Nicole Trujillo', 'fvaughn@vasquez.org', '9336075569', '245 Winters Course\nGillburgh, LA 54037'),
(10000007, 'Dustin Rogers', 'unorman@hotmail.com', '13593685700', '9137 White Pike Apt. 274\nNorrisfort, RI 27474'),
(10000008, 'Roger Black', 'craigshawn@barajas-browning.net', '4392453886', '61223 Garcia Glen Suite 992\nWest Peterton, RI 99799'),
(10000009, 'Carol Day', 'michaelsanford@curry-bowers.info', '4235849688', 'PSC 3492, Box 2652\nAPO AP 06174'),
(10000010, 'Zachary Rich', 'agrimes@harper.info', '2404993028', '0367 Hurley Haven Suite 824\nNorth Charlesside, MI 87684'),
(10000011, 'Erin Phillips', 'ewaters@hotmail.com', '3744827255', '07479 Cooper Hollow Suite 195\nAveryland, PA 56819'),
(10000012, 'Kimberly Fleming', 'wturner@bryant.org', '3990400204', '0788 Michael Stream\nEast Thomasmouth, TX 54510'),
(10000013, 'Kristen Dickerson', 'bjones@jenkins.com', '7291196309', '5784 Santiago Fall Apt. 922\nPort Amyport, AL 09353'),
(10000014, 'Deborah Sullivan', 'vbaker@wells.com', '1378381950', '90537 Joshua Plain Suite 057\nPort Shawnton, FL 44860'),
(10000015, 'Keith Mitchell', 'kimberly30@oliver.com', '6746783547', '6906 Mccarthy Estates\nJuliebury, AR 57220');
SELECT * FROM CUSTOMER;
create table TRADESPERSON (
TID CHAR(8) NOT NULL PRIMARY KEY,
Name CHAR(40) NOT NULL,
Email CHAR(40) NOT NULL UNIQUE,
Phone_Number CHAR(15) NOT NULL,
Address CHAR(100) NOT NULL);

INSERT INTO TRADESPERSON (TID, Name, Email, Phone_Number, Address) VALUES
('20000001', 'John Smith', 'johnsmith@example.com', '1234567890', '123 Main St, Springfield, IL'),
('20000002', 'Alice Johnson', 'alicejohnson@example.com', '0987654321', '456 Elm St, Austin, TX'),
('20000003', 'Bob Williams', 'bobwilliams@example.com', '9876543210', '789 Oak St, Miami, FL'),
('20000004', 'Emily Davis', 'emilydavis@example.com', '6543210987', '321 Pine St, Denver, CO'),
('20000005', 'Michael Brown', 'michaelbrown@example.com', '3216549870', '654 Cedar St, Boston, MA'),
('20000006', 'Jessica Wilson', 'jessicawilson@example.com', '8527419630', '852 Maple St, Seattle, WA'),
('20000007', 'Daniel Moore', 'danielmoore@example.com', '9638527410', '951 Birch St, Phoenix, AZ'),
('20000008', 'Sophia Taylor', 'sophiataylor@example.com', '7539518520', '357 Walnut St, Chicago, IL'),
('20000009', 'David Anderson', 'davidanderson@example.com', '1593572840', '159 Chestnut St, Dallas, TX'),
('20000010', 'Grace Thomas', 'gracethomas@example.com', '7531598426', '258 Spruce St, Atlanta, GA'),
('20000011', 'Jacob Harris', 'jacobharris@example.com', '8529637410', '951 Redwood St, San Francisco, CA'),
('20000012', 'Isabella Clark', 'isabellaclark@example.com', '9518527416', '357 Cypress St, New York, NY'),
('20000013', 'James Lewis', 'jameslewis@example.com', '1597534860', '159 Fir St, Los Angeles, CA'),
('20000014', 'Olivia Martin', 'oliviamartin@example.com', '7531598642', '258 Poplar St, Houston, TX'),
('20000015', 'William Lee', 'williamlee@example.com', '8527419635', '951 Palm St, Philadelphia, PA');

SELECT * FROM TRADESPERSON;

create table SUPPLIER (
SID CHAR(8) NOT NULL PRIMARY KEY,
Company_Name CHAR(40) NOT NULL,
Contact_Person CHAR(40) NOT NULL,
Email CHAR(100) NOT NULL UNIQUE,
Phone_Number CHAR(15) NOT NULL,
Address CHAR(100) NOT NULL,
Industry VARCHAR(40) NOT NULL);

INSERT INTO SUPPLIER (SID, Company_Name, Contact_Person, Email, Phone_Number, Address, Industry) VALUES
('30000001', 'Global Supplies', 'John Doe', 'johndoe@globalsupplies.com', '1234567890', '123 Market St, Springfield, IL', 'Retail'),
('30000002', 'Tech Innovators', 'Alice Smith', 'alicesmith@techinnovators.com', '0987654321', '456 Innovation Blvd, Austin, TX', 'Technology'),
('30000003', 'Green Energy Solutions', 'Bob Johnson', 'bobjohnson@greenenergy.com', '9876543210', '789 Solar Way, Miami, FL', 'Energy'),
('30000004', 'Blue Ocean Trading', 'Emily White', 'emilywhite@blueoceantrading.com', '6543210987', '321 Harbor St, Denver, CO', 'Trading'),
('30000005', 'Peak Performance Equipment', 'Michael Brown', 'michaelbrown@peakperformance.com', '3216549870', '654 Mountain Rd, Boston, MA', 'Manufacturing'),
('30000006', 'Urban Builders', 'Jessica Green', 'jessicagreen@urbanbuilders.com', '8527419630', '852 City Ave, Seattle, WA', 'Construction'),
('30000007', 'EcoFriendly Packaging', 'Daniel Black', 'danielblack@ecofriendlypackaging.com', '9638527410', '951 Recycle Ln, Phoenix, AZ', 'Packaging'),
('30000008', 'Smart Home Tech', 'Sophia Blue', 'sophiablue@smarthometech.com', '7539518520', '357 Automation St, Chicago, IL', 'Technology'),
('30000009', 'Clear Water Corp', 'David Green', 'davidgreen@clearwater.com', '1593572840', '159 River Rd, Dallas, TX', 'Water Treatment'),
('30000010', 'Global Foods', 'Grace King', 'graceking@globalfoods.com', '7531598426', '258 Gourmet Ave, Atlanta, GA', 'Food'),
('30000011', 'Prime Electronics', 'Jacob White', 'jacobwhite@primeelectronics.com', '8529637410', '951 Circuit St, San Francisco, CA', 'Electronics'),
('30000012', 'Urban Fashion', 'Isabella Brown', 'isabellabrown@urbanfashion.com', '9518527416', '357 Style St, New York, NY', 'Fashion'),
('30000013', 'Fast Logistics', 'James Stone', 'jamesstone@fastlogistics.com', '1597534860', '159 Cargo Ln, Los Angeles, CA', 'Logistics'),
('30000014', 'Pro Builders', 'Olivia Green', 'oliviagreen@probuilders.com', '7531598642', '258 Contractor Blvd, Houston, TX', 'Construction'),
('30000015', 'NextGen Materials', 'William Red', 'williamred@nextgenmaterials.com', '8527419635', '951 Industrial St, Philadelphia, PA', 'Materials');
SELECT * FROM SUPPLIER;

create table TASK (
Task_Id CHAR(8) NOT NULL PRIMARY KEY,              
Description CHAR(255) NOT NULL,       
Budget DECIMAL(10, 2) NOT NULL,       
Quote_fee DECIMAL(10, 2) NOT NULL, 
Request_Date DATE NOT NULL);

INSERT INTO TASK (Task_Id, Description, Budget, Quote_fee, Request_Date) VALUES
('40000001', 'Fix plumbing in the bathroom', 3750000.00, 25000.00, '2024-01-15'),
('40000002', 'Install new lighting in the kitchen', 7500000.00, 25000.00, '2024-01-20'),
('40000003', 'Paint the living room', 4500000.00, 25000.00, '2024-01-25'),
('40000004', 'Build a new deck in the backyard', 18000000.00, 25000.00, '2024-02-01'),
('40000005', 'Install security cameras', 12000000.00, 25000.00, '2024-02-10'),
('40000006', 'Repair roof leaks', 14250000.00, 25000.00, '2024-02-15'),
('40000007', 'Replace kitchen cabinets', 22500000.00, 25000.00, '2024-02-20'),
('40000008', 'Tile the bathroom floor', 9000000.00, 25000.00, '2024-02-25'),
('40000009', 'Install hardwood flooring in the living room', 27000000.00, 25000.00, '2024-03-01'),
('40000010', 'Assemble furniture', 3000000.00, 25000.00, '2024-03-05'),
('40000011', 'Fix electrical outlets', 2250000.00, 25000.00, '2024-03-10'),
('40000012', 'Install a new fence', 15000000.00, 25000.00, '2024-03-15'),
('40000013', 'Repair broken windows', 6750000.00, 25000.00, '2024-03-20'),
('40000014', 'Install sprinkler system', 13500000.00, 25000.00, '2024-03-25'),
('40000015', 'Landscape the front yard', 30000000.00, 25000.00, '2024-03-30');
SELECT * FROM TASK;

create table BID (
Bid_Id CHAR(8) NOT NULL PRIMARY KEY,                     
Task_Id CHAR(8),                                
TID CHAR(8),                                    
Bid_Amount DECIMAL(10, 2) NOT NULL,         
Bid_Date DATE NOT NULL,                     
Bid_Status CHAR(20) NOT NULL,
FOREIGN KEY (Task_Id) REFERENCES TASK(Task_Id),
FOREIGN KEY (TID) REFERENCES TRADESPERSON(TID));

INSERT INTO BID (Bid_Id, Task_Id, TID, Bid_Amount, Bid_Date, Bid_Status) VALUES
('50000001', '40000001', '20000001', 3000000.00, '2024-01-16', 'Pending'),
('50000002', '40000002', '20000002', 6000000.00, '2024-01-21', 'Accepted'),
('50000003', '40000003', '20000003', 4000000.00, '2024-01-26', 'Rejected'),
('50000004', '40000004', '20000004', 14000000.00, '2024-02-02', 'Pending'),
('50000005', '40000005', '20000005', 9000000.00, '2024-02-11', 'Accepted'),
('50000006', '40000006', '20000006', 10500000.00, '2024-02-16', 'Pending'),
('50000007', '40000007', '20000007', 17500000.00, '2024-02-21', 'Rejected'),
('50000008', '40000008', '20000008', 8000000.00, '2024-02-26', 'Pending'),
('50000009', '40000009', '20000009', 22000000.00, '2024-03-02', 'Accepted'),
('50000010', '40000010', '20000010', 2500000.00, '2024-03-06', 'Pending'),
('50000011', '40000011', '20000011', 1800000.00, '2024-03-11', 'Pending'),
('50000012', '40000012', '20000012', 12500000.00, '2024-03-16', 'Rejected'),
('50000013', '40000013', '20000013', 5500000.00, '2024-03-21', 'Accepted'),
('50000014', '40000014', '20000014', 11500000.00, '2024-03-26', 'Pending'),
('50000015', '40000015', '20000015', 26000000.00, '2024-03-31', 'Accepted');
SELECT * FROM BID;

create table PROJECT (
Project_Id CHAR(8) NOT NULL PRIMARY KEY,
Description CHAR(255) NOT NULL,
Quote_fee DECIMAL(10, 2) NOT NULL,
Budget DECIMAL(10, 2) NOT NULL,
Request_Date DATE NOT NULL);

INSERT INTO PROJECT (Project_Id, Description, Quote_fee, Budget, Request_Date) VALUES
('60000001', 'Renovate kitchen', 25000.00, 15000000.00, '2024-01-10'),
('60000002', 'Build a new garage', 25000.00, 20000000.00, '2024-01-15'),
('60000003', 'Install solar panels', 25000.00, 12000000.00, '2024-01-20'),
('60000004', 'Remodel bathroom', 25000.00, 8000000.00, '2024-01-25'),
('60000005', 'Construct a swimming pool', 25000.00, 30000000.00, '2024-02-01'),
('60000006', 'Add a guest house', 25000.00, 18000000.00, '2024-02-05'),
('60000007', 'Replace windows throughout the house', 25000.00, 10000000.00, '2024-02-10'),
('60000008', 'Build a fence around the property', 25000.00, 7000000.00, '2024-02-15'),
('60000009', 'Install smart home system', 25000.00, 5000000.00, '2024-02-20'),
('60000010', 'Repaint the exterior of the house', 25000.00, 4000000.00, '2024-02-25'),
('60000011', 'Design and landscape the garden', 25000.00, 15000000.00, '2024-03-01'),
('60000012', 'Add a second floor to the house', 25000.00, 25000000.00, '2024-03-05'),
('60000013', 'Expand the living room', 25000.00, 12000000.00, '2024-03-10'),
('60000014', 'Upgrade the plumbing system', 25000.00, 9000000.00, '2024-03-15'),
('60000015', 'Install an outdoor kitchen', 25000.00, 8500000.00, '2024-03-20');
SELECT * FROM PROJECT;

create table SUPPLY (
Supply_Id CHAR(8) NOT NULL PRIMARY KEY,
Description CHAR(255) NOT NULL,
Cost DECIMAL(10, 2) NOT NULL);

INSERT INTO SUPPLY (Supply_Id, Description, Cost) VALUES
('70000001', 'Cement Bags (50kg)', 50000.00),
('70000002', 'Wood Planks (per piece)', 75000.00),
('70000003', 'Electrical Wiring (per meter)', 20000.00),
('70000004', 'Roofing Sheets (per piece)', 150000.00),
('70000005', 'Bricks (per 100 units)', 100000.00),
('70000006', 'PVC Pipes (per meter)', 50000.00),
('70000007', 'Tiles (per square meter)', 90000.00),
('70000008', 'Glass Windows (per square meter)', 300000.00),
('70000009', 'Paint (20L can)', 250000.00),
('70000010', 'Nails (per kg)', 20000.00),
('70000011', 'Steel Bars (per meter)', 120000.00),
('70000012', 'Sand (per cubic meter)', 150000.00),
('70000013', 'Gravel (per cubic meter)', 180000.00),
('70000014', 'Concrete Mix (per cubic meter)', 250000.00),
('70000015', 'Doors (per unit)', 350000.00);
SELECT * FROM SUPPLY;

create table MEMBERSHIP (
Membership_Id CHAR(8) NOT NULL PRIMARY KEY,
Membership_Name CHAR(100) NOT NULL);

INSERT INTO MEMBERSHIP (Membership_Id, Membership_Name) VALUES
('80000001', 'Basic Membership'),
('80000002', 'Standard Membership'),
('80000003', 'Premium Membership'),
('80000004', 'Gold Membership'),
('80000005', 'Platinum Membership'),
('80000006', 'Enterprise Membership'),
('80000007', 'Freelancer Membership'),
('80000008', 'Small Business Membership'),
('80000009', 'Corporate Membership'),
('80000010', 'Non-Profit Membership'),
('80000011', 'Educational Membership'),
('80000012', 'Healthcare Membership'),
('80000013', 'VIP Membership'),
('80000014', 'Exclusive Membership'),
('80000015', 'Partner Membership');
SELECT * FROM MEMBERSHIP;

create table PROVIDER (
Provider_Id CHAR(8) NOT NULL PRIMARY KEY,
Provider_Name CHAR(40) NOT NULL,
Contact_Person CHAR(40) NOT NULL,
Email CHAR(40) NOT NULL UNIQUE,
Phone_Number CHAR(15) NOT NULL,
Address CHAR(100) NOT NULL,
Service_type CHAR(50) NOT NULL);

INSERT INTO PROVIDER (Provider_Id, Provider_Name, Contact_Person, Email, Phone_Number, Address, Service_type) VALUES
('90000001', 'SkillUp Training', 'John Doe', 'johndoe@skillup.com', '1234567890', '123 Main St, Springfield, IL', 'Training'),
('90000002', 'Certify Now', 'Alice Johnson', 'alicej@certifynow.com', '0987654321', '456 Elm St, Austin, TX', 'Skill Assessment'),
('90000003', 'Pro Skills Academy', 'Bob Smith', 'bobsmith@proskills.com', '9876543210', '789 Oak St, Miami, FL', 'Training'),
('90000004', 'Elite Certifications', 'Emily White', 'emilywhite@elitecert.com', '6543210987', '321 Pine St, Denver, CO', 'Skill Assessment'),
('90000005', 'Next Level Learning', 'Michael Brown', 'michaelbrown@nll.com', '3216549870', '654 Cedar St, Boston, MA', 'Training'),
('90000006', 'CertPro Services', 'Jessica Green', 'jgreen@certpro.com', '8527419630', '852 Maple St, Seattle, WA', 'Skill Assessment'),
('90000007', 'TechCert Academy', 'Daniel Moore', 'danielmoore@techcert.com', '9638527410', '951 Birch St, Phoenix, AZ', 'Training'),
('90000008', 'Professional Growth', 'Sophia Taylor', 'sophiataylor@progrowth.com', '7539518520', '357 Walnut St, Chicago, IL', 'Training'),
('90000009', 'Assessment Hub', 'David Anderson', 'davidanderson@assessmenthub.com', '1593572840', '159 Chestnut St, Dallas, TX', 'Skill Assessment'),
('90000010', 'SkillCerts', 'Grace Thomas', 'gracethomas@skillcerts.com', '7531598426', '258 Spruce St, Atlanta, GA', 'Training'),
('90000011', 'ProCert', 'Jacob Harris', 'jacobharris@procert.com', '8529637410', '951 Redwood St, San Francisco, CA', 'Skill Assessment'),
('90000012', 'Certified Solutions', 'Isabella Clark', 'isabellaclark@certsolutions.com', '9518527416', '357 Cypress St, New York, NY', 'Training'),
('90000013', 'Academy of Skills', 'James Lewis', 'jameslewis@academyofskills.com', '1597534860', '159 Fir St, Los Angeles, CA', 'Skill Assessment'),
('90000014', 'GrowthCert', 'Olivia Martin', 'oliviamartin@growthcert.com', '7531598642', '258 Poplar St, Houston, TX', 'Training'),
('90000015', 'CertMasters', 'William Lee', 'williamlee@certmasters.com', '8527419635', '951 Palm St, Philadelphia, PA', 'Skill Assessment');
SELECT * FROM PROVIDER;

create table CERTIFICATE (
Certificate_Id CHAR(9) NOT NULL PRIMARY KEY,
Certificate_Name CHAR(100) NOT NULL,
Provider_Id CHAR(8),
FOREIGN KEY (Provider_Id) REFERENCES PROVIDER(Provider_Id));

INSERT INTO CERTIFICATE (Certificate_Id, Certificate_Name, Provider_Id) VALUES
('110000001', 'Advanced Plumbing Certification', '90000001'),
('110000002', 'Electrician Level 1 Certification', '90000002'),
('110000003', 'HVAC Specialist Certification', '90000003'),
('110000004', 'Carpentry Master Certification', '90000004'),
('110000005', 'Certified Home Renovator', '90000005'),
('110000006', 'Painting & Decorating Certification', '90000006'),
('110000007', 'Roofing Specialist Certification', '90000007'),
('110000008', 'Landscaping Professional Certification', '90000008'),
('110000009', 'Certified Solar Panel Installer', '90000009'),
('110000010', 'Smart Home Installation Certification', '90000010'),
('110000011', 'Certified Construction Manager', '90000011'),
('110000012', 'Interior Design Certification', '90000012'),
('110000013', 'Certified Masonry Specialist', '90000013'),
('110000014', 'Waterproofing Specialist Certification', '90000014'),
('110000015', 'Certified Green Builder', '90000015');
SELECT * FROM CERTIFICATE;

create table TASK_TRADESPERSON_TRANSACTION (
Task_Id CHAR(8),
TID CHAR(8),
Start_Date DATE NOT NULL,
Completion_Date DATE,
Transaction_Status CHAR(20) NOT NULL,
Transaction_Amount DECIMAL(10, 2) NOT NULL,
Transaction_Fee DECIMAL(10, 2) NOT NULL,
Tradesperson_rating INT CHECK (Tradesperson_rating BETWEEN 1 AND 5),
Customer_rating INT CHECK (Customer_rating BETWEEN 1 AND 5),
FOREIGN KEY (Task_Id) REFERENCES TASK(Task_Id),
FOREIGN KEY (TID) REFERENCES TRADESPERSON(TID),
PRIMARY KEY (Task_Id, TID));

INSERT INTO TASK_TRADESPERSON_TRANSACTION (Task_Id, TID, Start_Date, Completion_Date, Transaction_Status, Transaction_Amount, Transaction_Fee, Tradesperson_rating, Customer_rating) VALUES
('40000001', '20000001', '2024-01-16', '2024-01-20', 'Completed', 3500000.00, 1750.00, 5, 4),
('40000002', '20000002', '2024-01-21', '2024-01-25', 'Completed', 8000000.00, 4000.00, 4, 5),
('40000003', '20000003', '2024-01-26', '2024-01-30', 'Completed', 5000000.00, 2500.00, 5, 5),
('40000004', '20000004', '2024-02-02', '2024-02-06', 'Completed', 15000000.00, 7500.00, 4, 4),
('40000005', '20000005', '2024-02-11', '2024-02-15', 'Completed', 10000000.00, 5000.00, 3, 4),
('40000006', '20000006', '2024-02-16', '2024-02-20', 'Pending', 12000000.00, 6000.00, NULL, NULL),
('40000007', '20000007', '2024-02-21', '2024-02-25', 'Pending', 18000000.00, 9000.00, NULL, NULL),
('40000008', '20000008', '2024-02-26', '2024-03-01', 'Completed', 9000000.00, 4500.00, 5, 5),
('40000009', '20000009', '2024-03-02', '2024-03-06', 'Completed', 23000000.00, 11500.00, 4, 4),
('40000010', '20000010', '2024-03-06', '2024-03-10', 'Completed', 3500000.00, 1750.00, 4, 5),
('40000011', '20000011', '2024-03-11', '2024-03-15', 'Pending', 2000000.00, 1000.00, NULL, NULL),
('40000012', '20000012', '2024-03-16', '2024-03-20', 'Completed', 13000000.00, 6500.00, 5, 4),
('40000013', '20000013', '2024-03-21', '2024-03-25', 'Completed', 6000000.00, 3000.00, 4, 5),
('40000014', '20000014', '2024-03-26', '2024-03-30', 'Completed', 12500000.00, 6250.00, 5, 5),
('40000015', '20000015', '2024-03-31', '2024-04-04', 'Pending', 27000000.00, 13500.00, NULL, NULL);
SELECT * FROM TASK_TRADESPERSON_TRANSACTION;

create table PROJECT_SUPPLIER_TRANSACTION (
Project_Id CHAR(8),
SID CHAR(8),
Date DATE NOT NULL,
Transaction_Status CHAR(20) NOT NULL,
Transaction_Amount DECIMAL(10, 2) NOT NULL,
Transaction_Fee DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (Project_Id) REFERENCES PROJECT(Project_Id),
FOREIGN KEY (SID) REFERENCES SUPPLIER(SID), 
PRIMARY KEY (Project_Id, SID));

INSERT INTO PROJECT_SUPPLIER_TRANSACTION (Project_Id, SID, Date, Transaction_Status, Transaction_Amount, Transaction_Fee) VALUES
('60000001', '30000001', '2024-01-10', 'Completed', 15000000.00, 7500.00),
('60000002', '30000002', '2024-01-15', 'Completed', 20000000.00, 10000.00),
('60000003', '30000003', '2024-01-20', 'Pending', 12000000.00, 6000.00),
('60000004', '30000004', '2024-01-25', 'Completed', 8000000.00, 4000.00),
('60000005', '30000005', '2024-02-01', 'Completed', 30000000.00, 15000.00),
('60000006', '30000006', '2024-02-05', 'Pending', 18000000.00, 9000.00),
('60000007', '30000007', '2024-02-10', 'Completed', 10000000.00, 5000.00),
('60000008', '30000008', '2024-02-15', 'Pending', 7000000.00, 3500.00),
('60000009', '30000009', '2024-02-20', 'Completed', 5000000.00, 2500.00),
('60000010', '30000010', '2024-02-25', 'Completed', 4000000.00, 2000.00),
('60000011', '30000011', '2024-03-01', 'Completed', 15000000.00, 7500.00),
('60000012', '30000012', '2024-03-05', 'Completed', 25000000.00, 12500.00),
('60000013', '30000013', '2024-03-10', 'Pending', 12000000.00, 6000.00),
('60000014', '30000014', '2024-03-15', 'Completed', 9000000.00, 4500.00),
('60000015', '30000015', '2024-03-20', 'Pending', 8500000.00, 4250.00);
SELECT * FROM PROJECT_SUPPLIER_TRANSACTION;

create table SUPPLIER_SUPPLY_TRANSACTION (
Supply_Id CHAR(8),
SID CHAR(8),
Date DATE NOT NULL,
Transaction_Status CHAR(20) NOT NULL,
Transaction_Amount DECIMAL(10, 2) NOT NULL,
Transaction_Fee DECIMAL(10, 2) NOT NULL,
Supply_Quantity INT NOT NULL,
FOREIGN KEY (Supply_Id) REFERENCES SUPPLY(Supply_Id),
FOREIGN KEY (SID) REFERENCES SUPPLIER(SID),
PRIMARY KEY (SID, Supply_Id));

INSERT INTO SUPPLIER_SUPPLY_TRANSACTION (Supply_Id, SID, Date, Transaction_Status, Transaction_Amount, Transaction_Fee, Supply_Quantity) VALUES
('70000001', '30000001', '2024-01-05', 'Completed', 500000.00, 250.00, 10),
('70000002', '30000002', '2024-01-10', 'Completed', 750000.00, 375.00, 10),
('70000003', '30000003', '2024-01-15', 'Pending', 400000.00, 200.00, 20),
('70000004', '30000004', '2024-01-20', 'Completed', 1500000.00, 750.00, 10),
('70000005', '30000005', '2024-01-25', 'Completed', 1000000.00, 500.00, 10),
('70000006', '30000006', '2024-02-01', 'Pending', 500000.00, 250.00, 5),
('70000007', '30000007', '2024-02-05', 'Completed', 900000.00, 450.00, 10),
('70000008', '30000008', '2024-02-10', 'Pending', 3000000.00, 1500.00, 20),
('70000009', '30000009', '2024-02-15', 'Completed', 2500000.00, 1250.00, 10),
('70000010', '30000010', '2024-02-20', 'Completed', 200000.00, 100.00, 2),
('70000011', '30000011', '2024-02-25', 'Completed', 1200000.00, 600.00, 10),
('70000012', '30000012', '2024-03-01', 'Completed', 1500000.00, 750.00, 12),
('70000013', '30000013', '2024-03-05', 'Pending', 1800000.00, 900.00, 15),
('70000014', '30000014', '2024-03-10', 'Completed', 2500000.00, 1250.00, 10),
('70000015', '30000015', '2024-03-15', 'Pending', 3500000.00, 1750.00, 20);
SELECT * FROM SUPPLIER_SUPPLY_TRANSACTION;

create table TRADESPERSON_MEMBERSHIP (
Membership_Id CHAR(8),
TID CHAR(8),
Membership_Fee DECIMAL(10, 2) NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE,
Membership_Status CHAR(20) NOT NULL,
Membership_Type CHAR(50) NOT NULL,
FOREIGN KEY (TID) REFERENCES TRADESPERSON(TID),
FOREIGN KEY (Membership_Id) REFERENCES MEMBERSHIP(Membership_Id),
PRIMARY KEY (TID, Membership_Id));

INSERT INTO TRADESPERSON_MEMBERSHIP (Membership_Id, TID, Membership_Fee, Start_Date, End_Date, Membership_Status, Membership_Type) VALUES
('80000001', '20000001', 100000.00, '2024-01-01', '2024-12-31', 'Active', 'Basic Membership'),
('80000002', '20000002', 150000.00, '2024-02-01', '2025-01-31', 'Active', 'Standard Membership'),
('80000003', '20000003', 200000.00, '2024-03-01', '2025-02-28', 'Active', 'Premium Membership'),
('80000004', '20000004', 250000.00, '2024-04-01', '2025-03-31', 'Active', 'Gold Membership'),
('80000005', '20000005', 300000.00, '2024-05-01', '2025-04-30', 'Active', 'Platinum Membership'),
('80000006', '20000006', 350000.00, '2024-06-01', '2025-05-31', 'Pending', 'Enterprise Membership'),
('80000007', '20000007', 120000.00, '2024-07-01', '2025-06-30', 'Active', 'Freelancer Membership'),
('80000008', '20000008', 180000.00, '2024-08-01', '2025-07-31', 'Pending', 'Small Business Membership'),
('80000009', '20000009', 220000.00, '2024-09-01', '2025-08-31', 'Active', 'Corporate Membership'),
('80000010', '20000010', 270000.00, '2024-10-01', '2025-09-30', 'Pending', 'Non-Profit Membership'),
('80000011', '20000011', 100000.00, '2024-01-15', '2025-01-14', 'Active', 'Educational Membership'),
('80000012', '20000012', 150000.00, '2024-02-15', '2025-02-14', 'Active', 'Healthcare Membership'),
('80000013', '20000013', 200000.00, '2024-03-15', '2025-03-14', 'Pending', 'VIP Membership'),
('80000014', '20000014', 250000.00, '2024-04-15', '2025-04-14', 'Active', 'Exclusive Membership'),
('80000015', '20000015', 300000.00, '2024-05-15', '2025-05-14', 'Active', 'Partner Membership');
SELECT * FROM TRADESPERSON_MEMBERSHIP;

create table SUPPLIER_MEMBERSHIP (
Membership_Id CHAR(8),
SID CHAR(8),
Membership_Fee DECIMAL(10, 2) NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE,
Membership_Status CHAR(20) NOT NULL,
Membership_Type CHAR(50) NOT NULL,
FOREIGN KEY (SID) REFERENCES SUPPLIER(SID),
FOREIGN KEY (Membership_Id) REFERENCES MEMBERSHIP(Membership_Id),
PRIMARY KEY (SID, Membership_Id));

INSERT INTO SUPPLIER_MEMBERSHIP (Membership_Id, SID, Membership_Fee, Start_Date, End_Date, Membership_Status, Membership_Type) VALUES
('80000001', '30000001', 200000.00, '2024-01-01', '2024-12-31', 'Active', 'Basic Membership'),
('80000002', '30000002', 300000.00, '2024-02-01', '2025-01-31', 'Active', 'Standard Membership'),
('80000003', '30000003', 400000.00, '2024-03-01', '2025-02-28', 'Active', 'Premium Membership'),
('80000004', '30000004', 500000.00, '2024-04-01', '2025-03-31', 'Active', 'Gold Membership'),
('80000005', '30000005', 600000.00, '2024-05-01', '2025-04-30', 'Active', 'Platinum Membership'),
('80000006', '30000006', 250000.00, '2024-06-01', '2025-05-31', 'Pending', 'Enterprise Membership'),
('80000007', '30000007', 220000.00, '2024-07-01', '2025-06-30', 'Active', 'Freelancer Membership'),
('80000008', '30000008', 350000.00, '2024-08-01', '2025-07-31', 'Pending', 'Small Business Membership'),
('80000009', '30000009', 450000.00, '2024-09-01', '2025-08-31', 'Active', 'Corporate Membership'),
('80000010', '30000010', 300000.00, '2024-10-01', '2025-09-30', 'Pending', 'Non-Profit Membership'),
('80000011', '30000011', 280000.00, '2024-01-15', '2025-01-14', 'Active', 'Educational Membership'),
('80000012', '30000012', 340000.00, '2024-02-15', '2025-02-14', 'Active', 'Healthcare Membership'),
('80000013', '30000013', 360000.00, '2024-03-15', '2025-03-14', 'Pending', 'VIP Membership'),
('80000014', '30000014', 500000.00, '2024-04-15', '2025-04-14', 'Active', 'Exclusive Membership'),
('80000015', '30000015', 550000.00, '2024-05-15', '2025-05-14', 'Active', 'Partner Membership');
SELECT * FROM SUPPLIER_MEMBERSHIP;

create table TRADESPERSON_CERTIFICATE (
TID CHAR(8),
Certificate_Id CHAR(9),
Issue_Date DATE NOT NULL,
Expiry_Date DATE,
FOREIGN KEY (TID) REFERENCES TRADESPERSON(TID),
FOREIGN KEY (Certificate_Id) REFERENCES CERTIFICATE(Certificate_Id),
PRIMARY KEY (TID, Certificate_Id));

INSERT INTO TRADESPERSON_CERTIFICATE (TID, Certificate_Id, Issue_Date, Expiry_Date) VALUES
('20000001', '110000001', '2024-01-01', '2026-01-01'),
('20000002', '110000002', '2024-02-01', '2026-02-01'),
('20000003', '110000003', '2024-03-01', '2026-03-01'),
('20000004', '110000004', '2024-04-01', '2026-04-01'),
('20000005', '110000005', '2024-05-01', '2026-05-01'),
('20000006', '110000006', '2024-06-01', '2026-06-01'),
('20000007', '110000007', '2024-07-01', '2026-07-01'),
('20000008', '110000008', '2024-08-01', '2026-08-01'),
('20000009', '110000009', '2024-09-01', '2026-09-01'),
('20000010', '110000010', '2024-10-01', '2026-10-01'),
('20000011', '110000011', '2024-11-01', '2026-11-01'),
('20000012', '110000012', '2024-12-01', '2026-12-01'),
('20000013', '110000013', '2024-01-15', '2026-01-15'),
('20000014', '110000014', '2024-02-15', '2026-02-15'),
('20000015', '110000015', '2024-03-15', '2026-03-15');
SELECT * FROM TRADESPERSON_CERTIFICATE;

SELECT AVG(Transaction_Fee) AS Avg_Transaction_Fee
FROM TASK_TRADESPERSON_TRANSACTION
WHERE Transaction_Status = 'Completed';

SELECT Membership_Type, COUNT(*) AS Num_Tradespeople, AVG(Membership_Fee) AS Avg_Membership_Fee
FROM TRADESPERSON_MEMBERSHIP
GROUP BY Membership_Type
ORDER BY Num_Tradespeople DESC;

SELECT Membership_Type, COUNT(*) AS Num_Suppliers
FROM SUPPLIER_MEMBERSHIP
GROUP BY Membership_Type;

SELECT SUM(Transaction_Amount) AS Total_Amount_Spent
FROM PROJECT_SUPPLIER_TRANSACTION
WHERE Transaction_Status = 'Completed';

SELECT c.Certificate_Name, COUNT(*) AS Num_Tradespeople
FROM TRADESPERSON_CERTIFICATE tc
JOIN CERTIFICATE c ON tc.Certificate_Id = c.Certificate_Id
GROUP BY c.Certificate_Name
ORDER BY Num_Tradespeople DESC;

SELECT Task_Id, Description, Budget, Quote_fee
FROM TASK
ORDER BY Budget DESC
LIMIT 10;

SELECT AVG(Customer_rating) AS Avg_Customer_Rating
FROM TASK_TRADESPERSON_TRANSACTION
WHERE Transaction_Status = 'Completed';

SELECT SUM(Cost * Supply_Quantity) AS Total_Supply_Cost
FROM SUPPLIER_SUPPLY_TRANSACTION sst
JOIN SUPPLY s ON sst.Supply_Id = s.Supply_Id;

SELECT t.TID, t.Name, COUNT(ttt.Task_Id) AS Num_Tasks_Completed, AVG(ttt.Transaction_Fee) AS Avg_Transaction_Fee
FROM TRADESPERSON t
JOIN TASK_TRADESPERSON_TRANSACTION ttt ON t.TID = ttt.TID
WHERE ttt.Transaction_Status = 'Completed'
GROUP BY t.TID, t.Name
ORDER BY Num_Tasks_Completed DESC;

SELECT (SELECT COUNT(*) FROM TASK_TRADESPERSON_TRANSACTION WHERE Transaction_Status = 'Pending') AS Pending_Tasks,
(SELECT COUNT(*) FROM PROJECT_SUPPLIER_TRANSACTION WHERE Transaction_Status = 'Pending') AS Pending_Projects;

SELECT SUM(Transaction_Amount) AS Total_Revenue
FROM (
    SELECT Transaction_Amount
    FROM TASK_TRADESPERSON_TRANSACTION
    WHERE Transaction_Status = 'Completed'
    UNION ALL
    SELECT Transaction_Amount
    FROM PROJECT_SUPPLIER_TRANSACTION
    WHERE Transaction_Status = 'Completed'
) AS Combined_Transactions;
SELECT COUNT(DISTINCT CID) AS Total_Customers
FROM CUSTOMER c
JOIN TASK_TRADESPERSON_TRANSACTION ttt ON c.CID = ttt.Task_Id
WHERE ttt.Transaction_Status = 'Completed';
WITH Revenue AS (
    SELECT SUM(Transaction_Amount) AS Total_Revenue
    FROM (
        SELECT Transaction_Amount
        FROM TASK_TRADESPERSON_TRANSACTION
        WHERE Transaction_Status = 'Completed'
        UNION ALL
        SELECT Transaction_Amount
        FROM PROJECT_SUPPLIER_TRANSACTION
        WHERE Transaction_Status = 'Completed'
    ) AS Combined_Transactions
),
Customers AS (
    SELECT COUNT(DISTINCT c.CID) AS Total_Customers
    FROM CUSTOMER c
    JOIN TASK_TRADESPERSON_TRANSACTION ttt ON c.CID = ttt.Task_Id
    WHERE ttt.Transaction_Status = 'Completed'
)
SELECT 
    (r.Total_Revenue / c.Total_Customers) AS ARPU
FROM Revenue r, Customers c;



