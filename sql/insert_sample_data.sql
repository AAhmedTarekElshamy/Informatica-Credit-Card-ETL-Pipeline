 -- ==========================================================
-- 1. Table: DEMO_DEPT
-- ==========================================================
CREATE TABLE SRC.DEMO_DEPT (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(100),
    DEPT_CATEG VARCHAR(10),
    DEPT_LOC VARCHAR(100)
);

INSERT INTO SRC.DEMO_DEPT (DEPT_ID, DEPT_NAME, DEPT_CATEG, DEPT_LOC) VALUES
(1, 'Executive Leadership', 'A', 'New York'),
(2, 'Finance', 'A', 'London'),
(3, 'Marketing', 'B', 'Paris'),
(4, 'Human Resources', 'A', 'Berlin'),
(5, 'Technology', 'B', 'Tokyo'),
(6, 'Operations', 'B', 'Singapore');

-- ==========================================================
-- 2. Table: DEMO_EMPLOYEE
-- ==========================================================
CREATE TABLE SRC.DEMO_EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_FULL_NAME VARCHAR(100),
    EMP_PHONE VARCHAR(50),
    EMP_EMAIL VARCHAR(100),
    EMP_DEPT_ID INT,
    CREATED_DATE VARCHAR(50),
    UPDATED_DATE VARCHAR(50)
);

INSERT INTO SRC.DEMO_EMPLOYEE (EMP_ID, EMP_FULL_NAME, EMP_PHONE, EMP_EMAIL, EMP_DEPT_ID, CREATED_DATE, UPDATED_DATE) VALUES
(3000, 'Michael Chen', '555-0001', 'michael.chen@company.com', 1, '01/15/2020', '03/20/2024'),
(3001, 'Sarah Johnson', '555-0002', 'sarah.johnson@company.com', 2, '02/20/2020', '04/15/2024'),
(3002, 'David Kim', '555-0003', 'david.kim@company.com', 5, '03/10/2020', '05/12/2024'),
(3003, 'Emily Rodriguez', '555-0004', 'emily.rodriguez@company.com', 3, '04/05/2020', '06/08/2024'),
(3004, 'James Wilson', '555-0005', 'james.wilson@company.com', 4, '05/18/2020', '07/22/2024'),
(3005, 'Rachel Thompson', '555-0006', 'rachel.thompson@company.com', 6, '06/25/2020', '08/30/2024'),
(3006, 'Alex Martinez', '555-0007', 'alex.martinez@company.com', 2, '07/12/2020', '09/14/2024'),
(3007, 'Jessica Brown', '555-0008', 'jessica.brown@company.com', 3, '08/08/2020', '10/18/2024'),
(3008, 'Robert Garcia', '555-0009', 'robert.garcia@company.com', 5, '09/03/2020', '11/25/2024'),
(3009, 'Amanda Davis', '555-0010', 'amanda.davis@company.com', 1, '10/14/2020', '12/12/2024'),
(3010, 'Christopher Lee', '555-0011', 'christopher.lee@company.com', 6, '11/21/2020', '01/16/2025'),
(3011, 'Lisa Anderson', '555-0012', 'lisa.anderson@company.com', 4, '12/07/2020', '02/28/2025'),
(3012, 'Kevin White', '555-0013', 'kevin.white@company.com', 2, '01/19/2021', '03/10/2025'),
(3013, 'Nicole Taylor', '555-0014', 'nicole.taylor@company.com', 3, '02/26/2021', '04/20/2025'),
(3014, 'Brian Miller', '555-0015', 'brian.miller@company.com', 5, '03/15/2021', '05/14/2025'),
(3015, 'Stephanie Clark', '555-0016', 'stephanie.clark@company.com', 1, '04/22/2021', '06-18-2025'),
(3016, 'Daniel Lewis', '555-0017', 'daniel.lewis@company.com', 6, '05-30-2021', '07-25-2025'),
(3017, 'Michelle Walker', '555-0018', 'michelle.walker@company.com', 4, '06-16-2021', '08-12-2025'),
(3018, 'Jason Hall', '555-0019', 'jason.hall@company.com', 2, '07-08-2021', '09-30-2025'),
(3019, 'Ashley Young', '555-0020', 'ashley.young@company.com', 3, '08-14-2021', '10-22-2025');

-- ==========================================================
-- 3. Table: DEMO_ACCOUNT
-- ==========================================================
CREATE TABLE SRC.DEMO_ACCOUNT (
    ACCT_ID INT PRIMARY KEY,
    CUST_ID INT,
    ACCT_NAME VARCHAR(100),
    ACCT_OPEN_DATE VARCHAR(50),
    ACCT_EMP_ID INT,
    ACCT_BAL DECIMAL(18, 2)
);

