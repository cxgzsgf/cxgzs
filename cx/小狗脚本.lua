function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find
    (szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] =
      string.sub(szFullString, nFindStartIndex, string.len
      (szFullString))
      break end
    nSplitArray[nSplitIndex] = string.sub
    (szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len
    (szSeparator)
    nSplitIndex = nSplitIndex + 1 end return
  nSplitArray end
function xgxc(szpy, qmxg)
  for x = 1, #(qmxg) do
    xgpy = szpy + qmxg[x]["offset"]
    xglx = qmxg[x]["type"]
    xgsz = qmxg[x]["value"]
    xgdj = qmxg[x]["freeze"]
    if xgdj == nil or xgdj == "" then
      gg.setValues({[1]
        = {address = xgpy, flags = xglx, value = xgsz}})
     else
      gg.addListItems({[1]
        = {address = xgpy, flags = xglx,
          freeze = xgdj, value = xgsz}}) end
    xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1]["memory"])
  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2]["name"] .. "开启失败")
   else
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2]["name"] .. "开启失败")
     else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0 if sz > 999999 then
        sz = 999999 end for i = 1, sz do
        pdsz = true for v = 4, #(qmnb) do if
            pdsz == true then
            pysz = {} pysz[1]
            = {} pysz[1].address
            = sl[i].address + qmnb[v]["offset"] pysz[1].flags
            = qmnb[v]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd
            = split(pdpd, ";") tzszpd
            = szpd[1] pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true else
              pdjg = false pdsz = false end end end if
          pdjg == true then szpy
          = sl[i].address xgxc(szpy, qmxg) end end
      if xgjg == true then
        gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")
       else
        gg.toast(qmnb[2]["name"] .. "开启失败")
      end
    end
  end
end

gg.alert("QQ:2213862094")

function Main0()
SN = gg.choice({
	 "服务器功能区",
	 "普通联机功能区",
}, nil, "-by小狗")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 Xz16()
end
Xz=0
end

function Main1()
SN = gg.choice({
	 "背包附魔『进入游戏后开』",
	 "随机附魔『进入游戏后开』",
	 "精准附魔『进入游戏后开』",
	 "物品修改『进入游戏后开』", 
	 "特殊物品『进入游戏后开』",
	 "物品叠加『进入游戏后开』",
	 "附魔修改『进入游戏后开』",
	 "任意副手『进入游戏后开』",
	 "浮空飞天『进入游戏后开』『花雨庭可用』",
	 "超级穿墙『进入游戏后开』『花雨庭可用』",
	 "超级飞天『进入游戏后开』『花雨庭可用』",
	 "超级飞天『进入游戏后开』『Hty可用』",
	 "飞行权限『进入游戏后开』『花雨庭不可用』",
	 "人物假死『进入游戏后开』",
	 "杀戮光环『进入游戏后开』『无法使用』",
	 "长臂猿『进入游戏后开』『PVP必备』",
	 "刷经验『进入游戏后开』",
	 "返回主页",
}, nil, "-by小狗")
if SN==1 then
	 Xz1() --背包附魔
end
if SN==2 then
     XzSJ() --随机附魔
end
if SN==3 then
	 Xz2() --精准附魔
end
if SN==4 then
	 Xz3() --物品修改
end
if SN==5 then
	 Xz4() --特殊物品
end
if SN==6 then
	 Xz5() --物品叠加
end
if SN==7 then
	 Xz6() --附魔修改
end
if SN==8 then
	 Xz7() --任意副手
end
if SN==9 then
	 Xz8() --浮空飞天
end
if SN==10 then
	 Xz9() --超级穿墙 花雨庭
end
if SN==10 then
	 Xz11() --超级飞天 花雨庭
end
if SN==12 then
	 Xz11() --超级飞天 Hty
end
if SN==13 then
	 XzQX() --飞行权限
end
if SN==14 then
	 XzJS() --人物假死
end
if SN==15 then
     XzGH() --杀戮光环
end
if SN==16 then
	 XzCBY() --长臂猿
