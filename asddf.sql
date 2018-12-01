insert into cell (cellNum, bedsAvailable, sectionID)
(select prionser.cellNum, 4-COUNT(prionser.cellNum), prionser.behaviourRisk
from prionser 
group by cellNum);