select Branch_Name
	  ,Branch_Code
	  ,a12.Customer_Name
	  ,a12.Customer_Number
from edw.d_Branch a
join edw.d_Customer a12
on a12.Customer_Name not like '%'+a.Branch_Code+'%'
where (a12.Customer_Name not like 'NSF%' or a12.Customer_Name not like '%Cash Sale%' or a12.Customer_Name not like '%Certified Tech%' or a12.Customer_Name not like'%WALK %' or a12.Customer_Name not like '%Branch%' or 
a12.Customer_Name not like'%WALK-IN%' or  a12.Customer_Name not like '%WALKIN%' OR a12.Customer_Name not like 'MANFS%') and (a12.Customer_Name = 'TURKEY BRANCH REF.-#2549 FOOD' and a12.Customer_Name=
'TURKEY BRANCH REF/KROGER #U522')
order by b.Customer_Name

select Customer_Name
from edw.d_Customer a12
where (a12.Customer_Name not like 'NSF%' or a12.Customer_Name not like '%Cash Sale%' or a12.Customer_Name not like '%Certified Tech%' or a12.Customer_Name not like'%WALK %' or a12.Customer_Name not like '%Branch%' or 
a12.Customer_Name not like'%WALK-IN%' or  a12.Customer_Name not like '%WALKIN%' OR a12.Customer_Name not like 'MANFS%') 
or (a12.Customer_Name = 'TURKEY BRANCH REF.-#2549 FOOD' or a12.Customer_Name= 'TURKEY BRANCH REF/KROGER #U522')