end
if SN==17 then
     XzSJY() --刷经验
end
if SN==18 then 
     Xz12() --返回主页
end

Xz=0
end

function Xz1()
     gg.clearResults()
     gg.setRanges(4)
     gg.searchNumber("-104B;-88B~-50B;1W;2D;1D::41",2)
     gg.searchNumber("1",2)
     gg.getResults(99999)
     gg.editAll("32767",2)
     gg.toast("全附魔32K防崩溃开启成功")
end

function XzSJ()
     local Mx = gg.prompt({
     "请输入您今天的幸运数字"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入数字") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的等级(最高32767)"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入你要修改的等级") os.exit()
end
	 gg.setRanges(4,1)
	 gg.searchNumber("-128B;10B;2D;"..Mx[1]..";2D;1D;9D;1D::400", gg.TYPE_WORD )
	 gg.searchNumber(Mx[1], gg.TYPE_WORD )
	 gg.getResults(500)
	 gg.editAll(DJ[1], gg.TYPE_WORD)
	 gg.toast("精准附魔开启成功『请重进游戏看看有没有成功 如果崩溃了那么就上号看看』")
	 gg.clearResults()
end
end
end

function Xz2()
     local Mx = gg.prompt({
     "请输入您的武器的等级"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入等级") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的等级(最高32767)"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入你要修改的等级") os.exit()
end

	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber("-104B;"..Mx[1].."::5", gg.TYPE_WORD )
	 gg.searchNumber(Mx[1], gg.TYPE_WORD )
	 gg.getResults(500)
	 gg.editAll(DJ[1], gg.TYPE_WORD)
	 gg.toast("精准附魔开启成功『请重进游戏看看有没有成功 如果崩溃了那么就上号看看』")
	 gg.clearResults()
end
end
end

function Xz3()
     local Mx = gg.prompt({
     "请输入您要修改的物品的ID值"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入ID值") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的物品ID"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入ID值") os.exit()
end

	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber("1.0F;-128B;"..Mx[1].."::9", gg.TYPE_WORD)
	 gg.searchNumber(Mx[1], gg.TYPE_WORD)
	 gg.getResults(100)
	 gg.editAll(DJ[1], gg.TYPE_WORD)
	 gg.toast("物品修改开启成功")
	 local A = gg.alert("是否需要恢复数据(防止闪退 使得你可以再改一次)","好的(那么我将在一分钟后自动恢复)","不需要")
	 if A == 1 then gg.sleep(60000) end
	 if A == 2 then Main0() end
	 gg.setRanges(4,1)
	 gg.searchNumber(DJ[1], gg.TYPE_WORD)
	 gg.getResults(999)
	 gg.editAll(Mx[1], gg.TYPE_WORD)
	 gg.toast("恢复成功")
end
end
end

function Xz4()
 end
function Xz5()
     local Mx = gg.prompt({
     "请输入您要修改的物品ID值"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入物品ID值") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的物品最大重叠数量"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入数量") os.exit()
end
     local Gm = gg.prompt({
     "请输入您要修改的数量"})
     if Gm == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Gm[1]
     if ID == "" then
     print("您还未输入要修改的数量") os.exit()
end

	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber(""..DJ[1]..";1.0F;-128B"..Mx[1].."::68", gg.TYPE_DWORD)
	 gg.searchNumber(DJ[1], gg.TYPE_DWORD)
	 gg.getResults(100)
	 gg.editAll(Gm[1], gg.TYPE_DWORD)
	 gg.toast("物品叠加开启成功")
	 
	 local A = gg.alert("是否需要恢复数据(防止闪退 使得你可以再改一次)","好的(那么我将在一分钟后自动恢复)","不需要")
	 if A == 1 then gg.sleep(60000) end
	 if A == 2 then Main0() end
	 gg.setRanges(4,1)
	 gg.searchNumber(Gm[1], gg.TYPE_DWORD)
	 gg.getResults(100)
	 gg.editAll(Dj[1], gg.TYPE_DWORD)
	 gg.toast("恢复成功")
	
end
end
end
end

function Xz6()
     local Mx = gg.prompt({
     "请输入您要修改的附魔ID"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入等级") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的ID"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入你要修改的ID") os.exit()
end

	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber("-104B;"..Mx[1].."::5", gg.TYPE_WORD)
	 gg.searchNumber(Mx[1], gg.TYPE_WORD)
	 gg.getResults(500)
	 gg.editAll(DJ[1], gg.TYPE_WORD)
	 gg.toast("附魔修改开启成功『请重进游戏看看有没有成功 如果崩溃了那么就上号看看』")
	 gg.clearResults()
end
end
end

function Xz7()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1208530192", gg.TYPE_DWORD)
	 gg.searchNumber("1208530192", gg.TYPE_DWORD)
	 gg.getResults(100)
	 gg.editAll("1198530561", gg.TYPE_DWORD)
	 gg.toast("任意副手开启成功『全局』")
	 gg.clearResults()
end

function Xz8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("浮空飞天开启成功『花雨庭稳如狗』")
	 gg.clearResults()
end

function Xz9()
gg.toast("开启时请不要动")
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="花雨庭穿墙"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function Xz10()
gg.toast("开启时请不要动")
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="花雨庭飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x138, ["type"] = 1, ["freeze"]=true}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function Xz11()
gg.toast("开启时请不要动")
gg.clearResults()
qmnb={
{["memory"] = 4},
{["name"] ="Hty飞天"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = 0x138, ["type"] = 1, ["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
end
function XzQX()
gg.clearResults()
qmnb={
{["memory"] = 4},
{["name"] ="超级飞行权限"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = 0x144, ["type"] = 1}
}
xqmnb(qmnb)
gg.clearResults()
end

function XzJS()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;20::17", gg.TYPE_FLOAT )
	 gg.searchNumber("20", gg.TYPE_FLOAT )
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("假死开启成功")
	 gg.clearResults()
end

function XzGH()
     end

function XzCBY()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F", gg.TYPE_FLOAT)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("长臂猿已开启")
	 gg.clearResults()
end

function XzSJY()
     XZHH=gg.alert("请准备一个砂轮 往里面放附魔书,然后保持这个页面再开启","好的","退出脚本")
     if XZHH==1 then end
     if XZHH==2 then os.exit() end
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;-128B;403::9", gg.TYPE_WORD)
	 gg.searchNumber("403", gg.TYPE_WORD)
	 gg.getResults(999)
	 gg.editAll("255", gg.TYPE_WORD)
	 gg.toast("刷经验开启成功")
	 gg.clearResults()
end

function Xz12()
	 Main0()
end

function Main2()
SN = gg.choice({
     "随机32k附魔书『进入游戏后开』",
	 "1.19 伪OP『进入游戏后开』",
	 "超级改蛋(改完脚本会退出，需重新运行脚本)",
	 "人物微加速(花雨庭也可)",
	 "人物踏空(花雨庭也可)",
	 "万能副手『进入游戏后开』",
	 "附魔书改物『进入游戏后开』",
	 "改蛋恢复『进入游戏后开』",
	 "坐标显示『进入游戏后开』",
	 "全局加速『进入游戏后开』",
	 "超级除雨『进入游戏后开』",
	 "船加速『进入游戏后开』",
	 "返回主页",
}, nil, "-by小狗")
if SN==1 then
	 XzDIY()
end
if SN==2 then
	 Xz13()
end
if SN==3 then
	 XzFK()
end
if SN==4 then
	 XzWJS()
end
if SN==5 then
	 Xz14()
end
if SN==6 then
	 XzYS()
end
if SN==7 then
	 XzYT()
end
if SN==8 then
	 XzYT2()
end
if SN==9 then
	 XzZBXS()
end
if SN==10 then
	 XzQJJS()
end
if SN==11 then
	 XzCYT()
end
if SN==12 then
	 XzCJS()
end
Xz=0
end

function XzDIY()
	    gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("32767", gg.TYPE_WORD)
  gg.toast("📖改32k外挂成功（32k享受)")
end

function Xz13()
	 qmnb={
{["memory"] = 4},
{["name"] ="创背"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = 0x340, ["type"] = 1, ["freeze"] = true},
{["value"] =1, ["offset"] = 0x1748, ["type"] = 1, ["freeze"] = true}
}
xqmnb(qmnb)
gg.toast("创背开启成功")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1208530192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("1198530561", gg.TYPE_DWORD)
gg.toast("任意副手开启成功")
	 gg.toast("成员伪OP开启成功")
	 gg.clearResults()
end

function XzFK()
	 	 local T=gg.prompt({
"常用蛋id:闪电蛋93 凋零炸弹89 蓝凋零炸弹91 火焰炸弹85 TNT蛋65 凋零蛋52 末影龙蛋53 龙息蛋79 崩服蛋83 照相机蛋62 NPC257"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0D;0D;105D::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(T[1],gg.TYPE_DWORD)
gg.toast("✔改蛋成功✔")
end
end

function XzWJS()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.91", gg.TYPE_FLOAT)
	 gg.searchNumber("0.91", gg.TYPE_FLOAT)
	 gg.getResults(1)
	 gg.editAll("0.85", gg.TYPE_FLOAT)
	 gg.toast("微加速开启成功")
	 gg.clearResults()
end

function Xz14()
     gg.toast("开启时请不要动")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;1.0F;16777473::21", gg.TYPE_DWORD)
	 gg.searchNumber("16777473", gg.TYPE_DWORD)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777473}})
	 end
	 gg.toast("踏空开启成功")
	 gg.clearResults()
end

function XzYS()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1208530192", gg.TYPE_DWORD)
	 gg.searchNumber("1208530192", gg.TYPE_DWORD)
	 gg.getResults(100)
	 gg.editAll("1198530561", gg.TYPE_DWORD)
	 gg.toast("任意副手开启成功『全局』")
	 gg.clearResults()
end

function XzYT()
  local T=gg.prompt({
"部分物品id:弓261 钻石稿278 钻石斧279 钻石剑276 钻石头~鞋310-313 烈焰棒369 头模型397 鞘翅444 三叉戟455 弩471 隐形基岩95 地狱传送门方块90 末地传送门方块119 下界反应核247 发光的黑曜石246 折跃门209 屏障-161 手持物品栏456(闪退) 戴在脚上的金头盔454 气泡698 照相机-160 线条方块-211 结构方块252 循环命令方块188 紫黑棒166 盾牌513 命令块137 连锁命令块189"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1065353216D;16256W;403W;1B::10",127)
gg.searchNumber("403",2)
gg.getResults(999)
gg.editAll(T[1],2)
gg.toast("开启成功,你修改的值是"..T[1])
end
end

function XzYT2()
	 gg.getResults(999)
gg.editAll("105",gg.TYPE_DWORD)
gg.toast("恢复成功")
end

function XzZBXS()
mnb={
{["memory"] = 4},
{["name"] ="坐标"},
{["value"] =10000, ["type"] = 4},
{["lv"] = 513, ["offset"] = -148, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = -528, ["type"] = 4}
}
xqmnb(qmnb)
end

function XzQJJS()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.001", gg.TYPE_FLOAT)
	 gg.searchNumber("0.001", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("0.9", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function XzCYT()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("925D;0.5;0.10000000149::13",16)
	 gg.searchNumber("0.5", 16 )
	 gg.getResults(10)
	 gg.editAll("0", 16)
	 gg.toast("已经除雨了")
	 gg.clearResults()
end

function XzCJS()
local T=gg.prompt({
"输入你要改的速度"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.setRanges(16384)
gg.searchNumber("1F;-1,082,130,432D;1,119,092,736D::",16)
gg.searchNumber("1",16)
b=gg.getResults(1000)
gg.editAll(T[1],16)
gg.toast("开启成功,你修改的值是"..T[1].."，请开船")
end
end

function Xz15()
     Main0()
end

function Xz16()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    Xz = nil
    gg.setVisible(false)
  end
  if Xz == nil then
    Main0()
  end
end
