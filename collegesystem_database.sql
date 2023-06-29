create database collegesystem
use collegesystem


--table for student --
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    stu_first_name VARCHAR(50),
    stu_last_name VARCHAR(50),
    stu_email_id VARCHAR(50),
    stu_phone_number VARCHAR(20),
    stu_address VARCHAR(100),
    stu_dateofbirth DATE,
    stu_gender VARCHAR(10)
)


INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20800, 'Rahul', 'Verma', 'rahul.verma@example.com', '9876543210', '123 Main St', '1998-05-10', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20801, 'Priya', 'Gupta', 'priya.gupta@example.com', '8765432109', '456 Elm St', '1999-02-15', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20802, 'Amit', 'Sharma', 'amit.sharma@example.com', '7654321098', '789 Oak St', '1997-07-20', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20803, 'Anjali', 'Sinha', 'anjali.sinha@example.com', '6543210987', '987 Pine St', '1998-12-10', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20804, 'Sandeep', 'Kumar', 'sandeep.kumar@example.com', '5432109876', '321 Maple St', '1999-09-05', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20805, 'Neha', 'Joshi', 'neha.joshi@example.com', '4321098765', '987 Birch St', '1997-03-25', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20806, 'Rajesh', 'Singh', 'rajesh.singh@example.com', '3210987654', '654 Cedar St', '1996-08-15', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20807, 'Sakshi', 'Mehta', 'sakshi.mehta@example.com', '2109876543', '123 Oak St', '1997-04-20', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20808, 'Vivek', 'Gandhi', 'vivek.gandhi@example.com', '1098765432', '456 Pine St', '1996-11-25', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20809, 'Kritika', 'Patel', 'kritika.patel@example.com', '0987654321', '789 Maple St', '1999-07-05', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20810, 'Aryan', 'Chopra', 'aryan.chopra@example.com', '9876543210', '321 Main St', '1998-01-10', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20811, 'Shreya', 'Gupta', 'shreya.gupta@example.com', '8765432109', '654 Elm St', '1997-06-15', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20812, 'Rohit', 'Sharma', 'rohit.sharma@example.com', '7654321098', '987 Oak St', '1996-11-20', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20813, 'Aishwarya', 'Singh', 'aishwarya.singh@example.com', '6543210987', '321 Pine St', '1999-08-10', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20814, 'Himanshu', 'Goyal', 'himanshu.goyal@example.com', '5432109876', '654 Maple St', '1997-02-25', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20815, 'Aarohi', 'Sharma', 'aarohi.sharma@example.com', '4321098765', '987 Cedar St', '1996-07-15', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20816, 'Aakash', 'Verma', 'aakash.verma@example.com', '3210987654', '123 Pine St', '1999-03-20', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20817, 'Shivani', 'Saxena', 'shivani.saxena@example.com', '2109876543', '456 Cedar St', '1998-09-25', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20818, 'Vikas', 'Gupta', 'vikas.gupta@example.com', '1098765432', '789 Pine St', '1997-04-05', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20819, 'Deepika', 'Mishra', 'deepika.mishra@example.com', '0987654321', '123 Cedar St', '1996-12-10', 'Female');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES (20820, 'Abhishek', 'Rao', 'abhishek.rao@example.com', '9876543210', '456 Pine St', '1998-05-15', 'Male');

INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
VALUES
    (20821, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main St, City, State, Zip', '1995-01-01', 'Male'),
    (20822, 'Jane', 'Smith', 'janesmith@example.com', '987-654-3210', '456 Oak St, City, State, Zip', '1996-02-02', 'Female'),
    (20823, 'Michael', 'Johnson', 'michaeljohnson@example.com', '555-123-4567', '789 Elm St, City, State, Zip', '1997-03-03', 'Male'),
    (20824, 'Emily', 'Davis', 'emilydavis@example.com', '111-222-3333', '321 Pine St, City, State, Zip', '1998-04-04', 'Female'),
    (20825, 'Robert', 'Anderson', 'robertanderson@example.com', '444-555-6666', '789 Maple St, City, State, Zip', '1999-05-05', 'Male'),
    (20826, 'Amanda', 'Wilson', 'amandawilson@example.com', '777-888-9999', '246 Cedar St, City, State, Zip', '2000-06-06', 'Female'),
    (20827, 'David', 'Lee', 'davidlee@example.com', '222-333-4444', '567 Walnut St, City, State, Zip', '2001-07-07', 'Male'),
    (20828, 'Sarah', 'Taylor', 'sarahtaylor@example.com', '999-888-7777', '789 Cherry St, City, State, Zip', '2002-08-08', 'Female'),
    (20829, 'James', 'Wilson', 'jameswilson@example.com', '777-555-2222', '246 Cedar St, City, State, Zip', '2003-09-09', 'Male'),
    (20830, 'Olivia', 'Brown', 'oliviabrown@example.com', '555-666-7777', '321 Oak St, City, State, Zip', '2004-10-10', 'Female'),
    (20831, 'Daniel', 'Smith', 'danielsmith@example.com', '444-333-2222', '567 Elm St, City, State, Zip', '2005-11-11', 'Male'),
    (20832, 'Sophia', 'Wilson', 'sophiawilson@example.com', '888-999-7777', '123 Pine St, City, State, Zip', '2006-12-12', 'Female'),
    (20833, 'Matthew', 'Anderson', 'matthewanderson@example.com', '111-222-3333', '789 Walnut St, City, State, Zip', '2007-01-13', 'Male'),
    (20834, 'Emma', 'Miller', 'emmamiller@example.com', '666-777-8888', '246 Maple St, City, State, Zip', '2008-02-14', 'Female'),
    (20835, 'Christopher', 'Taylor', 'christophertaylor@example.com', '222-444-6666', '321 Cedar St, City, State, Zip', '2009-03-15', 'Male'),
    (20836, 'Ava', 'Martin', 'avamartin@example.com', '888-777-6666', '567 Pine St, City, State, Zip', '2010-04-16', 'Female'),
    (20837, 'William', 'Johnson', 'williamjohnson@example.com', '333-666-9999', '789 Oak St, City, State, Zip', '2011-05-17', 'Male'),
    (20838, 'Mia', 'Brown', 'miabrown@example.com', '555-444-3333', '123 Elm St, City, State, Zip', '2012-06-18', 'Female'),
    (20839, 'Ethan', 'Lee', 'ethanlee@example.com', '222-111-4444', '456 Walnut St, City, State, Zip', '2013-07-19', 'Male'),
    (20840, 'Charlotte', 'Garcia', 'charlottegarcia@example.com', '999-888-1111', '789 Maple St, City, State, Zip', '2014-08-20', 'Female');




--student stored procedure for insert--
create procedure insert_stu_reg 
   (@student_id INT,
    @stu_first_name VARCHAR(50),
    @stu_last_name VARCHAR(50),
    @stu_email_id VARCHAR(100),
    @stu_phone_number VARCHAR(20),
    @stu_address VARCHAR(100),
    @stu_dateofbirth DATE,
    @stu_gender VARCHAR(10))
	AS
	
	 INSERT INTO Student (student_id, stu_first_name, stu_last_name, stu_email_id, stu_phone_number, stu_address, stu_dateofbirth, stu_gender)
    VALUES (@student_id, @stu_first_name, @stu_last_name, @stu_email_id, @stu_phone_number, @stu_address, @stu_dateofbirth, @stu_gender)
	

--student stored procedure for select all--

create procedure view_stu_table
as
select * from Student


--student stored procedure for update--

CREATE PROCEDURE update_stu_reg (
    @student_id INT,
    @stu_first_name VARCHAR(50),
    @stu_last_name VARCHAR(50),
    @stu_email_id VARCHAR(50),
    @stu_phone_number VARCHAR(20),
    @stu_address VARCHAR(100),
    @stu_dateofbirth DATE,
    @stu_gender VARCHAR(10))
	as
	UPDATE Student
    SET 
		stu_first_name = @stu_first_name,
        stu_last_name = @stu_last_name,
        stu_email_id = @stu_email_id,
        stu_phone_number = @stu_phone_number,
        stu_address = @stu_address,
        stu_dateofbirth = @stu_dateofbirth,
        stu_gender = @stu_gender
    WHERE student_id = @student_id;


--table for staff--

CREATE TABLE Staff(
    staff_id INT PRIMARY KEY,
    staff_first_name NVARCHAR(50) NOT NULL,
    staff_last_name NVARCHAR(50) NOT NULL,
    staff_email_id NVARCHAR(100) NOT NULL,
    staff_phone_number NVARCHAR(20) NOT NULL,
    staff_address NVARCHAR(MAX),
    staff_dateofbirth DATE,
    staff_gender NVARCHAR(10),
	staff_dateofjoin DATE
)



INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30001, 'Rajesh', 'Kumar', 'rajesh.kumar@example.com', '9876543210', '123 Main St', '1980-05-10', 'Male', '2020-01-15');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30002, 'Priya', 'Sharma', 'priya.sharma@example.com', '8765432109', '456 Elm St', '1985-09-20', 'Female', '2019-05-08');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30003, 'Amit', 'Verma', 'amit.verma@example.com', '7654321098', '789 Oak St', '1978-12-01', 'Male', '2021-03-10');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30004, 'Sneha', 'Gupta', 'sneha.gupta@example.com', '6543210987', '321 Pine St', '1982-07-25', 'Female', '2018-08-22');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30005, 'Rahul', 'Sharma', 'rahul.sharma@example.com', '5432109876', '654 Maple St', '1975-11-10', 'Male', '2017-02-05');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30006, 'Neeta', 'Patel', 'neeta.patel@example.com', '4321098765', '987 Cedar St', '1988-04-15', 'Female', '2022-06-12');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30007, 'Vivek', 'Singh', 'vivek.singh@example.com', '3210987654', '123 Pine St', '1983-10-20', 'Male', '2020-09-18');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30008, 'Smita', 'Shah', 'smita.shah@example.com', '2109876543', '456 Cedar St', '1979-03-25', 'Female', '2019-01-07');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30009, 'Ravi', 'Gupta', 'ravi.gupta@example.com', '1098765432', '789 Elm St', '1976-08-30', 'Male', '2021-07-14');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30010, 'Anita', 'Malhotra', 'anita.malhotra@example.com', '0987654321', '321 Oak St', '1981-02-12', 'Female', '2018-04-26');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30011, 'Aakash', 'Sharma', 'aakash.sharma@example.com', '9876543210', '654 Elm St', '1974-06-05', 'Male', '2017-12-30');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30012, 'Divya', 'Jain', 'divya.jain@example.com', '8765432109', '987 Oak St', '1987-09-18', 'Female', '2022-03-22');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30013, 'Rajat', 'Gupta', 'rajat.gupta@example.com', '7654321098', '123 Maple St', '1980-12-03', 'Male', '2020-10-16');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30014, 'Neha', 'Patel', 'neha.patel@example.com', '6543210987', '456 Pine St', '1985-03-28', 'Female', '2019-06-09');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30015, 'Amit', 'Sharma', 'amit.sharma@example.com', '5432109876', '789 Elm St', '1978-07-13', 'Male', '2021-04-25');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30016, 'Anjali', 'Chopra', 'anjali.chopra@example.com', '4321098765', '321 Oak St', '1983-12-28', 'Female', '2018-09-20');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30017, 'Prakash', 'Mehta', 'prakash.mehta@example.com', '3210987654', '654 Cedar St', '1986-05-10', 'Male', '2017-03-15');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30018, 'Sneha', 'Shah', 'sneha.shah@example.com', '2109876543', '987 Elm St', '1979-10-23', 'Female', '2022-08-28');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30019, 'Avinash', 'Gupta', 'avinash.gupta@example.com', '1098765432', '123 Pine St', '1982-01-17', 'Male', '2020-02-10');

