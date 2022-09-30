SELECT ID, score, 
    CASE 
    WHEN score<40 THEN "F" 
    WHEN score<60 AND score>=40 THEN "C" 
    WHEN score<80 AND score>=60 THEN "B" 
    ELSE "A" 
    END AS grade 
FROM marks;
