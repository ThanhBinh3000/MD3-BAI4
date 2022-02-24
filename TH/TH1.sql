use quanlysinhvien;

#1) hiển thị số lượng sinh viên ở từng nơi 
select address, count(studentid) AS 'so luong hoc vien'
from student
group by Address;

#2) tính điểm trung bình các môn học của mỗi học viên bằng các sử dụng hàm AVG
select s.studentid, s.studentname, avg(mark)
from student s join mark M on s.StudentId = M.StudentId
group by s.StudentId, s.StudentName;

#3)hiển thị các học viên có điểm trung bình lớn hơn 15
#)đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;
#sử dụng having để xét điều kiện điểm trung bình các môn học lớn hơn 15
select s.studentid, s.studentname, avg(mark)
from student s join mark M on s.StudentId = M.StudentId
group by s.StudentId, s.StudentName
having avg (Mark) >15;

#4) hiển thị các học viên có điểm trung bình lớn nhất
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;
#sử dụng having và all để tìm học viên có điểm trung bình lớn nhất 
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
having avg(mark) >= all (select avg(mark) from mark group by Mark.studentid);
