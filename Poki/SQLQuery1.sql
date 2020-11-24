--1.) What grades are stored in the database?
--SELECT * FROM Grade;

--2.) What emotions may be associated with a poem?
--SELECT e.Name FROM Emotion e;

--3.) How many poems are in the database?
--SELECT COUNT(p.Id) FROM Poem p;

--4.) Sort authors alphabetically by name. What are the names of the top 76 authors?
--SELECT TOP 76 a.Name FROM Author a
--ORDER BY a.Name ASC

--5.) Starting with the above query, add the grade of each of the authors.
--SELECT TOP 76 a.Name, g.Name  FROM Author a
--JOIN Grade g ON a.GradeId = g.Id
--ORDER BY a.Name ASC

--6.) Starting with the above query, add the recorded gender of each of the authors.
--SELECT TOP 76 a.Name, g.Name FROM Author a
--JOIN Gender g ON a.GenderId = g.Id
--ORDER BY a.Name ASC;