INSERT INTO Staff (staff_id, staff_first_name, staff_last_name, staff_email_id, staff_phone_number, staff_address, staff_dateofbirth, staff_gender, staff_dateofjoin)
VALUES (30020, 'Pooja', 'Malhotra', 'pooja.malhotra@example.com', '0987654321', '456 Cedar St', '1977-04-21', 'Female', '2019-08-02');





---stored procedure for staff table--
CREATE PROCEDURE insert_Staff_reg
    @staff_id INT,
    @staff_first_name NVARCHAR(50),
    @staff_last_name NVARCHAR(50),
    @staff_email_id NVARCHAR(100),
    @staff_phone_number NVARCHAR(20),
    @staff_address NVARCHAR(MAX),
    @staff_dateofbirth DATE,
    @staff_gender NVARCHAR(10),
    @staff_dateofjoin DATE
AS

    INSERT INTO Staff (
        staff_id,
        staff_first_name,
        staff_last_name,
        staff_email_id,
        staff_phone_number,
        staff_address,
        staff_dateofbirth,
        staff_gender,
        staff_dateofjoin
    )
    VALUES (
        @staff_id,
        @staff_first_name,
        @staff_last_name,
        @staff_email_id,
        @staff_phone_number,
        @staff_address,
        @staff_dateofbirth,
        @staff_gender,
        @staff_dateofjoin
    );






	---stored procedure for staff table--
	create procedure view_staff_table
	as
	select * from staff

