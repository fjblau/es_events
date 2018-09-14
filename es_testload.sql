select nsenid,
plannedpickup,
planneddelivery,
ifnull(laststatus,'N/A') laststatus,
ifnull(lastupdatedate, sysdate()) lastupdatedate
from es_testload
where lastupdatedate > :sql_last_value