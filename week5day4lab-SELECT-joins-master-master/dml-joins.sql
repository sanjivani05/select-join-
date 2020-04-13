--1.**Write a query to return all the rows from user_new table and role tables where there is matching user_new.role_id value in both the usernew and role tables. 
    --Display role.name and user_new.name in ascending order.**

SELECT role.name,user_new.name
FROM role
JOIN user_new
ON role.id=user_new.id;

--2.**Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal. 
    --Display role.name and user_new in ascending order.**

SELECT * FROM role JOIN user_new
ON role.id=user_new.id;

--3. Write a query to return all names from the user_new table where there is matching user_new.role_id value in both the user_new and role tables.

SELECT user_new.name
FROM user_new
JOIN role
ON role.id=user_new.id;

--4. Write a query to return all  user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new table where there is matching 
--  - profile id in both user_new and profile table, 
--  - profile.degree_id and degree.id from profile and degree table, 
--  - degree.department_id and department.id in degree and department
--  - profile.id and experience.profile_id in experience and profile table
--  - where user_name.name = "ProGrad" and experience.currentValue=3

select user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
from user_new
inner join profile on user_new.profile_id = profile.id
inner join degree on profile.degree_id = degree.id
inner join department on degree.department_id = department.id
inner join experience on profile.id = experience.profile_id
and user_new.name = 'PROGRAD' and experience.currentValue=3;

--5. Write a query to return all user_new.name, skill.name from user_new table where there are matching ids in the tables in the order with constraints given below
--  - role
--  - profile
--  - profile_skills
--  - where role.name="Alumini" 
--  - Display by user_new.name and skill.name

select user_new.name, skills.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join skills on profile.id = skills.id
where role.name = 'Alumini';

--6. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name = "Alumini"
--  - Display in the order user_name.name followed by experience.company_name

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by user_new.name,experience.company_name;

--7. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name = "Alumini"
--  - Display in the order user_name.name followed by experience.company_name

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by user_new.name,experience.company_name;

--8. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1
--  - Display in the order of user_new.name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and experience.currentValue=1
order by user_new.name;

--9. Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008' 
--  - Display in the order of user_new.name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and experience.currentValue=1 and profile.batch='2008'
order by user_new.name;

--10. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and user_new.profile_id is not null 
--  - Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and user_new.profile_id is not null
order by user_new.name;

--11. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and profile.batch='2008'
--  - Display in the order of user_new.name;     

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.batch='2008'
order by user_new.name;

--12. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - where role.name='Alumni' and degree.name='BSC_CT'
--  - Display in the order of user_new.name;  

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and degree.name='BSC_CT'
order by user_new.name;

--13. Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - where role.name='Alumni' and department.name='CSE'
--  - Display in the order of user_new.name;  

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and department.name='CSE'
order by user_new.name;
                     
--14. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - higher_degree
--  - department
--  - where role.name='Alumni' and higher_degree.degree_name is not null
--  - Display in the order of user_new.name,higher_degree.university_name 

select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

--15. Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - higher_degree
--  - department
--  - where role.name='Alumni' and higher_degree.degree_name is not null
--  - Display in the order of user_new.name,higher_degree.university_name 

select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

--16. Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - higher_degree
--  - where role.name='Alumni' and higher_degree.university_name='Texas University'
--  - Display in the order of user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by user_new.name;

--17. Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables  
--  - role
--  - profile
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;

select user_new.name, profile.batch from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

--18. Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables  
--  - role
--  - profile
--  - degree
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;

select user_new.name, profile.batch,degree.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;


--19. Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - where role.name='Alumni' and profile.gender='female'
--  - Display in the order of user_new.name;

select user_new.name, profile.batch,degree.name,department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

--19. Write a query to return all degree.name, department.name from degree where there are matching ids in the tables 
--  - department
--  - Display in the order of degree.name;

select degree.name, department.name from degree
inner join department on degree.department_id= department.id
order by degree.name;


--20. Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - where role.name='Alumni' and profile.gender='male'
--  - Display in the order of user_new.name;                                     

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='male'
order by user_new.name;

--21. Write a query to return all  user_new.name, profile.designation from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - experience
--  - where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
--  - Display in the order of user_new.name; 

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name;

--22. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
--  - querytable
--  - Display in the order of user_new.name;

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
order by user_new.name;

--23. Write a query to return all  user_new.name, querytable.content from user_new where there are matching ids in the tables 
--  - querytable
--  - where parent_id is not null
--  - Display in the order of user_new.name;

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
where querytable.parent_id is not null
order by user_new.name;

--24. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - Display in the order of user_new.name;

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
order by user_new.name;
                   
--25. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - where post_type.name='Technology'
--  - Display in the order of user_new.name,post.dateof;                                       

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where  post_type.name='Technology'
order by user_new.name,post.dateof;

--26. Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables 
--  - post
--  - where post.dateof='2013'
--  - Display in the order of user_new.name, post.dateof, post.content;      

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where post.dateof='2013'
order by user_new.name,post.dateof,post.content;

--27. Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables 
--  - role
--  - profile
--  - degree
--  - department
--  - profile_skills
--  - skill
--  - where skill.name='Programming'
--  - Display in the order of user_new.name;                         

select user_new.name, department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
inner join profile_skills on user_new.profile_id = profile_skills.profile_id
inner join skills on profile_skills.skill_id = skills.id
where skills.name='Programming'
order by user_new.name;

--28. Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables 
--  - event
--  - where role.name='Alumni'
--  - Display in the order of user_new.name,event.dateof
--  - Display event in descending order.

select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
inner join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof,events.name desc;

--29. Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables 
--  - event
--  - role
--  - where role.name='Alumni'
--  - Display in the order of user_new.name,event.dateof

select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
inner join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof;