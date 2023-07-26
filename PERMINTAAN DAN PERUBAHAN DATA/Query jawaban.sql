USE DB_StudentInformation

-- 1
select S.Student_ID,S.Name,Program_of_Study, Email_Address,Phone, Address, City  from Student S
join [dbo].[student_Profile] as SP on SP.Student_ID = S.Student_ID
join [dbo].[Student_Grade] as SS on SS.Student_ID = S.Student_ID
where City = 'Kingston'

-- 2
select S.Student_ID,S.Name,Program_of_Study, Subject_Name, Grade, Address  from Student S
join [dbo].[student_Profile] as SP on SP.Student_ID = S.Student_ID
join [dbo].[Student_Grade] as SS on SS.Student_ID = S.Student_ID
where Subject_Name = 'Subject A' and Program_of_Study = 'Computer Science'

--3
insert into dbo.[student_Profile] (Student_ID, Name,Email_Address, Phone, Address, City)  values
('29361', 'Glen Chavez','Chavez_Glen@xfinity.com', '702-737-4764','2965 Jacobs Street','Pittsburgh' ),
('83604','Kimberly Ashley','Kimberly_Ashley@comcast.net','853-862-3087','4998 Benedum Drive','Kingston'),
('57784','Robert Jones','Jones.Robert@outlook.com','928-868-4951','4998 Benedum Drive','Kingston'),
('23489','Amber Williams','AmberWilliams17@mail.com','713-575-2422','4600 Melody Lane','Richmond'),
('26678','Bryan Benson','Bryan_Benson@protonmail.com','358-767-5696','2094 Biddie Lane','Richmond'),
('52345','Sharon Miller','SMiller34@gmail.com','128-806-1850','3166 Single Street','Kingston'),
('88643','William Franco','Franco_William@yahoo.com','588-420-6039','4600 Melody Lane','Richmond'),
('57823','Gregory Johnson','Gregory.J@comcast.net','653-480-0263','3901 Single Street','Kingston'),
('67209','Laurie Ward','Laurie.Ward19@att.com','299-960-5941','2953 Rosebud Avenue','Little Rock'),
('13532','Laura Gilbert','Gilbert_Laura@att.com','359-490-1979','2372 Parker Drive','Cleveland')

--4
UPDATE dbo.[Student_Grade]
SET Grade = 'A'
WHERE Subject_Name = 'Subject C' and Student_ID = '50460';


UPDATE dbo.[Student_Grade]
SET Grade = 'B'
WHERE Subject_Name = 'Subject A' and Student_ID = '20212';


UPDATE dbo.[Student_Grade]
SET Grade = 'B'
WHERE Subject_Name = 'Subject B' and Student_ID = '20212';


--5
select S.Student_ID, S.Name, SG.Subject_Name, SG.Grade, SP.Address, SP.City from Student S
join [dbo].[Student_Grade] as SG on SG.Student_ID = S.Student_ID
join [dbo].[student_Profile] as SP on SP.Student_ID = S.Student_ID
where Subject_Name = 'Subject B' and Grade = 'A' and City IN (select City from [dbo].[student_Profile] where City = 'Kingston')

--6
select SP.Student_ID, SP.Name, Email_Address
from [dbo].[student_Profile] SP
join Student on Student.Student_ID = SP.Student_ID
where Email_Address like '%@outlook%'