---stored procedure for staff table--
	CREATE PROCEDURE update_staff_reg
    @staff_id INT,
    @staff_first_name NVARCHAR(50),
    @staff_last_name NVARCHAR(50),
    @staff_email_id NVARCHAR(100),
    @staff_phone_number NVARCHAR(20),
    @staff_address NVARCHAR(MAX),
    @staff_dateofbirth DATE,
    @staff_gender NVARCHAR(10),
    @staff_dateofjoin DATE
AS

    UPDATE Staff
    SET
        staff_first_name = @staff_first_name,
        staff_last_name = @staff_last_name,
        staff_email_id = @staff_email_id,
        staff_phone_number = @staff_phone_number,
        staff_address = @staff_address,
        staff_dateofbirth = @staff_dateofbirth,
        staff_gender = @staff_gender,
        staff_dateofjoin = @staff_dateofjoin
    WHERE
        staff_id = @staff_id;


		---table for user---

		CREATE TABLE usertable (
    user_id INT PRIMARY KEY IDENTITY(100000,1),
    user_username VARCHAR(50) NOT NULL,
    user_password VARCHAR(50) NOT NULL,
    user_role VARCHAR(50) NOT NULL,
    staff_id INT null,
    student_id INT null,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
)
INSERT INTO usertable (user_username, user_password, user_role, staff_id, student_id)
VALUES
    ('john.doe', 'password123', 'Staff', 30001, null),
    ('jane.smith', 'secret456', 'Staff', 30002, null),
    ('mike.wilson', 'qwerty789', 'Staff', 30003, null),
    ('sara.jones', 'abcdef123', 'Staff', 30004, null),
    ('alex.walker', 'p@$$w0rd', 'Staff', 30005, null),
    ('emily.brown', 'letmein', 'Staff', 30006, null),
    ('david.jackson', 'password1', 'Staff', 30007, null),
    ('amy.roberts', 'pass123', 'Staff', 30008, null),
    ('brian.adams', 'abc123', 'Staff', 30009, null),
    ('lisa.thompson', 'password', 'Staff', 30010, null),
    ('kevin.campbell', 'qwerty', 'Staff', 30011, null),
    ('natalie.harris', 'welcome', 'Staff', 30012, null),
    ('peter.turner', 'passw0rd', 'Staff', 30013, null),
    ('olivia.green', 'hello123', 'Staff', 30014, null),
    ('jason.miller', 'letmein123', 'Staff', 30015, null),
    ('victoria.parker', 'abcd1234', 'Staff', 30016, null),
    ('samuel.young', 'test123', 'Staff', 30017, null),
    ('linda.ward', 'admin123', 'Staff', 30018, null),
    ('gregory.collins', 'pass1234', 'Staff', 30019, null),
    ('mary.allen', 'password12', 'Staff', 30020, null);

	INSERT INTO usertable (user_username, user_password, user_role, staff_id, student_id)
