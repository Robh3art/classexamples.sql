CREATE TABLE Students ( StudentID int NOT NULL,PRIMARY KEY(StudentID), StudentName varchar(255), Gender varchar(255), EmailAddress varchar(255), DateOfBirth date, AdmissionNumber int );
ALTER TABLE Students ADD PhoneNumber int(13);
ALTER TABLE Students MODIFY StudentID int AUTO_INCREMENT;
ALTER TABLE Students MODIFY PhoneNumber INT(13) UNIQUE;
ALTER TABLE Students MODIFY EmailAddress varchar(255)UNIQUE;
ALTER TABLE students CHANGE CourseName CourseID INT;
ALTER TABLE students ADD CONSTRAINT FK_StudentCourse FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);
INSERT INTO students (StudentName,Gender,EmailAddress,DateOfBirth,AdmissionNumber,PhoneNumber,CourseID) VALUES ('Mwai Kibaki','Male','mwai@gmail.com','1970-03-25',8945,0723879878,5), ('Daniel Moi','Male','moi@gmail.com','1992-08-23',2345,0789098902,5), ('Margaret Kenyatta','Female','margaret@gmail.com','1992-08-23',2745,0734567367,5), ('William Ruto','Male','william@gmail.com','1992-08-23',2044,0739854864,5), ('Robert Ndungu','Male','bobdush9@gmail.com','2005-09-206',3891,0748440952,5), ('Felicinah Wanjiku','Female','shupavu@gmail.com','1975-12-02',1050,0726704704,5), ('Moses Maina','Male','musa@gmail.com','1974-07-06',1155,0722349802,5), ('Lucy Wairimu','Female','nimo@gmail.com','2004-04-20',2040,0778954623,5), ('Rafael Kiraka','Male','rafo@gmail.com','2007-08-09',2050,0756127672,5), ('Angela Maina','Female','lukshi@gmail.com','2016-09-30',2344,0745039767,5), ('Christiano Ronaldo','Male','roro@gmail.com','1992-08-23',2554,0790564322,5), ('Lionel Messi','Male','messi@gmai[...]
UPDATE students SET StudentName ="Donald Trump" WHERE StudentID =7;
UPDATE students SET Gender ="Male" WHERE CourseID =18 AND AdmissionNumber= 2745;

CREATE TABLE Classrooms( ClassroomID int NOT NULL,PRIMARY KEY(ClassroomID), ClassName varchar(100), building varchar(100), cvapacity int(5), facilities text, labTech varchar(255) );
ALTER TABLE CLASSROOMS MODIFY ClassroomID int AUTO_INCREMENT;
INSERT INTO Classrooms (ClassName,building,capacity,facilities,labTech) VALUES ('Ericsson Lab','Ilab Africa',60,'lab','Ian Kamau'), ('Oracle Lab','Ilab Africa',55,'lab','Kimani Otieno'), ('Coco lab','Oval Building',100,'lab','Samuel Raphael'), ('Bailey lab','Main Building',80,'lab','Robert Trossard'), ('Duke lab','Admin Building',90,'lab','Trent Omondi'), ('Hazel lab','Science Building',75,'lab','Ayesha Alice'), ('Bella lab','Ilab Africa',60,'lab','Njeri Stacy'), ('Bruno lab','Science Building',55,'lab','MichaelAngelo'), ('Leo lab','Main Building',120,'lab','Steph Njoroge'), ('Molly lab','Oval Building',45,'lab','Simeone Peter'), ('Charlie lab','Oval Building',35,'lab','Emma Kosgie');

CREATE TABLE Events (EventID int NOT NULL,PRIMARY KEY(StudentID), EventName varchar(100), Venue varchar(100), Theme varchar(100), Date date );
ALTER TABLE events MODIFY EventsID int AUTO_INCREMENT;
INSERT INTO events (EventName, Venue, Theme, Date) VALUES ('AutoShow Exhibition', 'Strathmore Grounds','TETEMESHA','2023-02-25'), ('Valentine Premiere', 'Strathmore Grounds','SHOW LOVE','2023-03-25'), ('Community Service', 'Huduma Orphanage','ASSIST THE NEEDY','2023-04-25'), ('Sports Day', 'Strathmore Grounds','LOOSE YOURSELVES','2023-05-25'), ('Open day', 'Auditorium','KNOW YOUR CAREEER PATH','2023-06-25'), ('Movie Night', 'Auditorium','GET OUT OF YOUR SKIN','2023-07-25'), ('Fashion Show', 'Strathmore Grounds','Catch the latest Trends','2023-08-25'), ('Open Market', 'Strathmore Grounds','GROW YOUR BUSSINESS','2023-09-25'), ('Prize Giving Day', 'Amphitheatre','EFFORTS COUNT','2023-10-25'), ('Thanksgiving Mass', 'Chapel','GOD ABOVE ALL','2023-11-25');

CREATE TABLE Courses (CourseID int NOT NULL, primary key(StudentID), CourseName varchar(100), Duration varchar(100), Cost int(15), InterviewDate date );
ALTER TABLE Courses MODIFY CourseID int AUTO_INCREMENT;
  ('Psychology','2 years',50000,'2023-11-04'), ('medicine and Surgery','5 years',100000,'2023-11-05'), ('Computer Science','4years',80000,'2023-11-06');
INSERT INTO courses (CourseName, Duration, Cost, InterviewDate) VALUES ('Law','4 years',100000,'2023-11-04'), ('Financial Engineering','5 years',100000,'2023-11-05'), ('Hospitality and Tourism','3years',50000,'2023-11-06');
INSERT INTO courses (CourseName, Duration, Cost, InterviewDate) VALUES ('Acturial Science','4 years',100000,'2023-11-04'), ('International Relations','2 years',50000,'2023-11-05'), ('Dental surgery','5 years',360000,'2023-11-06'), ('Civil Engineering','6 years',1500000,'2023-11-07');


CREATE TABLE Library (LibraryID int NOT NULL, PRIMARY KEY(LibraryID), BookName varchar(100), CourseName varchar(100), Cost int(15) );
ALTER TABLE library MODIFY libraryID int AUTO_INCREMENT;
INSERT INTO Library (BookName,CourseName,Cost) VALUES ('LongHorn Comp Science','Bachelor Of Computer Science',250000), ('Longhorn Data Science','Bachelor Of Data Science',7500000), ('Maarifa Brain','Pyschology',800000), ('Becoming A Doctor','Medicine and Surgery',800000), ('Teach & Learn','Education',450000), ('LongHorn Plumbing','Water Engineering',250000), ('Hack It Crack It','CyberSecurity',250000), ('Rules & Law','Law',6500000), ('Money Learning','Financial Engineering',500000), ('Business Studies','Business & Commerce',800000), ('Hospitality Studies','Hospitality and Tourism',400000), ('Dental Studies','Dental Surgery',900000), ('Acturial Studies','Acturial Science',300000), ('Civil Studies','Civil Engineering',500000);

CREATE TABLE Lecturer(LecturerID int NOT NULL, PRIMARY KEY(LecturerID), LecturerName varchar(50), Gender varchar(255), EmailAddress varchar(255), DateOfBirh date, AdmissionNumber int(10) );
ALTER TABLE Lecturer MODIFY LecturerID int AUTO_INCREMENT;
ALTER TABLE Lecturer ADD PhoneNumber int(13);
ALTER TABLE Lecturer MODIFY PhoneNumber int(13)UNIQUE;
ALTER TABLE Lecturer MODIFY EmailAddress varchar(255)UNIQUE;
ALTER TABLE lecturer ADD CourseName varchar(100);
ALTER TABLE lecturer CHANGE CourseName CourseID INT;
ALTER TABLE lecturer ADD CONSTRAINT FK_Course FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);
INSERT INTO lecturer (LecturerName,Gender,EmailAddress,DateOfBirth,AdmissionNumber,PhoneNumber,CourseID) VALUES ('Ezekiel Marangi','Male','marangi@gmail.com','1965-03-25',1005,0723879358,5), ('Michael Nataraji','Male','nataraji@gmail.com','1966-08-23',2245,0789046902,5), ('Cynthia Wambui','Female','cynthia@gmail.com','1967-08-23',3948,0734947367,5), ('Uhuru Kenyatta','Male','uhuru@gmail.com','1968-08-23',4038,0739475864,5), ('Prof Odhiambo','Male','odhi@gmail.com','1969-09-20',5682,0748440452,5), ('Shantell Beauty','Female','shantell@gmail.com','1970-12-02',6729,0726374704,5), ('Mwai Kibaki','Male','mwai@gmail.com','1971-07-06',7293,0722340562,5), ('Miley Cyrus','Female','miley@gmail.com','1972-04-20',8235,0793954623,5), ('Prof Owino','Male','owish@gmail.com','1973-08-09',9203,0756004672,5), ('Bi Nekita','Female','nek@gmail.com','1974-09-30',1834,0745023467,5), ('Dr. Mwale ','Male','mwahh@gmail.com','1975-08-23',2348,0790332322,5), ('Simon Kinyamu','Male','simo@gmail.com[...]