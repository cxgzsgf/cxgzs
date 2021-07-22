

function main()
aa=gg.choice({
"更改模式[ "..ms.." ]",
"启动杀戮[ "..sL.." ]",
"反回弹踏空[  "..tk.."  ]",
"退出辅助[  Exit  ]",
},0,"小狗1.23 技术支持：成龙\nQQ：2213862094")
if aa==1 then cb() end 
if aa==2 then if SL==true then  SL=false sL="关闭" slon() 
else
if SL==false then  SL=true sL="开启" sloff() end
end
end
if aa==3 then if TK==true then TK=false tk="关闭" jump()
else
if TK==false then TK=true tk="开启" jump2() end
end
end
if aa==4 then
gg.setVisible(true)
os.exit(print("小狗 1.23\nExit."))
end
end
function cb()
CB=gg.prompt({
"输入你要改的模式\n(By 小狗1.23)"}, {"(0生存 1创造 2冒险 不可随便输入)"})
if CB==nil or CB=="" then os.exit(gg.alert("输入错误")) end 
if CB[1]=="0" then ms="生存" end 
if CB[1]=="1" then ms="创造" end
if CB[1]=="2" then ms="冒险" end
qmnb = {
{["memory"] = 4},
{["name"] = "创背"},
{["value"] = -1113550802, ["type"] = 4},
{["lv"] = 65793, ["offset"] = -1576, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -780, ["type"] = 4},
}
qmxg = {
{["value"] = CB[1], ["offset"] = -2040, ["type"] = 4},
}
xqmnb(qmnb)
gg.alert("当前模式:"..ms)
end
function slon()
qmnb={
{memory = 4},
{name ="杀戮"},
{value = "540672", type = "6"},
{lv = "98312", offset = "0x4", type = "6"},
}
qmxg={
{value = "8684920", offset = "0x4", type = "6"}
}
xqmnb(qmnb)
gg.alert("Kill aura: on")
end
function sloff()
qmnb={
{memory = 4},
{name ="杀戮"},
{value = "540672", type = "6"},
{lv = "8486920", offset = "0x4", type = "6"},
}
qmxg={
{value = "98312", offset = "0x4", type = "6"}
}
xqmnb(qmnb)
gg.alert("Kill aura: off")
end
function jump()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(10000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3510607e-38}})
end
gg.clearResults()
gg.alert("Air Jump: on")
end
function jump2()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Air Jump: off")
end
function qwert() while true do if gg.isVisible(true) then gg.setVisible(false) gg.setRanges(16) gg.clearResults() main() gg.setVisible(false) end end end qwert()