VALUES
    ('john.doe', 'pass123', 'Student', null, 20800),
    ('jane.smith', 'abcd123', 'Student', null, 20801),
    ('mike.wilson', 'password1', 'Student', null, 20802),
    ('sara.jones', 'qwerty789', 'Student', null, 20803),
    ('alex.walker', 'test123', 'Student', null, 20804),
    ('emily.brown', 'p@$$w0rd', 'Student', null, 20805),
    ('david.jackson', 'letmein', 'Student', null, 20806),
    ('amy.roberts', 'abcdef123', 'Student', null, 20807),
    ('brian.adams', 'qwerty', 'Student', null, 20808),
    ('lisa.thompson', 'password12', 'Student', null, 20809),
    ('kevin.campbell', 'pass1234', 'Student', null, 20810),
    ('natalie.harris', 'abc123', 'Student', null, 20811),
    ('peter.turner', 'hello123', 'Student', null, 20812),
    ('olivia.green', 'password123', 'Student', null, 20813),
    ('jason.miller', 'letmein123', 'Student', null, 20814),
    ('victoria.parker', 'welcome', 'Student', null, 20815),
    ('samuel.young', 'abcd1234', 'Student', null, 20816),
    ('linda.ward', 'admin123', 'Student', null, 20817),
    ('gregory.collins', 'passw0rd', 'Student', null, 20818),
    ('mary.allen', 'qwertyui', 'Student', null, 20819),
    ('john.wilson', 'password987', 'Student', null, 20820);
	INSERT INTO usertable (user_username, user_password, user_role, staff_id, student_id)
VALUES
    ('john.doe', 'pass123', 'Student', NULL, 20821),
    ('jane.smith', 'password456', 'Student', NULL, 20822),
    ('michael.johnson', 'secret789', 'Student', NULL, 20823),
    ('emily.davis', 'davis987', 'Student', NULL, 20824),
    ('robert.anderson', 'anderson444', 'Student', NULL, 20825),
    ('amanda.wilson', 'wilson777', 'Student', NULL, 20826),
    ('david.lee', 'lee222', 'Student', NULL, 20827),
    ('sarah.taylor', 'taylor999', 'Student', NULL, 20828),
    ('james.wilson', 'wilson555', 'Student', NULL, 20829),
    ('olivia.brown', 'brownie123', 'Student', NULL, 20830),
    ('daniel.smith', 'smithy456', 'Student', NULL, 20831),
    ('sophia.wilson', 'wilson123', 'Student', NULL, 20832),

    ('matthew.anderson', 'anderson111', 'Student', NULL, 20833),
    ('emma.miller', 'miller888', 'Student', NULL, 20834),
    ('christopher.taylor', 'taylor222', 'Student', NULL, 20835),
    ('ava.martin', 'martin777', 'Student', NULL, 20836),
    ('william.johnson', 'johnson333', 'Student', NULL, 20837),
    ('mia.brown', 'brown444', 'Student', NULL, 20838),
    ('ethan.lee', 'lee111', 'Student', NULL, 20839),
    ('charlotte.garcia', 'garcia999', 'Student', NULL, 20840);






---stored procedure for user table--
create procedure view_user_table
as
select * from usertable



---stored procedure for user allow--
alter procedure user_athenticate(@username NVARCHAR(50),@password NVARCHAR(50) )
as
SELECT user_id FROM usertable WHERE user_username = @username AND user_password = @password

---stored procedure for insert user--
create PROCEDURE insert_user
    @user_username VARCHAR(50),
    @user_password VARCHAR(50),
    @user_role VARCHAR(50),
    @staff_Id INT = null ,
    @student_Id INT = null
AS
BEGIN
 IF (@user_role = 'Staff')
   BEGIN
INSERT INTO usertable (user_username, user_password, user_role, staff_Id)
        VALUES (@user_username, @user_password, @user_role, @staff_Id)
		  END
		 ELSE IF (@user_role = 'student')
    BEGIN
        INSERT INTO usertable (user_username, user_password, user_role, student_Id)
        VALUES (@user_username, @user_password, @user_role, @student_Id)
		END
		END




	   ---table for course--
	CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_description TEXT
)

---stored procedure for course table--

CREATE PROCEDURE InsertCourse
    @course_id INT,
    @course_name VARCHAR(255),
    @course_description TEXT
AS
BEGIN
    INSERT INTO course (course_id, course_name, course_description)
    VALUES (@course_id, @course_name, @course_description);
END;
---stored procedure for course table--
CREATE PROCEDURE UpdateCourse
    @course_id INT,
    @course_name VARCHAR(255),
    @course_description TEXT
AS
BEGIN
    UPDATE course
    SET course_name = @course_name,
        course_description = @course_description
    WHERE course_id = @course_id;
END;
---stored procedure for course table--
CREATE PROCEDURE SelectAllCourses
AS
BEGIN
    SELECT *
    FROM course;
END;

--table for subject--

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    course_id INT,
    subject_name VARCHAR(255),
    subject_description TEXT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
)



