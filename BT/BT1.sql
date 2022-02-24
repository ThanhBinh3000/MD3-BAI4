use quanlysinhvien;
 
#hien thị thông tin môn học (bảng subject) có credit lớn nhất 
select *
from subject
where Credit = 
          (select max(Credit) from subject);

#hiển thị các thông tin môn học có điểm thị lớn nhất 
select subject. *
from subject join mark on subject.SubId = Mark.subid
where mark >= all
        (select mark from mark);          
        
# hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự tại điểm giảm dần
select student. *, avg(mark) As 'Diem TB'
from student join mark on student.StudentId = Mark.studentID
group by student.StudentId
order by 'Diem TB' desc;