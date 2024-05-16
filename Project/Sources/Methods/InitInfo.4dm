//%attributes = {"invisible":true}

var Infos : Collection
var objTabs : Object
var LinesCode : Collection

Infos:=ds:C1482.INFO.query("PageNumber < 10").orderBy("PageNumber").toCollection()
objTabs:=New object:C1471("values"; Infos.extract("TabTitle"); "index"; 0)
//_Descriptions_0:=Infos.extract("Description")


LinesCode:=ds:C1482.INFO.query("PageNumber >= 10").orderBy("PageNumber").Description