INSERT INTO Subject (subject_id, course_id, subject_name, subject_description)
VALUES
    (101, 1, 'Data Structures and Algorithms', 'Introduction to data structures and algorithms.'),
    (102, 1, 'Database Management Systems', 'Introduction to database management systems.'),
    (103, 2, 'Circuit Theory', 'Fundamentals of electrical circuit theory.'),
    (104, 2, 'Power Systems', 'Study of power generation and distribution systems.'),
    (105, 3, 'Mechanics', 'Principles of mechanics and statics.'),
    (106, 3, 'Thermodynamics', 'Study of heat and energy transfer.'),
    (107, 4, 'Structural Analysis', 'Analysis and design of structures.'),
    (108, 4, 'Construction Management', 'Principles of construction management.'),
    (109, 5, 'Digital Electronics', 'Introduction to digital electronic circuits.'),
    (110, 5, 'Communication Systems', 'Principles of communication systems.'),
    (111, 6, 'Advanced Algorithms', 'In-depth study of advanced algorithms.'),
    (112, 6, 'Machine Learning', 'Introduction to machine learning techniques.'),
    (113, 7, 'Power Electronics', 'Study of power electronic devices and circuits.'),
    (114, 7, 'Renewable Energy Systems', 'Principles of renewable energy generation.'),
    (115, 8, 'Fluid Mechanics', 'Study of fluid behavior and properties.'),
    (116, 8, 'Heat Transfer', 'Principles of heat transfer and conduction.'),
    (117, 9, 'Structural Design', 'Design and analysis of structural components.'),
    (118, 9, 'Geotechnical Engineering', 'Principles of geotechnical engineering.'),
    (119, 10, 'Analog Electronics', 'Introduction to analog electronic circuits.'),
    (120, 10, 'Wireless Communication', 'Principles of wireless communication systems.');

select * from course
---stored procedure for subject table--
CREATE PROCEDURE InsertSubject
    @subject_id INT,
    @course_id INT,
    @subject_name VARCHAR(255),
    @subject_description TEXT
AS
BEGIN
    INSERT INTO Subject (subject_id, course_id, subject_name, subject_description)
    VALUES (@subject_id, @course_id, @subject_name, @subject_description)
END
---stored procedure for subject table--
create PROCEDURE SelectallSubject
AS
BEGIN
    SELECT *
    FROM Subject
  END
---stored procedure for subject table--
CREATE PROCEDURE UpdateSubject
    @subject_id INT,
    @course_id INT,
    @subject_name VARCHAR(255),
    @subject_description TEXT
AS
BEGIN
    UPDATE Subject
    SET course_id = @course_id,
        subject_name = @subject_name,
        subject_description = @subject_description
    WHERE subject_id = @subject_id
END







--table for attendance--
CREATE TABLE Attendance (
    attendance_id INT IDENTITY(300000,1) PRIMARY KEY,
    user_id INT FOREIGN KEY REFERENCES usertable(user_id),
    subject_id INT FOREIGN KEY REFERENCES Subject(subject_id),
    date DATE,
    is_present VARCHAR(7)
)

drop table Attendance

--stored procedure for attendance--
CREATE PROCEDURE DeleteAttendance
    @AttendanceID INT
AS
BEGIN
    DELETE FROM Attendance
    WHERE attendance_id = @AttendanceID;
END

create PROCEDURE SelectAllAttendance
AS
BEGIN
    SELECT * FROM Attendance;
END

--stored procedure for attendance--
create PROCEDURE InsertAttendance
    @user_id INT,
    @subject_id INT,
    @date DATE,
    @is_present varchar(7)
AS
BEGIN
    INSERT INTO Attendance (user_id, subject_id, date, is_present)
    VALUES (@user_id, @subject_id, @date, @is_present);
END

--stored procedure for attendance--
create PROCEDURE UpdateAttendance
    @attendance_id INT,
    @user_id INT,
    @subject_id INT,
    @date DATE,
    @is_present varchar(7)
AS
BEGIN
    UPDATE Attendance
    SET user_id = @user_id,
        subject_id = @subject_id,
        date = @date,
        is_present = @is_present
    WHERE attendance_id = @attendance_id;
END


drop table Attendance

--table for exam--

