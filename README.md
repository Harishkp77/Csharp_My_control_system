                                        **College Management System**

The College Management System is a web-based application that simplifies the administrative tasks of a college by providing a centralized platform to manage student and staff information, attendance, exams, marks, and salaries.


**Introduction**

The College Management System streamlines various administrative tasks in a college environment. It enables college administrators, staff members, and students to efficiently manage student details, staff information, attendance records, exam schedules, marks, and staff salaries.

**Features**

1. Student Management: Add, update, and manage student details, including personal information, contact details, and important dates.
2. Staff Management: Maintain staff information, including their names, contact details, hire dates, and additional information.
3. User Authentication: Allow users to register and log in to the system using a username and password, with separate roles for staff and students.
4. Course and Subject Management: Define and manage courses and subjects offered by the college, including their names and descriptions.
5. Attendance Tracking: Keep track of student attendance for each subject, including the dates and whether the student was present or absent.
6. Exam Scheduling: Schedule exams for subjects, including the exam date and duration.
7. Marks Management: Record and manage student marks for exams, associating them with specific subjects and exams.
8. Staff Salary Management: Track staff salaries, associating them with staff members and specific months.
9. Extensibility: The system can be further extended to incorporate additional features or modify existing ones as per the specific requirements of the college.

** Database Structure   **

The College Management System utilizes a relational database management system (RDBMS) to store and manage data. The database structure consists of the following tables:

1. User: Stores user account information, including usernames, passwords, roles, and associations with staff or student profiles.
2. Student: Contains student details such as first name, last name, email, phone number, address, date of birth, and gender.
3. Staff: Stores staff information, such as first name, last name, email, phone number, address, date of birth, gender, and date of joining.
4. Course: Defines the courses offered by the college, including their names and descriptions.
5. Subject: Represents subjects offered within courses, including their names, descriptions, and associations with courses.
6. Attendance: Tracks student attendance for each subject, recording the student's ID, subject ID, date, and attendance status.
7. Exam: Stores information about exams, including the subject ID, date, and duration.
8. Mark: Records student marks for exams, associating them with specific subjects, exams, and students.
9. Salary: Manages staff salaries, associating them with staff members, months, years, and salary amounts.



**Installation**

To install and run the College Management System on your local machine, follow these steps:

1. Clone the repository: git clone https://github.com/Harishkp77/Csharp_My_control_system.git
 
  Install the required dependencies.

2. Restore NuGet packages: Right-click on the project in the Solution Explorer and select "Restore NuGet Packages." This will download and install any necessary dependencies for the project.

3. Build the project: Select "Build" from the menu and choose "Build Solution." This will compile the project and ensure that all the necessary files are generated.

4. Configure the database connection: Depending on how the project is set up, you may need to configure the database connection settings. Look for a configuration file (such as `appsettings.json` or `web.config`) and update the database connection string with your database credentials.

5. Create the database and run the necessary SQL queries:
- Open SQL Server Management Studio (SSMS) or any other tool you use to manage SQL databases.
- Connect to your local SQL Server instance or the desired server where you want to create the database.
- Open the SQL script file provided with the project that contains the database schema and queries. It may have a `.sql` extension.
- Select and execute the entire script by either clicking the "Execute" button or pressing the F5 key. This will run all the queries in the script.
- Once the script has finished executing, the database and its associated tables, views, and other objects should be created.
- Verify that the database and tables were created successfully by expanding the Databases folder in the Object Explorer and checking if the newly created database appears in the list. You can also query the database using SSMS to retrieve sample data or perform any necessary operations.

6. Update the database connection string: After creating the database, update the connection string in your project's configuration file (`appsettings.json` or `web.config`) to point to the newly created database. Ensure that the connection string contains the correct server name, database name, and any necessary credentials for accessing the SQL Server instance.

7. Set as startup project: Right-click on the desired project in the Solution Explorer and select "Set as StartUp Project." This will ensure that the correct project is launched when running the application.

8. Run the project: Press F5 or click on the "Start" button to run the project. This will start the ASP.NET application and open it in your default web browser.
  

Remember to create the database and run the necessary SQL queries before running the project. You can use SQL Server Management Studio (SSMS) or any other tool to execute the SQL script file provided with the project.

Ensure that the database connection string in the project's configuration file is correctly updated with the necessary details to connect to the database.

Once the project is running, you can access the College Management System through your web browser and start using its various features.







