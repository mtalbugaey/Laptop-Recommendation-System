start:-
writeln("****************************** Laptop Selection Recommendation System ****************************"),
writeln("******************** here you can know the ideal laptop for you in a few minutes! ********************"),nl,
menu.
 
menu:-
writeln('Please choose the category you intrested in: '),
writeln('1- Daily Use'),
writeln('2- Programming'),
writeln('3- Gaming and Designing'),
read(A),
(not(A==1),not(A==2),not(A==3) ->
writeln("Incorrect entry! choose a number between 1-3."), menu;
category(A)).
 
% ------------------------- Daily Use -------------------------------
category(1):-
    writeln('Mac OS?'),
writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),category(1);
((A=='yes') ->
q1_DU;
q2_DU)
).
 
 
q1_DU:-
    writeln('Do you want it with touch bar?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q2_DU;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('Apple MacBook Pro 13 M2 Retiena + Touch bar'),
            writeln('Thank you for utilizing our system!'), abort);
        
(   writeln('The Ideal Laptop for you is:'),
            writeln('Apple MacBook Pro with M2 chip'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).
 
q2_DU:-
    writeln('Do you need it tp be portable?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q3_DU;
((A=='yes') ->
q4_DU;
q5_DU)
).
 
q4_DU:-
     writeln('Is your bugdet limtited?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q5_DU;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('Acer Aspire 3 A315-56'),
            writeln('Thank you for utilizing our system!'), abort);
        
(   writeln('The Ideal Laptop for you is:'),
            writeln('HP Pavillion 14-dv2022nx'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).
 
q3_DU:-
    writeln('Do you prefer it to be a touch sreen?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q4_DU;
((A=='yes') ->
q5_DU;	
        q4_DU)
).
 
q5_DU:-
     writeln('Decide if you want a 2-in-1?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q5_DU;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('Mircosoft Surface Pro 9 2-in-2 labtop'),
            writeln('Thank you for utilizing our system!'), abort);
        
            q4_DU)
).
 
% ------------------------ Programming ------------------------------
category(2):-
    writeln('For college?'),
writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),category(2);
((A=='yes') ->
q10_PRG;
q20_PRG)
).
 
q10_PRG:-
    writeln('Do you prefer a LED screen?'),
    writeln('(yes/no)'),
    read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q10_PRG;
(((A=='yes'); (A=='no')) ->
        	q11_PRG)
).
 
q11_PRG:-
    writeln('Do you need to carry it with you in college?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q10_PRG;
((A=='yes') ->
        q111_PRG;
        q112_PRG)
    ).
 
q111_PRG:-
    writeln('Do you need it to be large battery life?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q11_PRG;
((A=='yes') ->
       		(   writeln('The Ideal Laptop for you is:'),
            writeln('Dell inspiron 13 5310'),
            writeln('Thank you for utilizing our system!'), abort );
       
    		(   writeln('The Ideal Laptop for you is:'),
            writeln('Apple MacBook Air M1'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).
    
 
q112_PRG:- 
    writeln('Do you like it to be with large screen size?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q11_PRG;
((A=='yes') ->
        q1121_PRG;
        q1122_PRG)
    ).
 
q1121_PRG:-
    writeln('is your budget limited?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q112_PRG;
((A=='yes') ->
        	(writeln('The Ideal Laptop for you is:'),
            writeln('Lenovo IdealPad 5'),
            writeln('Thank you for utilizing our system!'), abort);
        
q111_PRG)
).
 
q1122_PRG:- 
    (   
    q111_PRG).
 
 
q20_PRG:-
    writeln('iOS Development?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q20_PRG;
((A=='yes') ->
q21_PRG;
q22_PRG)
).
 
q21_PRG:-
    writeln('Do you need it to be portable?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q21_PRG;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('Apple MacBook pro 13-inch'),
            writeln('Thank you for utilizing our system!'), abort);
        
(   writeln('The Ideal Laptop for you is:'),
            writeln('Apple MacBook pro 16-inch'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).
 
q22_PRG:-
    writeln('Do you prefer Windows OS?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q22_PRG;
((A=='yes') ->
q23_PRG;
q21_PRG)
).
 
q23_PRG:-
    writeln('Game Development?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q22_PRG;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('Asus ROG Zephyrus G15'),
            writeln('Thank you for utilizing our system!'), abort);
q24_PRG)
).
 
q24_PRG:-
    writeln('Do you need it to be portable?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q24_PRG;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('HP Spectre x360'),
            writeln('Thank you for utilizing our system!'), abort);
        
(   writeln('The Ideal Laptop for you is:'),
            writeln('Lenovo ThinkPad X1 Extreme'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).
    
 
% ------------------------ Gaming and Designing ------------------------------
category(3):-
    writeln('Do you have limited budget?'),
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),category(3);
     	((A == 'yes') -> 
    	question3_1; 
      	question3_2)
    ). 
 
question3_2:- 
    writeln('Do you need high quality screen ?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),question3_2;
     question3_3). 
 
question3_3:- 
    writeln('Do you need large screen size ?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),question3_3;
    question3_1).
 
question3_1:-
    writeln('Do you need large capacity ?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),question3_1;
     question3_4). 
 
question3_4:- 
    writeln('Do you need fast data transfer ?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),question3_4;
     question3_5). 
 
 question3_5:- 
    writeln('Do you need high performance ?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),question3_5;
     question3_6).
 
question3_6:-
    writeln('Do you use it for many hours a day?'), 
    writeln('(yes/no)'), 
read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Invalid Input! You must write either yes or no."),q24_PRG;
((A=='yes') ->
(   writeln('The Ideal Laptop for you is:'),
            writeln('ASUS ROG Zephyrus'),
            writeln('Thank you for utilizing our system!'), abort);
        
(   writeln('The Ideal Laptop for you is:'),
            writeln('ASUS A15'),
            writeln('Thank you for utilizing our system!'), abort )
        )
).