CREATE TABLE Exam (
    exam_id INT PRIMARY KEY IDENTITY(5000,1),
    subject_id INT,
    exam_date DATE,
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

drop table Exam

--stored procedure for exam--
alter PROCEDURE InsertExam

    @subject_id INT,
    @exam_date DATE
AS
BEGIN
    INSERT INTO Exam (subject_id, exam_date)
    VALUES (@subject_id, @exam_date)
END
--stored procedure for exam--
CREATE PROCEDURE UpdateExam
    @exam_id INT,
    @subject_id INT,
    @exam_date DATE
AS
BEGIN
    UPDATE Exam
    SET subject_id = @subject_id,
        exam_date = @exam_date
    WHERE exam_id = @exam_id
END

--stored procedure for exam--
CREATE PROCEDURE DeleteExam
    @exam_id INT
AS
BEGIN
    DELETE FROM Exam
    WHERE exam_id = @exam_id
END

--stored procedure for exam-

CREATE PROCEDURE SelectAllExams
AS
BEGIN
    SELECT *
    FROM Exam
END



--table for mark---
CREATE TABLE Mark (
    mark_id INT PRIMARY KEY IDENTITY(500000,1),
    user_id INT,
    subject_id INT,
    exam_id INT,
    marks_obtained FLOAT,
    FOREIGN KEY (user_id) REFERENCES usertable (user_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id),
    FOREIGN KEY (exam_id) REFERENCES Exam(exam_id)
);
drop table Mark


--stored procedure for mark--
CREATE PROCEDURE DeleteMark
    @mark_id INT
AS
BEGIN
    DELETE FROM Mark
    WHERE mark_id = @mark_id
END




--stored procedure for mark--
alter PROCEDURE InsertMark

    @user_id INT,
    @subject_id INT,
    @exam_id INT,
    @marks_obtained DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO Mark (user_id, subject_id, exam_id, marks_obtained)
    VALUES (@user_id, @subject_id, @exam_id, @marks_obtained)
END
--stored procedure for mark--
CREATE PROCEDURE UpdateMark
    @mark_id INT,
    @user_id INT,
    @subject_id INT,
    @exam_id INT,
    @marks_obtained DECIMAL(10, 2)
AS
BEGIN
    UPDATE Mark
    SET user_id = @user_id,
        subject_id = @subject_id,
        exam_id = @exam_id,
        marks_obtained = @marks_obtained
    WHERE mark_id = @mark_id
END
--stored procedure for mark--
CREATE PROCEDURE SelectAllMarks
AS
BEGIN
    SELECT *
    FROM Mark
END

---table for salary--
CREATE TABLE Salary (
    salary_id INT PRIMARY KEY IDENTITY(1000,1),
    staff_id INT,
    month varchar(20),
    year INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
)
select * from Salary



--stored procedure for salary--

alter PROCEDURE InsertSalary

    @staff_id INT,
    @month varchar(20),
    @year INT,
    @amount DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO Salary ( staff_id, month, year, amount)
    VALUES (@staff_id, @month, @year, @amount)
END


--stored procedure for salary--
create PROCEDURE UpdateSalary
    @salary_id INT,
    @staff_id INT,
    @month varchar(20),
    @year INT,
    @amount DECIMAL(10, 2)
AS
BEGIN
    UPDATE Salary
    SET staff_id = @staff_id,
        month = @month,
        year = @year,
        amount = @amount
    WHERE salary_id = @salary_id
END
--stored procedure for salary--

CREATE PROCEDURE DeleteSalary
    @salary_id INT
AS
BEGIN
    DELETE FROM Salary
    WHERE salary_id = @salary_id
END

CREATE PROCEDURE GetAllSalaries
AS
BEGIN
    SELECT *
    FROM Salary
END

select * from usertable



create procedure displaystaff 
(@userId int)
as
SELECT u.user_id as "Login ID", u.user_username as Username, u.user_password as Password,
    s.staff_id as "Your Id", s.staff_first_name as "First Name", s.staff_last_name as "Last Name" ,
    s.staff_email_id as "EMail Id", s.staff_phone_number as "Mobile  No", s.staff_address as Address, s.staff_dateofbirth as "Date Of Birth", 
    s.staff_gender as Gender, s.staff_dateofjoin as "Date Of Joining"
  
FROM usertable u
INNER JOIN Staff s ON u.staff_id = s.staff_id
WHERE u.user_id = @userId




CREATE PROCEDURE displaystudent
    @userId INT
AS
BEGIN
    SELECT
        u.user_id AS "Login ID",
        u.user_username AS Username,
        u.user_password AS Password,
        st.student_id AS "Your Id",
        st.stu_first_name AS "First Name",
        st.stu_last_name AS "Last Name",
        st.stu_email_id AS "Email Id",
        st.stu_phone_number AS "Mobile No",
        st.stu_address AS Address,
        st.stu_dateofbirth AS "Date Of Birth",
        st.stu_gender AS Gender
    FROM
        usertable u
        INNER JOIN Student st ON u.student_id = st.student_id
    WHERE
        u.user_id = @userId;
END;


-- Inserting data into the course table
INSERT INTO course (course_id, course_name, course_description)
VALUES
    (1, 'Bachelor of Technology (B.Tech) in Computer Science and Engineering', 'Program description for Computer Science and Engineering'),
    (2, 'Bachelor of Technology (B.Tech) in Electrical Engineering', 'Program description for Electrical Engineering'),
    (3, 'Bachelor of Technology (B.Tech) in Mechanical Engineering', 'Program description for Mechanical Engineering'),
    (4, 'Bachelor of Technology (B.Tech) in Civil Engineering', 'Program description for Civil Engineering'),
    (5, 'Bachelor of Technology (B.Tech) in Electronics and Communication Engineering', 'Program description for Electronics and Communication Engineering'),
    (6, 'Master of Technology (M.Tech) in Computer Science and Engineering', 'Program description for Computer Science and Engineering'),
    (7, 'Master of Technology (M.Tech) in Electrical Engineering', 'Program description for Electrical Engineering'),
    (8, 'Master of Technology (M.Tech) in Mechanical Engineering', 'Program description for Mechanical Engineering'),
    (9, 'Master of Technology (M.Tech) in Civil Engineering', 'Program description for Civil Engineering'),
    (10, 'Master of Technology (M.Tech) in Electronics and Communication Engineering', 'Program description for Electronics and Communication Engineering');



DECLARE @userId INT = 100021;
DECLARE @subjectId INT = 101;
DECLARE @isPresent VARCHAR(7);
DECLARE @date DATE = '2023-06-03';

WHILE @date <= '2023-06-25'
BEGIN
    WHILE @userId <= 100060
    BEGIN
        IF @userId % 4 = 0
            SET @isPresent =  'absent';
        ELSE
            SET @isPresent = 'present';

        INSERT INTO Attendance (user_id, subject_id, date, is_present)
        VALUES (@userId, @subjectId, @date, @isPresent);

        SET @userId += 1;

        IF @userId % 2 = 1
            SET @subjectId += 1;
			 END;

	    SET @date = DATEADD(DAY, 1, @date);
		SET @userId = 100021;
    SET @subjectId = 101;
END;




CREATE PROCEDURE GetAttendanceCount
    @user_id INT,
    @subject_id INT
AS
BEGIN
    DECLARE @presentCount INT;
    DECLARE @absentCount INT;


    SELECT @presentCount = COUNT(*)
    FROM Attendance
    WHERE user_id = @user_id
        AND subject_id = @subject_id
        AND is_present = 'present';


    SELECT @absentCount = COUNT(*)
    FROM Attendance
    WHERE user_id = @user_id
        AND subject_id = @subject_id
        AND is_present = 'absent';


    SELECT @presentCount AS present_count, @absentCount AS absent_count;
END;



select * from Attendance


CREATE PROCEDURE GetAttendanceSummary
    @user_id INT
AS
BEGIN
    SELECT 
        subject_id,
        COUNT(DISTINCT CASE WHEN is_present = 'Present' THEN date END) AS days_present,
        COUNT(DISTINCT CASE WHEN is_present = 'Absent' THEN date END) AS days_absent
    FROM Attendance
    WHERE user_id = @user_id
    GROUP BY subject_id;
END;

select * from Salary


alter PROCEDURE GetSalaryDetails
    @StaffID INT
AS
BEGIN
    SELECT month as MONTH, year as YEAR,amount as 'SALARY AMOUNT'
    FROM Salary
    WHERE staff_id = @StaffID;
END;


execute GetSalaryDetails 30002


select * from usertable	


select staff_id from usertable where user_id=@userid