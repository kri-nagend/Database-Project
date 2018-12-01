select cell.cellNum, 4-COUNT(prionser.cellNum)
from cell 
left join prionser 
on cell.cellNum = prionser.cellNum
group by cell.cellNum;