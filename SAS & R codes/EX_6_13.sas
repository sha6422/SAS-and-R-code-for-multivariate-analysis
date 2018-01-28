data film;
infile 'H:\Courses_UNCC\STAT7133-8133\59865-0132326809_data\T6-4.dat';
input fac1 fac2 x1 x2 x3;
run;


proc print data=file;
run;

proc glm data=film;
class fac1 fac2;
model x1 x2 x3 = fac1 fac2 fac1*fac2 / ss3;
manova h= fac1 fac2 fac1*fac2 / printe;
means fac1 fac2;
run;


 
