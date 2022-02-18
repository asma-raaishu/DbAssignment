create database Date_time_formats
use Date_time_formats 
SELECT (SUBDATE(ADDDATE(CURDATE(),INTERVAL 1 MONTH),INTERVAL DAYOFMONTH(CURDATE())DAY)) AS LastDayOfTheMonth;
SELECT (SUBDATE(ADDDATE(CURDATE(),INTERVAL -3 MONTH),INTERVAL DAYOFMONTH(CURDATE())DAY)) AS LastDayOfTheMonth;
/* intervals is performing the task where the lastdayofthemonths, three months before the current month*/