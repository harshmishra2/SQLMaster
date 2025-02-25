Select (case
       when g.grade<8 then 'NULL'
       else s.name
       end), g.grade, s.marks
      
      from students s, grades g where S.MARKS >= MIN_MARK AND S.MARKS <= MAX_MARK
       
order by g.grade desc, s.name, s.marks ;


-- https://www.hackerrank.com/challenges/the-report/problem
