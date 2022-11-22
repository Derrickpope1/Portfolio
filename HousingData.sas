* Null and Alternative Hypotheses

H0: Retention Rates and Housing Status are not associated.
Alt: Retention Rates and Housing Staus are associated. 
;

data f2015retention;
	input Housing $ Retained $ N;
	datalines;
	On    Y   945
	Off   Y   203
	On    N   104
	Off   N   60
	;
run;

proc freq data=f2015retention order=data;
	weight N;
	tables Housing*Retained / chisq nocol nopercent;
run;

data f2015grad;
	input Housing $ Graduated $ N;
	datalines;
	On    Y   364
	Off   Y   66
	On    N   685
	Off   N   197
	;
run;

proc freq data=f2015grad order=data;
	weight N;
	tables Housing*Graduated / chisq nocol nopercent;
run;

*The Null Hypothesis was rejected. *******************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
;

data f2016retention;
	input Housing $ Retained $ N;
	datalines;
	On    Y   948
	Off   Y   197
	On    N   133
	Off   N   24
	;
run;

proc freq data=f2016retention order=data;
	weight N;
	tables Housing*Retained / chisq nocol nopercent;
run;

data f2016grad;
	input Housing $ Graduated $ N;
	datalines;
	On    Y   365
	Off   Y   65
	On    N   716
	Off   N   156
	;
run;

proc freq data=f2016grad order=data;
	weight N;
	tables Housing*Graduated / chisq nocol nopercent;
run;

*The Null Hypothesis was not rejected. *******************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
;

data f2017retention;
	input Housing $ Retained $ N;
	datalines;
	On    Y   883
	Off   Y   235
	On    N   130
	Off   N   41
	;
run;

proc freq data=f2017retention order=data;
	weight N;
	tables Housing*Retained / chisq nocol nopercent;
run;

data f2017grad;
	input Housing $ Graduated $ N;
	datalines;
	On    Y   329
	Off   Y   78
	On    N   684
	Off   N   198
	;
run;

proc freq data=f2017grad order=data;
	weight N;
	tables Housing*Graduated / chisq nocol nopercent;
run;

*The Null Hypothesis was not rejected. *******************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
**********************************************************************************************
;

data fall2015relativeretention;
	input WithRelative $ Retained $ N;
	datalines;
	With    Y  116
	Without Y  87
	With    N  11
	Without N  49
	;
run;

proc freq data=fall2015relativeretention order=data;
	weight N;
	tables WithRelative*Retained / chisq nocol nopercent;
run;

data fall2015relativegraduation;
	input WithRelative $ Graduated $ N;
	datalines;
	With    Y  40
	Without Y  26
	With    N  87
	Without N  110
	;
run;

proc freq data=fall2015relativegraduation order=data;
	weight N;
	tables WithRelative*Graduated / chisq nocol nopercent;
run;

data fall2017relativeretention;
	input WithRelative $ Retained $ N;
	datalines;
	With    Y  151
	Without Y  84
	With    N  13
	Without N  28
	;
run;

proc freq data=fall2017relativeretention order=data;
	weight N;
	tables WithRelative*Retained / chisq nocol nopercent;
run;

data fall2017relativegraduation;
	input WithRelative $ Graduated $ N;
	datalines;
	With    Y  55
	Without Y  23
	With    N  109
	Without N  89
	;
run;

proc freq data=fall2017relativegraduation order=data;
	weight N;
	tables WithRelative*Graduated / chisq nocol nopercent;
run;