INSERT INTO SRC.DEMO_ACCOUNT (ACCT_ID, CUST_ID, ACCT_NAME, ACCT_OPEN_DATE, ACCT_EMP_ID, ACCT_BAL) VALUES
(200000, 2000, 'Premium Checking', '01/15/2021', 3001, 125750),
(200001, 2001, 'Business Savings', '02/20/2021', 3002, 89650),
(200002, 2002, 'Investment Account', '03/25/2021', 3003, 156920),
(200003, 2003, 'Standard Checking', '04/10/2021', 3004, 45830),
(200004, 2004, 'High Yield Savings', '05/18/2021', 3005, 234570),
(200005, 2005, 'Corporate Account', '06/22/2021', 3006, 567890),
(200006, 2006, 'Student Checking', '07/14/2021', 3007, 12450),
(200007, 2007, 'Money Market', '08/05/2021', 3008, 98760),
(200008, 2008, 'Premium Savings', '09/12/2021', 3009, 345670),
(200009, 2009, 'Business Checking', '10/28/2021', 3010, 78920),
(200010, 2010, 'Certificate Deposit', '11/15/2021', 3011, 189540),
(200011, 2011, 'Joint Checking', '12/03/2021', 3012, 56780),
(200012, 2012, 'Retirement Fund', '01/20/2022', 3013, 423690),
(200013, 2013, 'Travel Account', '02/14/2022', 3014, 67830),
(200014, 2014, 'Emergency Fund', '03/18/2022', 3015, 145280),
(200015, 2015, 'Education Savings', '04/25/2022', 3016, 89470),
(200016, 2016, 'Health Savings', '05/30/2022', 3017, 234120),
(200017, 2017, 'Home Buying Fund', '06-18-2022', 3018, 156890),
(200018, 2018, 'Vacation Savings', '07-22-2022', 3019, 78940),
(200019, 2019, 'Investment Portfolio', '08-16-2022', 3000, 345780),
(200020, 2020, 'Business Expansion', '09-08-2022', 3001, 567230);

-- ==========================================================
-- 4. Table: DEMO_CREDIT_CARD
-- ==========================================================
CREATE TABLE SRC.DEMO_CREDIT_CARD (
    CC_NUMBER VARCHAR(255) NOT NULL,
    CC_ACCT_ID INT,
    CC_OPEN_DATE VARCHAR(255),
    CC_EMP_ID INT,
    CC_OUTSTANDING_BAL VARCHAR(100),
    CC_LIMIT VARCHAR(100)
);

INSERT INTO SRC.DEMO_CREDIT_CARD (CC_NUMBER, CC_ACCT_ID, CC_OPEN_DATE, CC_EMP_ID, CC_OUTSTANDING_BAL, CC_LIMIT) VALUES
('4532 1234 5678 9012', 200000, '02/01/2021', 3001, '2450', '15000'),
('5412 3456 7890 1234', 200001, '03/15/2021', 3002, '1875', '12000'),
('4716 9876 5432 1098', 200002, '04/20/2021', 3003, '3200', '20000'),
('5123 4567 8901 2345', 200003, '05/10/2021', 3004, '890', '8000'),
('4329 8765 4321 0987', 200004, '06/25/2021', 3005, '4560', '25000'),
('5234 5678 9012 3456', 200005, '07/30/2021', 3006, '6780', '30000'),
('4567 1234 5678 9012', 200006, '08/14/2021', 3007, '345', '5000'),
('5345 6789 0123 4567', 200007, '09/18/2021', 3008, '1230', '10000'),
('4678 9012 3456 7890', 200008, '10/22/2021', 3009, '5670', '35000'),
('5456 7890 1234 5678', 200009, '11/05/2021', 3010, '2340', '18000'),
('4789 0123 4567 8901', 200010, '12/12/2021', 3011, '3450', '22000'),
('5567 8901 2345 6789', 200011, '01/28/2022', 3012, '1560', '14000'),
('4890 1234 5678 9012', 200012, '02/15/2022', 3013, '7890', '40000'),
('5678 9012 3456 7890', 200013, '03/20/2022', 3014, '2100', '16000'),
('4901 2345 6789 0123', 200014, '04-28-2022', 3015, '4320', '28000'),
('5789 0123 4567 8901', 200015, '05-15-2022', 3016, '1890', '12500'),
('4012 3456 7890 1234', 200016, '06-22-2022', 3017, '5670', '32000'),
('5890 1234 5678 9012', 200017, '07-18-2022', 3018, '3210', '24000'),
('4123 4567 8901 2345', 200018, '08-25-2022', 3019, '1450', '11000'),
('5901 2345 6789 0123', 200019, '09-12-2022', 3000, '6540', '38000'),
-- Additional record to test rejection case (length less than 16 digits)
('4111 2222 3333', 200020, '10-01-2022', 3001, '500', '5000');
