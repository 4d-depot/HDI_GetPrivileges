//%attributes = {"invisible":true}

var Infos : Collection
var objTabs : Object
//var LinesCode : Collection
ARRAY TEXT:C222(LinesCode; 0)



Infos:=ds:C1482.INFO.query("PageNumber < 10").orderBy("PageNumber").toCollection()
objTabs:=New object:C1471("values"; Infos.extract("TabTitle"); "index"; 0)
//_Descriptions_0:=Infos.extract("Description")


//LinesCode:=ds.INFO.query("PageNumber >= 10").orderBy("PageNumber").Description

QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=10)
ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
SELECTION TO ARRAY:C260([INFO:1]Description:2; LinesCode)

QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=1)
READ WRITE:C146([INFO:1])
