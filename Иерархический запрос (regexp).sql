select level, regexp_substr(regexp_substr('11111,22222,33333,44444,55555','[^,]*,|.*$',1,level),'[^,]*',1,1) column_regexp
from dual
connect by regexp_substr('11111,22222,33333,44444,55555','[^,]*,|.*$',1,level) is not null; 
