create database md3_bai4_baitap;
-- drop database md3_bai4_baitap;
use md3_bai4_baitap;

SELECT * FROM md3_bai3_baithuchanh1.class;
SELECT * FROM md3_bai3_baithuchanh1.mark;
SELECT * FROM md3_bai3_baithuchanh1.student;
SELECT * FROM md3_bai3_baithuchanh1.subject;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
select s.SubId, s.SubName, max(s.Credit), s.Status
from md3_bai3_baithuchanh1.subject s;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất. 
select s.SubName as CR_LonNhat , max(m.mark)
from md3_bai3_baithuchanh1.subject s join md3_bai3_baithuchanh1.mark m on s.SubId = m.SubId
group by s.SubId;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên,
-- xếp hạng theo thứ tự điểm giảm dần 
select s.StudentName, avg(m.mark) as DTB
from md3_bai3_baithuchanh1.student s join md3_bai3_baithuchanh1.mark m on s.StudentId = m.StudentId
group by s.StudentId