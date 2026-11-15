-- ==========================================================
-- 1. Insert Sample Data into DEMO_DEPT
-- ==========================================================
INSERT INTO DEMO_DEPT (DEPT_ID, DEPT_NAME) VALUES (1, 'Information Technology');
INSERT INTO DEMO_DEPT (DEPT_ID, DEPT_NAME) VALUES (2, 'Finance & Risk');
INSERT INTO DEMO_DEPT (DEPT_ID, DEPT_NAME) VALUES (3, 'Retail Banking');
GO

-- ==========================================================
-- 2. Insert Sample Data into DEMO_EMPLOYEE
-- ==========================================================
INSERT INTO DEMO_EMPLOYEE (EMP_ID, EMP_FULL_NAME, EMP_EMAIL, DEPT_ID) VALUES (101, 'Ahmed Tarek', 'ahmed.tarek@company.com', 1);
INSERT INTO DEMO_EMPLOYEE (EMP_ID, EMP_FULL_NAME, EMP_EMAIL, DEPT_ID) VALUES (102, 'Mohamed Ali', 'mohamed.ali@company.com', 2);
INSERT INTO DEMO_EMPLOYEE (EMP_ID, EMP_FULL_NAME, EMP_EMAIL, DEPT_ID) VALUES (103, 'Sara Mahmoud', 'sara.mahmoud@company.com', 3);
GO

-- ==========================================================
-- 3. Insert Sample Data into DEMO_ACCOUNT
-- ==========================================================
INSERT INTO DEMO_ACCOUNT (ACCT_ID, EMP_ID, ACCT_OPEN_DATE) VALUES (5001, 101, '2021-05-10');
INSERT INTO DEMO_ACCOUNT (ACCT_ID, EMP_ID, ACCT_OPEN_DATE) VALUES (5002, 102, '2022-08-15');
INSERT INTO DEMO_ACCOUNT (ACCT_ID, EMP_ID, ACCT_OPEN_DATE) VALUES (5003, 103, '2023-01-20');
GO

-- ==========================================================
-- 4. Insert Sample Data into DEMO_CREDIT_CARD
-- ==========================================================
-- Valid current and archive records
INSERT INTO DEMO_CREDIT_CARD (CC_SUR, CC_NUMBER, CC_OUTSTANDING_BAL, CC_LIMIT, CC_OPEN_DATE, ACCT_ID) 
VALUES (1, '4532718293847561', '1200.50', '10000.00', '2023-06-12', 5001);

INSERT INTO DEMO_CREDIT_CARD (CC_SUR, CC_NUMBER, CC_OUTSTANDING_BAL, CC_LIMIT, CC_OPEN_DATE, ACCT_ID) 
VALUES (2, '5412758392014829', '450.00', '15000.00', '2020-03-15', 5002);

-- Invalid record (Rejected due to length less than 16 digits)
-- Note: This record will be routed to the REJECTED file by the pipeline
INSERT INTO DEMO_CREDIT_CARD (CC_SUR, CC_NUMBER, CC_OUTSTANDING_BAL, CC_LIMIT, CC_OPEN_DATE, ACCT_ID) 
VALUES (3, '123456789', '0.00', '5000.00', '2023-01-01', 5003);
GO
