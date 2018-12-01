insert into section (sectionID, riskLevel,cellCount)
(select distinct cell.sectionID, "asdf", count(cell.cellNum)
from cell
group by sectionID);