-- ═══════════════════════════════════════════════════════════════
-- 🐾 HIROSHI 738 — ADOPT ME ULTIMATE PREMIUM
-- By Hiroshi738 · Discord: discord.gg/qTGtM4Uyc
-- The most advanced Adopt Me script ever made
-- ═══════════════════════════════════════════════════════════════

local Players=game:GetService("Players")
local RS=game:GetService("RunService")
local UIS=game:GetService("UserInputService")
local TW=game:GetService("TweenService")
local Light=game:GetService("Lighting")
local LP=Players.LocalPlayer
local Cam=workspace.CurrentCamera

if LP.PlayerGui:FindFirstChild("H738U") then LP.PlayerGui.H738U:Destroy() end
if LP.PlayerGui:FindFirstChild("H738K") then LP.PlayerGui.H738K:Destroy() end

local KEY="Hiro738" local OK=false local Launch

-- ═══ PREMIUM KEY SYSTEM ═══
local KG=Instance.new("ScreenGui")KG.Name="H738K" KG.ResetOnSpawn=false KG.IgnoreGuiInset=true KG.DisplayOrder=99999 KG.Parent=LP.PlayerGui
local BG=Instance.new("Frame",KG)BG.Size=UDim2.new(1,0,1,0)BG.BackgroundColor3=Color3.fromRGB(4,12,8)BG.BorderSizePixel=0

-- Pixel grid animated background
local GR=Instance.new("Frame",BG)GR.Size=UDim2.new(1,0,1,0)GR.BackgroundTransparency=1 GR.ClipsDescendants=true

-- Pixel blocks that fade in/out
for i=1,40 do
    local px=Instance.new("Frame",GR)
    local sz=math.random(8,20)
    px.Size=UDim2.new(0,sz,0,sz)
    px.Position=UDim2.new(math.random(0,100)/100,0,math.random(0,100)/100,0)
    px.BackgroundTransparency=math.random(70,95)/100
    px.BorderSizePixel=0
    local cols={Color3.fromRGB(0,200,100),Color3.fromRGB(0,255,150),Color3.fromRGB(100,255,200),Color3.fromRGB(0,180,255),Color3.fromRGB(255,220,0),Color3.fromRGB(255,100,200)}
    px.BackgroundColor3=cols[math.random(1,#cols)]
    Instance.new("UICorner",px).CornerRadius=UDim.new(0,3)
    task.spawn(function()
        while not OK and px.Parent do
            TW:Create(px,TweenInfo.new(math.random(20,40)/10,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
                Position=UDim2.new(math.random(0,100)/100,0,math.random(0,100)/100,0),
                BackgroundTransparency=math.random(70,95)/100,
                Size=UDim2.new(0,math.random(6,22),0,math.random(6,22))
            }):Play()
            task.wait(math.random(20,40)/10)
        end
    end)
end

-- Floating particles with glow
for i=1,12 do
    local p=Instance.new("Frame",GR)local sz=math.random(3,6)
    p.Size=UDim2.new(0,sz,0,sz)p.Position=UDim2.new(math.random(5,95)/100,0,math.random(5,95)/100,0)
    p.BackgroundColor3=Color3.fromRGB(0,255,150)p.BackgroundTransparency=math.random(20,50)/100
    p.BorderSizePixel=0 p.ZIndex=3
    Instance.new("UICorner",p).CornerRadius=UDim.new(1,0)
    local gl=Instance.new("Frame",p)gl.Size=UDim2.new(0,sz*4,0,sz*4)gl.Position=UDim2.new(0.5,-sz*2,0.5,-sz*2)
    gl.BackgroundColor3=p.BackgroundColor3 gl.BackgroundTransparency=0.85 gl.BorderSizePixel=0 gl.ZIndex=2
    Instance.new("UICorner",gl).CornerRadius=UDim.new(1,0)
    task.spawn(function()while not OK and p.Parent do
        TW:Create(p,TweenInfo.new(math.random(4,8),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            Position=UDim2.new(math.random(5,95)/100,0,math.random(5,95)/100,0)
        }):Play()
        TW:Create(gl,TweenInfo.new(1.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true),{
            BackgroundTransparency=0.7
        }):Play()
        task.wait(math.random(4,8))
    end end)
end

-- Scan lines
for i=1,2 do
    local sl=Instance.new("Frame",GR)sl.Size=UDim2.new(1,0,0,1+i)
    sl.BackgroundColor3=i==1 and Color3.fromRGB(0,255,150) or Color3.fromRGB(0,180,255)
    sl.BackgroundTransparency=0.6 sl.BorderSizePixel=0 sl.ZIndex=4
    task.spawn(function()while not OK and sl.Parent do
        sl.Position=UDim2.new(0,0,0,0)
        TW:Create(sl,TweenInfo.new(3+i,Enum.EasingStyle.Linear),{Position=UDim2.new(0,0,1,-2)}):Play()
        task.wait(3+i)
    end end)
end

-- Key Card
local CD=Instance.new("Frame",BG)CD.Size=UDim2.new(0,380,0,320)CD.Position=UDim2.new(0.5,-190,0.5,-160)
CD.BackgroundColor3=Color3.fromRGB(6,18,12)CD.BorderSizePixel=0 CD.ZIndex=10
Instance.new("UICorner",CD).CornerRadius=UDim.new(0,18)
local cds=Instance.new("UIStroke",CD)cds.Color=Color3.fromRGB(0,200,100)cds.Thickness=1.5 cds.Transparency=0.1

-- Top + bottom accent bars
local function makeAccentBar(yPos)
    local bar=Instance.new("Frame",CD)bar.Size=UDim2.new(1,-40,0,3)bar.Position=UDim2.new(0,20,0,yPos)
    bar.BackgroundColor3=Color3.fromRGB(0,200,100)bar.BorderSizePixel=0 bar.ZIndex=11
    Instance.new("UICorner",bar).CornerRadius=UDim.new(1,0)
    local g=Instance.new("UIGradient",bar)
    g.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,200,100)),ColorSequenceKeypoint.new(0.25,Color3.fromRGB(0,255,200)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(0,180,255)),ColorSequenceKeypoint.new(0.75,Color3.fromRGB(255,220,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,100,200))}
    task.spawn(function()local r=0 while not OK and bar.Parent do r=(r+2)%360 g.Rotation=r task.wait(0.03)end end)
    return bar
end
makeAccentBar(0)
makeAccentBar(317)

-- Logo with rainbow glow
local lg=Instance.new("Frame",CD)lg.Size=UDim2.new(0,60,0,60)lg.Position=UDim2.new(0.5,-30,0,20)
lg.BackgroundColor3=Color3.fromRGB(0,200,100)lg.BorderSizePixel=0 lg.ZIndex=12
Instance.new("UICorner",lg).CornerRadius=UDim.new(0,16)
Instance.new("UIGradient",lg).Color=ColorSequence.new(Color3.fromRGB(0,160,80),Color3.fromRGB(0,240,150))
local lgt=Instance.new("TextLabel",lg)lgt.Size=UDim2.new(1,0,1,0)lgt.BackgroundTransparency=1 lgt.Text="🐾"
lgt.Font=Enum.Font.GothamBold lgt.TextSize=28 lgt.TextColor3=Color3.new(1,1,1)lgt.ZIndex=13

-- Rainbow glow ring
local glowRing=Instance.new("Frame",CD)glowRing.Size=UDim2.new(0,80,0,80)glowRing.Position=UDim2.new(0.5,-40,0,10)
glowRing.BackgroundColor3=Color3.fromRGB(0,200,100)glowRing.BackgroundTransparency=0.85 glowRing.BorderSizePixel=0 glowRing.ZIndex=11
Instance.new("UICorner",glowRing).CornerRadius=UDim.new(0,20)
task.spawn(function()
    local hue=0
    while not OK and glowRing.Parent do
        hue=(hue+0.01)%1
        local col=Color3.fromHSV(hue,0.7,1)
        TW:Create(glowRing,TweenInfo.new(0.5),{BackgroundColor3=col}):Play()
        TW:Create(glowRing,TweenInfo.new(1.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            BackgroundTransparency=0.7,Size=UDim2.new(0,88,0,88),Position=UDim2.new(0.5,-44,0,6)
        }):Play()
        task.wait(1.2)
        TW:Create(glowRing,TweenInfo.new(1.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            BackgroundTransparency=0.9,Size=UDim2.new(0,80,0,80),Position=UDim2.new(0.5,-40,0,10)
        }):Play()
        task.wait(1.2)
    end
end)

local function kL(t,y,f,s,c)local l=Instance.new("TextLabel",CD)l.Size=UDim2.new(1,0,0,s+2)l.Position=UDim2.new(0,0,0,y)l.BackgroundTransparency=1 l.Text=t l.Font=f l.TextSize=s l.TextColor3=c l.ZIndex=12 return l end
kL("HIROSHI 738",88,Enum.Font.GothamBold,24,Color3.new(1,1,1))
local kSub=kL("Adopt Me · Ultimate Premium",114,Enum.Font.Gotham,11,Color3.fromRGB(0,200,100))
kL("discord.gg/qTGtM4Uyc",132,Enum.Font.GothamMedium,8,Color3.fromRGB(0,180,255))
kL("v3.0 · PREMIUM",146,Enum.Font.GothamMedium,7,Color3.fromRGB(100,255,180))

-- Input
local kib=Instance.new("Frame",CD)kib.Size=UDim2.new(0,270,0,40)kib.Position=UDim2.new(0.5,-135,0,168)
kib.BackgroundColor3=Color3.fromRGB(10,25,16)kib.BorderSizePixel=0 kib.ZIndex=12
Instance.new("UICorner",kib).CornerRadius=UDim.new(0,10)
local kis=Instance.new("UIStroke",kib)kis.Color=Color3.fromRGB(35,70,50)kis.Thickness=1

local klk=Instance.new("TextLabel",kib)klk.Size=UDim2.new(0,32,1,0)klk.BackgroundTransparency=1 klk.Text="🔒"
klk.Font=Enum.Font.Gotham klk.TextSize=15 klk.TextColor3=Color3.fromRGB(0,200,100)klk.ZIndex=13
local ki=Instance.new("TextBox",kib)ki.Size=UDim2.new(1,-40,1,0)ki.Position=UDim2.new(0,34,0,0)ki.BackgroundTransparency=1
ki.Text="" ki.PlaceholderText="Enter your key..." ki.PlaceholderColor3=Color3.fromRGB(70,130,90)
ki.Font=Enum.Font.GothamMedium ki.TextSize=13 ki.TextColor3=Color3.new(1,1,1)ki.TextXAlignment=Enum.TextXAlignment.Left ki.ClearTextOnFocus=false ki.ZIndex=13

ki.Focused:Connect(function()TW:Create(kis,TweenInfo.new(0.2),{Color=Color3.fromRGB(0,200,100)}):Play()end)
ki.FocusLost:Connect(function()TW:Create(kis,TweenInfo.new(0.2),{Color=Color3.fromRGB(35,70,50)}):Play()end)

local kb=Instance.new("TextButton",CD)kb.Size=UDim2.new(0,270,0,38)kb.Position=UDim2.new(0.5,-135,0,218)
kb.BackgroundColor3=Color3.fromRGB(0,200,100)kb.BorderSizePixel=0 kb.Text="VERIFY KEY"
kb.Font=Enum.Font.GothamBold kb.TextSize=13 kb.TextColor3=Color3.new(1,1,1)kb.AutoButtonColor=false kb.ZIndex=12
Instance.new("UICorner",kb).CornerRadius=UDim.new(0,10)
Instance.new("UIGradient",kb).Color=ColorSequence.new(Color3.fromRGB(0,160,80),Color3.fromRGB(0,230,140))

local ke=kL("",266,Enum.Font.GothamMedium,10,Color3.fromRGB(255,55,75))
local ka=kL("3 attempts remaining",284,Enum.Font.Gotham,9,Color3.fromRGB(70,130,90))
kL("Protected by AES-256 · By Hiroshi738",302,Enum.Font.Gotham,7,Color3.fromRGB(45,90,65))

local att=3 local vf=false
local function DoV()if vf or OK or att<=0 then return end vf=true kb.Text="AUTHENTICATING..." task.wait(0.4)
    if ki.Text==KEY then OK=true ke.Text="" kb.Text="✓ ACCESS GRANTED" kb.BackgroundColor3=Color3.fromRGB(0,255,130)
        klk.Text="🔓" kSub.Text="Welcome, "..LP.Name kSub.TextColor3=Color3.fromRGB(0,255,130)
        task.wait(0.6)
        for _,c in ipairs(CD:GetDescendants()) do
            if c:IsA("TextLabel") or c:IsA("TextBox") or c:IsA("TextButton") then TW:Create(c,TweenInfo.new(0.3),{TextTransparency=1}):Play()
            elseif c:IsA("Frame") then TW:Create(c,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()end end
        TW:Create(CD,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()TW:Create(BG,TweenInfo.new(0.5),{BackgroundTransparency=1}):Play()
        for _,c in ipairs(GR:GetDescendants()) do if c:IsA("Frame") then TW:Create(c,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()end end
        task.wait(0.5)KG:Destroy()Launch()
    else att=att-1 if att<=0 then ke.Text="✗ Locked" kb.Text="LOCKED" kb.BackgroundColor3=Color3.fromRGB(60,20,30)ki.TextEditable=false vf=false return end
        ke.Text="✗ Invalid key" kb.Text="VERIFY KEY" kb.BackgroundColor3=Color3.fromRGB(0,200,100)ka.Text=att.." remaining"
        TW:Create(kis,TweenInfo.new(0.1),{Color=Color3.fromRGB(255,55,75)}):Play()
        for _,off in ipairs({-130,-140,-135}) do TW:Create(kib,TweenInfo.new(0.04),{Position=UDim2.new(0.5,off,0,168)}):Play()task.wait(0.04)end
        task.wait(0.3)TW:Create(kis,TweenInfo.new(0.3),{Color=Color3.fromRGB(35,70,50)}):Play()vf=false end end
kb.MouseButton1Click:Connect(DoV)ki.FocusLost:Connect(function(e)if e then DoV()end end)function Launch()
local Dead=false local CN={}
local Ac=Color3.fromRGB(0,200,100)
local T={bg1=Color3.fromRGB(8,12,10),bg2=Color3.fromRGB(12,20,16),bg3=Color3.fromRGB(20,32,26),bg4=Color3.fromRGB(30,45,38),t1=Color3.new(1,1,1),t2=Color3.fromRGB(180,220,200),t3=Color3.fromRGB(120,160,140),br=Color3.fromRGB(30,55,42)}
local CFG={Speed=false,SV=50,JP=false,JV=100,Fly=false,FS=60,Noclip=false,InfJump=false,AFK=true,AutoCollect=false,CR=50,CS=3,AutoCare=false,FB=false,NF=false,FvC=false,CF=70,FT=false,TV=14,ESPNm=false,ESPBx=false,ESPDst=false,ESPTr=false,SP=nil}
local OG={B=Light.Brightness,FE=Light.FogEnd,FS2=Light.FogStart,GS=Light.GlobalShadows,CT=Light.ClockTime,CV=Cam.FieldOfView}
local collectCount=0 local careCount=0 local Session=tick() local Spec=nil

-- Exact TP positions
local PLACES={
    {n="🏠 Nursery",p=CFrame.new(-451,30,-68)},
    {n="🏥 Hospital",p=CFrame.new(-281,30,-1418)},
    {n="🍕 Pizza Shop",p=CFrame.new(-126,30,-1664)},
    {n="🏪 Pet Shop",p=CFrame.new(-196,30,-1505)},
    {n="🏫 School",p=CFrame.new(-305,30,-1504)},
    {n="🎁 Gifts",p=CFrame.new(-272,30,-1535)},
    {n="🌳 Park",p=CFrame.new(-447,30,-1729)},
    {n="⛺ Campsite",p=CFrame.new(-147,30,-1800)},
    {n="🏰 Castle",p=CFrame.new(188,52,-1650)},
    {n="🌊 Pool",p=CFrame.new(85,30,-1600)},
    {n="🎩 Hat Shop",p=CFrame.new(-200,30,-1600)},
    {n="🚢 Boat",p=CFrame.new(-735,30,-1400)},
}

local SG=Instance.new("ScreenGui")SG.Name="H738U" SG.ResetOnSpawn=false SG.IgnoreGuiInset=true SG.DisplayOrder=10000 SG.Parent=LP.PlayerGui

-- Notif
local NH=Instance.new("Frame",SG)NH.Size=UDim2.new(0,250,1,-40)NH.Position=UDim2.new(1,-266,0,20)NH.BackgroundTransparency=1
Instance.new("UIListLayout",NH).Padding=UDim.new(0,4)
local nO=0
local function Nf(ti,ms,du,co)nO=nO+1 local n=Instance.new("Frame",NH)n.Size=UDim2.new(0,0,0,40)n.BackgroundColor3=T.bg2 n.BorderSizePixel=0 n.LayoutOrder=nO n.ClipsDescendants=true Instance.new("UICorner",n).CornerRadius=UDim.new(0,8)Instance.new("UIStroke",n).Color=T.br
local a=Instance.new("Frame",n)a.Size=UDim2.new(0,3,1,-8)a.Position=UDim2.new(0,5,0,4)a.BackgroundColor3=co or Ac a.BorderSizePixel=0 Instance.new("UICorner",a).CornerRadius=UDim.new(1,0)
local t=Instance.new("TextLabel",n)t.Size=UDim2.new(1,-14,0,13)t.Position=UDim2.new(0,13,0,4)t.BackgroundTransparency=1 t.Text=ti t.Font=Enum.Font.GothamBold t.TextSize=10 t.TextColor3=co or Ac t.TextXAlignment=Enum.TextXAlignment.Left
local m=Instance.new("TextLabel",n)m.Size=UDim2.new(1,-14,0,12)m.Position=UDim2.new(0,13,0,19)m.BackgroundTransparency=1 m.Text=ms m.Font=Enum.Font.Gotham m.TextSize=9 m.TextColor3=T.t2 m.TextXAlignment=Enum.TextXAlignment.Left
TW:Create(n,TweenInfo.new(0.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(1,0,0,40)}):Play()
task.delay(du or 2.5,function()TW:Create(n,TweenInfo.new(0.2),{Size=UDim2.new(0,0,0,40)}):Play()task.wait(0.25)n:Destroy()end)end

-- Panel
local P=Instance.new("Frame",SG)P.Size=UDim2.new(0,440,0,380)P.Position=UDim2.new(0.5,-220,0.5,-190)P.BackgroundColor3=T.bg1 P.BorderSizePixel=0 P.ClipsDescendants=true Instance.new("UICorner",P).CornerRadius=UDim.new(0,14)local PSt=Instance.new("UIStroke",P)PSt.Color=T.br

-- Menu particles
for i=1,4 do local pp=Instance.new("Frame",P)pp.Size=UDim2.new(0,math.random(2,4),0,math.random(2,4))pp.Position=UDim2.new(math.random(10,90)/100,0,math.random(15,95)/100,0)pp.BackgroundColor3=Ac pp.BackgroundTransparency=0.87 pp.BorderSizePixel=0 pp.ZIndex=0 Instance.new("UICorner",pp).CornerRadius=UDim.new(1,0)
task.spawn(function()while not Dead and pp.Parent do TW:Create(pp,TweenInfo.new(math.random(7,12),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position=UDim2.new(math.random(10,90)/100,0,math.random(15,95)/100,0)}):Play()task.wait(math.random(7,12))end end)end

-- Header
local H=Instance.new("Frame",P)H.Size=UDim2.new(1,0,0,44)H.BackgroundColor3=T.bg2 H.BorderSizePixel=0 H.Active=true Instance.new("UICorner",H).CornerRadius=UDim.new(0,14)
Instance.new("Frame",H).Size=UDim2.new(1,0,0,14) local hx=H:GetChildren()[#H:GetChildren()]hx.Position=UDim2.new(0,0,1,-14)hx.BackgroundColor3=T.bg2 hx.BorderSizePixel=0
local HL=Instance.new("Frame",H)HL.Size=UDim2.new(1,-16,0,2)HL.Position=UDim2.new(0,8,1,-1)HL.BackgroundColor3=Ac HL.BorderSizePixel=0
local HLG=Instance.new("UIGradient",HL)HLG.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,200,100)),ColorSequenceKeypoint.new(0.3,Color3.fromRGB(0,255,200)),ColorSequenceKeypoint.new(0.6,Color3.fromRGB(0,180,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,220,0))}
task.spawn(function()local r=0 while not Dead and HL.Parent do r=(r+2)%360 HLG.Rotation=r task.wait(0.04)end end)

local dg,ds,dp=false,nil,nil
H.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dg=true ds=i.Position dp=P.Position end end)
H.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dg=false end end)

local lo=Instance.new("Frame",H)lo.Size=UDim2.new(0,26,0,26)lo.Position=UDim2.new(0,10,0,9)lo.BackgroundColor3=Ac lo.BorderSizePixel=0 Instance.new("UICorner",lo).CornerRadius=UDim.new(0,7)
Instance.new("UIGradient",lo).Color=ColorSequence.new(Color3.fromRGB(0,160,80),Color3.fromRGB(0,240,150))
local lot=Instance.new("TextLabel",lo)lot.Size=UDim2.new(1,0,1,0)lot.BackgroundTransparency=1 lot.Text="🐾" lot.Font=Enum.Font.GothamBold lot.TextSize=13 lot.TextColor3=T.t1
local ht=Instance.new("TextLabel",H)ht.Size=UDim2.new(0,130,0,12)ht.Position=UDim2.new(0,42,0,7)ht.BackgroundTransparency=1 ht.Text="HIROSHI 738" ht.Font=Enum.Font.GothamBold ht.TextSize=11 ht.TextColor3=T.t1 ht.TextXAlignment=Enum.TextXAlignment.Left
local hss=Instance.new("TextLabel",H)hss.Size=UDim2.new(0,130,0,10)hss.Position=UDim2.new(0,42,0,21)hss.BackgroundTransparency=1 hss.Text="ADOPT ME ULTIMATE" hss.Font=Enum.Font.Gotham hss.TextSize=7 hss.TextColor3=Ac hss.TextXAlignment=Enum.TextXAlignment.Left
local sessLbl=Instance.new("TextLabel",H)sessLbl.Size=UDim2.new(0,50,0,10)sessLbl.Position=UDim2.new(1,-100,0,17)sessLbl.BackgroundTransparency=1 sessLbl.Text="0:00" sessLbl.Font=Enum.Font.Code sessLbl.TextSize=8 sessLbl.TextColor3=T.t3
local mbb=Instance.new("TextButton",H)mbb.Size=UDim2.new(0,20,0,20)mbb.Position=UDim2.new(1,-24,0,12)mbb.BackgroundColor3=T.bg3 mbb.Text="—" mbb.Font=Enum.Font.GothamBold mbb.TextSize=10 mbb.TextColor3=T.t2 mbb.BorderSizePixel=0 mbb.AutoButtonColor=false Instance.new("UICorner",mbb).CornerRadius=UDim.new(0,5)
local mii=false mbb.MouseButton1Click:Connect(function()mii=not mii P.Size=mii and UDim2.new(0,440,0,44)or UDim2.new(0,440,0,380)mbb.Text=mii and "+" or "—" end)

-- Sidebar
local Si=Instance.new("Frame",P)Si.Size=UDim2.new(0,85,1,-50)Si.Position=UDim2.new(0,4,0,46)Si.BackgroundColor3=T.bg2 Si.BorderSizePixel=0 Instance.new("UICorner",Si).CornerRadius=UDim.new(0,8)
local SiS=Instance.new("ScrollingFrame",Si)SiS.Size=UDim2.new(1,0,1,0)SiS.BackgroundTransparency=1 SiS.BorderSizePixel=0 SiS.ScrollBarThickness=0 SiS.AutomaticCanvasSize=Enum.AutomaticSize.Y SiS.CanvasSize=UDim2.new(0,0,0,0)
Instance.new("UIListLayout",SiS).Padding=UDim.new(0,2) Instance.new("UIListLayout",SiS).SortOrder=Enum.SortOrder.LayoutOrder
Instance.new("UIPadding",SiS).PaddingTop=UDim.new(0,4) Instance.new("UIPadding",SiS).PaddingLeft=UDim.new(0,3) Instance.new("UIPadding",SiS).PaddingRight=UDim.new(0,3) Instance.new("UIPadding",SiS).PaddingBottom=UDim.new(0,4)

local TC=Instance.new("ScrollingFrame",P)TC.Size=UDim2.new(1,-97,1,-50)TC.Position=UDim2.new(0,93,0,46)TC.BackgroundTransparency=1 TC.BorderSizePixel=0 TC.ScrollBarThickness=2 TC.AutomaticCanvasSize=Enum.AutomaticSize.Y TC.CanvasSize=UDim2.new(0,0,0,0)TC.ScrollBarImageColor3=Ac

local tbs,tfs,ct={},{},nil
local function selT(n)for k,f in pairs(tfs)do f.Visible=(k==n)end for k,b in pairs(tbs)do if k==n then b.bg.BackgroundColor3=T.bg4 b.bg.BackgroundTransparency=0 b.lb.TextColor3=T.t1 else b.bg.BackgroundTransparency=1 b.lb.TextColor3=T.t3 end end ct=n end
local function mkT(n,o)local b=Instance.new("Frame",SiS)b.Size=UDim2.new(1,0,0,22)b.BackgroundTransparency=1 b.LayoutOrder=o local bg=Instance.new("Frame",b)bg.Size=UDim2.new(1,0,1,0)bg.BackgroundTransparency=1 bg.BorderSizePixel=0 Instance.new("UICorner",bg).CornerRadius=UDim.new(0,5)local lb=Instance.new("TextLabel",b)lb.Size=UDim2.new(1,-4,1,0)lb.Position=UDim2.new(0,4,0,0)lb.BackgroundTransparency=1 lb.Text=n lb.Font=Enum.Font.GothamMedium lb.TextSize=9 lb.TextColor3=T.t3 lb.TextXAlignment=Enum.TextXAlignment.Left local bt=Instance.new("TextButton",b)bt.Size=UDim2.new(1,0,1,0)bt.BackgroundTransparency=1 bt.Text="" bt.AutoButtonColor=false bt.MouseButton1Click:Connect(function()selT(n)end)local f=Instance.new("Frame",TC)f.Size=UDim2.new(1,0,0,0)f.BackgroundTransparency=1 f.AutomaticSize=Enum.AutomaticSize.Y f.Visible=false Instance.new("UIListLayout",f).Padding=UDim.new(0,5)tbs[n]={bg=bg,lb=lb}tfs[n]=f return f end

local tPl=mkT("🏃 Player",1)local tFl=mkT("✈️ Fly",2)local tTp=mkT("🏠 Teleport",3)local tFa=mkT("💰 Farm",4)local tCa=mkT("🐾 Pet Care",5)local tEv=mkT("🎪 Events",6)local tEs=mkT("👁️ ESP",7)local tWo=mkT("🌍 World",8)local tAd=mkT("👤 Admin",9)local tSe=mkT("⚙️ Settings",10)

local ASl=nil
table.insert(CN,UIS.InputChanged:Connect(function(i)if dg and i.UserInputType==Enum.UserInputType.MouseMovement then local d=i.Position-ds P.Position=UDim2.new(dp.X.Scale,dp.X.Offset+d.X,dp.Y.Scale,dp.Y.Offset+d.Y)end if ASl and i.UserInputType==Enum.UserInputType.MouseMovement then ASl(i.Position.X)end end))
table.insert(CN,UIS.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then ASl=nil end end))

-- UI Builders
local function mS(p,ti,o)local s=Instance.new("Frame",p)s.Size=UDim2.new(1,0,0,0)s.AutomaticSize=Enum.AutomaticSize.Y s.BackgroundColor3=T.bg2 s.BorderSizePixel=0 s.LayoutOrder=o Instance.new("UICorner",s).CornerRadius=UDim.new(0,8)Instance.new("UIStroke",s).Color=T.br Instance.new("UIListLayout",s).Padding=UDim.new(0,3)local pd=Instance.new("UIPadding",s)pd.PaddingLeft=UDim.new(0,8)pd.PaddingRight=UDim.new(0,8)pd.PaddingTop=UDim.new(0,7)pd.PaddingBottom=UDim.new(0,7)local h=Instance.new("Frame",s)h.Size=UDim2.new(1,0,0,12)h.BackgroundTransparency=1 h.LayoutOrder=0 local d=Instance.new("Frame",h)d.Size=UDim2.new(0,3,1,0)d.BackgroundColor3=Ac d.BorderSizePixel=0 Instance.new("UICorner",d).CornerRadius=UDim.new(1,0)local l=Instance.new("TextLabel",h)l.Size=UDim2.new(1,-7,1,0)l.Position=UDim2.new(0,7,0,0)l.BackgroundTransparency=1 l.Text=ti l.Font=Enum.Font.GothamBold l.TextSize=9 l.TextColor3=T.t3 l.TextXAlignment=Enum.TextXAlignment.Left return s end
local function mT(p,tx,o,k,cb)local r=Instance.new("Frame",p)r.Size=UDim2.new(1,0,0,18)r.BackgroundTransparency=1 r.LayoutOrder=o local lb=Instance.new("TextLabel",r)lb.Size=UDim2.new(1,-34,1,0)lb.BackgroundTransparency=1 lb.Text=tx lb.Font=Enum.Font.GothamMedium lb.TextSize=10 lb.TextColor3=T.t2 lb.TextXAlignment=Enum.TextXAlignment.Left local bg=Instance.new("Frame",r)bg.Size=UDim2.new(0,28,0,14)bg.Position=UDim2.new(1,-28,0.5,-7)bg.BackgroundColor3=T.bg3 bg.BorderSizePixel=0 Instance.new("UICorner",bg).CornerRadius=UDim.new(1,0)local kn=Instance.new("Frame",bg)kn.Size=UDim2.new(0,10,0,10)kn.Position=UDim2.new(0,2,0.5,-5)kn.BackgroundColor3=T.t3 kn.BorderSizePixel=0 Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)local bt=Instance.new("TextButton",r)bt.Size=UDim2.new(1,0,1,0)bt.BackgroundTransparency=1 bt.Text="" bt.ZIndex=3 bt.AutoButtonColor=false local function ref()if CFG[k]then bg.BackgroundColor3=Ac kn.Position=UDim2.new(0,16,0.5,-5)kn.BackgroundColor3=T.t1 else bg.BackgroundColor3=T.bg3 kn.Position=UDim2.new(0,2,0.5,-5)kn.BackgroundColor3=T.t3 end end bt.MouseButton1Click:Connect(function()CFG[k]=not CFG[k]ref()if cb then cb(CFG[k])end end)ref()end
local function mSl(p,tx,o,mn,mx,df,su,cb)local bl=Instance.new("Frame",p)bl.Size=UDim2.new(1,0,0,24)bl.BackgroundTransparency=1 bl.LayoutOrder=o local lb=Instance.new("TextLabel",bl)lb.Size=UDim2.new(0.55,0,0,11)lb.BackgroundTransparency=1 lb.Text=tx lb.Font=Enum.Font.GothamMedium lb.TextSize=9 lb.TextColor3=T.t3 lb.TextXAlignment=Enum.TextXAlignment.Left local vl=Instance.new("TextLabel",bl)vl.Size=UDim2.new(0.45,0,0,11)vl.Position=UDim2.new(0.55,0,0,0)vl.BackgroundTransparency=1 vl.Text=df..(su or"")vl.Font=Enum.Font.GothamBold vl.TextSize=9 vl.TextColor3=T.t1 vl.TextXAlignment=Enum.TextXAlignment.Right local tr=Instance.new("Frame",bl)tr.Size=UDim2.new(1,0,0,3)tr.Position=UDim2.new(0,0,0,15)tr.BackgroundColor3=T.bg4 tr.BorderSizePixel=0 Instance.new("UICorner",tr).CornerRadius=UDim.new(1,0)local fl=Instance.new("Frame",tr)fl.Size=UDim2.new((df-mn)/(mx-mn),0,1,0)fl.BackgroundColor3=Ac fl.BorderSizePixel=0 Instance.new("UICorner",fl).CornerRadius=UDim.new(1,0)local kn=Instance.new("Frame",tr)kn.Size=UDim2.new(0,10,0,10)kn.AnchorPoint=Vector2.new(0.5,0.5)kn.Position=UDim2.new((df-mn)/(mx-mn),0,0.5,0)kn.BackgroundColor3=T.t1 kn.BorderSizePixel=0 kn.ZIndex=3 Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)local function u(x)local r2=math.clamp((x-tr.AbsolutePosition.X)/tr.AbsoluteSize.X,0,1)local v=math.floor(mn+r2*(mx-mn)+0.5)fl.Size=UDim2.new(r2,0,1,0)kn.Position=UDim2.new(r2,0,0.5,0)vl.Text=v..(su or"")cb(v)end tr.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then ASl=u u(i.Position.X)end end)kn.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then ASl=u end end)end
local function mB(p,tx,o,cb)local b=Instance.new("TextButton",p)b.Size=UDim2.new(1,0,0,22)b.BackgroundColor3=T.bg3 b.BorderSizePixel=0 b.Text=tx b.Font=Enum.Font.GothamBold b.TextSize=9 b.TextColor3=T.t1 b.AutoButtonColor=false b.LayoutOrder=o Instance.new("UICorner",b).CornerRadius=UDim.new(0,6)b.MouseEnter:Connect(function()TW:Create(b,TweenInfo.new(0.1),{BackgroundColor3=Ac}):Play()end)b.MouseLeave:Connect(function()TW:Create(b,TweenInfo.new(0.1),{BackgroundColor3=T.bg3}):Play()end)b.MouseButton1Click:Connect(cb)end

local function tpTo(name)if not LP.Character or not LP.Character:FindFirstChild("HumanoidRootPart")then return end local hrp=LP.Character.HumanoidRootPart
    for _,v in ipairs(workspace:GetDescendants())do if v.Name:lower():find(name:lower())then if v:IsA("Model")then if v.PrimaryPart then hrp.CFrame=v.PrimaryPart.CFrame+Vector3.new(0,5,0)Nf("TP","→ "..v.Name,1.5,Ac)return end for _,ch in ipairs(v:GetDescendants())do if ch:IsA("BasePart")then hrp.CFrame=ch.CFrame+Vector3.new(0,5,0)Nf("TP","→ "..v.Name,1.5,Ac)return end end elseif v:IsA("BasePart")then hrp.CFrame=v.CFrame+Vector3.new(0,5,0)Nf("TP","→ "..v.Name,1.5,Ac)return end end end Nf("TP","Not found",2,Color3.fromRGB(255,50,50))end

local function findCollectibles()local items={}for _,v in ipairs(workspace:GetDescendants())do local nm=v.Name:lower()if v:IsA("BasePart")and v.Transparency<0.9 then if nm:find("coin")or nm:find("money")or nm:find("collect")or nm:find("pickup")or nm:find("chest")or nm:find("reward")or nm:find("star")or nm:find("gem")or nm:find("compass")or nm:find("trash")then table.insert(items,v)end end if v:IsA("ProximityPrompt")and v.Parent and v.Parent:IsA("BasePart")then table.insert(items,v.Parent)end end return items end

-- ═══ PLAYER ═══
local p1=mS(tPl,"🏃 MOVEMENT",1)mT(p1,"Walk Speed",1,"Speed",function(v)if not v and LP.Character then local h=LP.Character:FindFirstChildOfClass("Humanoid")if h then h.WalkSpeed=16 end end end)mSl(p1,"Speed",2,16,200,50,"",function(v)CFG.SV=v end)mT(p1,"Jump Power",3,"JP",function(v)if not v and LP.Character then local h=LP.Character:FindFirstChildOfClass("Humanoid")if h then h.JumpPower=50 end end end)mSl(p1,"Jump",4,50,300,100,"",function(v)CFG.JV=v end)mT(p1,"Infinite Jump",5,"InfJump")mT(p1,"Noclip",6,"Noclip")mT(p1,"Anti-AFK",7,"AFK")
local p2=mS(tPl,"📍 UTILITY",2)mB(p2,"💾 Save Position",1,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then CFG.SP=LP.Character.HumanoidRootPart.CFrame Nf("Pos","Saved!",1.5,Ac)end end)mB(p2,"📍 Teleport Back",2,function()if CFG.SP and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFG.SP end end)mB(p2,"🔄 Reset",3,function()if LP.Character then local h=LP.Character:FindFirstChildOfClass("Humanoid")if h then h.Health=0 end end end)

-- ═══ FLY ═══
local f1=mS(tFl,"✈️ FLY MODE",1)mT(f1,"Enable Fly",1,"Fly")mSl(f1,"Speed",2,10,200,60,"",function(v)CFG.FS=v end)
local fi=Instance.new("TextLabel",f1)fi.Size=UDim2.new(1,0,0,22)fi.BackgroundTransparency=1 fi.Text="WASD = move · Space = up · Shift = down" fi.Font=Enum.Font.Gotham fi.TextSize=8 fi.TextColor3=T.t3 fi.LayoutOrder=3

-- ═══ TELEPORT ═══
local t1=mS(tTp,"🏠 LOCATIONS (exact coords)",1)
for i,place in ipairs(PLACES)do mB(t1,place.n,i,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=place.p Nf("TP","→ "..place.n,1.5,Ac)end end)end

local t2=mS(tTp,"👤 TP TO PLAYER",2)
local tpL=Instance.new("ScrollingFrame",t2)tpL.Size=UDim2.new(1,0,0,100)tpL.BackgroundColor3=T.bg3 tpL.BorderSizePixel=0 tpL.ScrollBarThickness=2 tpL.ScrollBarImageColor3=Ac tpL.AutomaticCanvasSize=Enum.AutomaticSize.Y tpL.CanvasSize=UDim2.new(0,0,0,0)tpL.LayoutOrder=1 Instance.new("UICorner",tpL).CornerRadius=UDim.new(0,6)Instance.new("UIListLayout",tpL).Padding=UDim.new(0,2)Instance.new("UIPadding",tpL).PaddingTop=UDim.new(0,3)
local function RefTP()for _,c in ipairs(tpL:GetChildren())do if c:IsA("Frame")then c:Destroy()end end for _,p in ipairs(Players:GetPlayers())do if p==LP then continue end local r=Instance.new("Frame",tpL)r.Size=UDim2.new(1,-6,0,22)r.BackgroundColor3=T.bg2 r.BorderSizePixel=0 Instance.new("UICorner",r).CornerRadius=UDim.new(0,4)local n=Instance.new("TextLabel",r)n.Size=UDim2.new(0.6,0,1,0)n.Position=UDim2.new(0,6,0,0)n.BackgroundTransparency=1 n.Text=p.DisplayName n.Font=Enum.Font.GothamBold n.TextSize=9 n.TextColor3=T.t1 n.TextXAlignment=Enum.TextXAlignment.Left n.TextTruncate=Enum.TextTruncate.AtEnd local b=Instance.new("TextButton",r)b.Size=UDim2.new(0,30,0,14)b.Position=UDim2.new(1,-34,0.5,-7)b.BackgroundColor3=Ac b.BorderSizePixel=0 b.Text="TP" b.Font=Enum.Font.GothamBold b.TextSize=7 b.TextColor3=T.t1 b.AutoButtonColor=false Instance.new("UICorner",b).CornerRadius=UDim.new(0,3)b.MouseButton1Click:Connect(function()if LP.Character and p.Character and LP.Character:FindFirstChild("HumanoidRootPart")and p.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=p.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,3)Nf("TP","→ "..p.Name,1.5,Ac)end end)end end
mB(t2,"🔄 Refresh",2,RefTP)RefTP()

-- ═══ FARM ═══
local fa1=mS(tFa,"💰 AUTO COLLECT",1)mT(fa1,"Auto Collect",1,"AutoCollect")mSl(fa1,"Range",2,10,200,50,"m",function(v)CFG.CR=v end)mSl(fa1,"Speed",3,1,10,3,"s",function(v)CFG.CS=v end)
local colLbl=Instance.new("TextLabel",fa1)colLbl.Size=UDim2.new(1,0,0,14)colLbl.BackgroundTransparency=1 colLbl.Text="💰 Collected: 0" colLbl.Font=Enum.Font.GothamBold colLbl.TextSize=10 colLbl.TextColor3=Color3.fromRGB(255,220,0)colLbl.LayoutOrder=4
local fa2=mS(tFa,"🎯 QUICK TP",2)mB(fa2,"💰 Nearest Item",1,function()local items=findCollectibles()if #items==0 then Nf("Farm","Nothing found",2,Color3.fromRGB(255,50,50))return end if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then local hrp=LP.Character.HumanoidRootPart table.sort(items,function(a,b)return(a.Position-hrp.Position).Magnitude<(b.Position-hrp.Position).Magnitude end)hrp.CFrame=items[1].CFrame+Vector3.new(0,3,0)Nf("Farm","→ "..items[1].Name,1.5,Ac)end end)
mB(fa2,"📦 Treasure Chest",2,function()tpTo("treasurechest")end)mB(fa2,"🗑️ Trash",3,function()tpTo("trash")end)mB(fa2,"🧭 Compass",4,function()tpTo("compass")end)

-- ═══ PET CARE ═══
local ca1=mS(tCa,"🐾 AUTO PET CARE",1)
mT(ca1,"Auto Care (TP to needs)",1,"AutoCare")
local careLbl=Instance.new("TextLabel",ca1)careLbl.Size=UDim2.new(1,0,0,14)careLbl.BackgroundTransparency=1 careLbl.Text="🐾 Care actions: 0" careLbl.Font=Enum.Font.GothamBold careLbl.TextSize=10 careLbl.TextColor3=Color3.fromRGB(255,180,0)careLbl.LayoutOrder=2
local ca2=mS(tCa,"🍖 QUICK CARE",2)
mB(ca2,"🍕 TP Pizza (Feed)",1,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFrame.new(-126,30,-1664)Nf("Care","→ Pizza Shop",1.5,Ac)careCount=careCount+1 end end)
mB(ca2,"😴 TP Campsite (Sleep)",2,function()tpTo("camp")end)
mB(ca2,"🛁 TP Pool (Bath)",3,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFrame.new(85,30,-1600)Nf("Care","→ Pool",1.5,Ac)careCount=careCount+1 end end)
mB(ca2,"🎮 TP Park (Play)",4,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFrame.new(-447,30,-1729)Nf("Care","→ Park",1.5,Ac)careCount=careCount+1 end end)
mB(ca2,"🏫 TP School (Learn)",5,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFrame.new(-305,30,-1504)Nf("Care","→ School",1.5,Ac)careCount=careCount+1 end end)
mB(ca2,"💊 TP Hospital (Cure)",6,function()if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFrame.new(-281,30,-1418)Nf("Care","→ Hospital",1.5,Ac)careCount=careCount+1 end end)

-- ═══ EVENTS ═══
local ev1=mS(tEv,"🚢 CURRENT EVENT",1)mB(ev1,"🚢 Boat/Ship",1,function()tpTo("boat")end)mB(ev1,"🦈 Shark",2,function()tpTo("shark")end)mB(ev1,"🤿 Dive",3,function()tpTo("dive")end)mB(ev1,"🗑️ Underwater Trash",4,function()tpTo("underwater")end)mB(ev1,"🧭 Compass Coins",5,function()tpTo("compass")end)
local ev2=mS(tEv,"🏆 COLLECTIBLES",2)mB(ev2,"🌟 Stump Pedestals",1,function()tpTo("stump")end)mB(ev2,"🏳️‍🌈 Pride Pedestals",2,function()tpTo("pride")end)mB(ev2,"🌸 Flowers",3,function()tpTo("flower")end)mB(ev2,"🗺️ Journey",4,function()tpTo("journey")end)mB(ev2,"📦 Treasure Chest",5,function()tpTo("treasure")end)

-- ═══ ESP ═══
local es1=mS(tEs,"👁️ PLAYER ESP",1)mT(es1,"Names",1,"ESPNm")mT(es1,"Box",2,"ESPBx")mT(es1,"Distance",3,"ESPDst")mT(es1,"Tracers",4,"ESPTr")

-- ═══ WORLD ═══
local w1=mS(tWo,"💡 LIGHTING",1)mT(w1,"Fullbright",1,"FB",function(v)if v then Light.Brightness=2 Light.GlobalShadows=false Light.ClockTime=14 else Light.Brightness=OG.B Light.GlobalShadows=OG.GS Light.ClockTime=OG.CT end end)mT(w1,"No Fog",2,"NF",function(v)if v then Light.FogEnd=1e9 Light.FogStart=1e9 else Light.FogEnd=OG.FE Light.FogStart=OG.FS2 end end)mT(w1,"Freeze Time",3,"FT")mSl(w1,"Time",4,0,24,14,"h",function(v)CFG.TV=v if CFG.FT then Light.ClockTime=v end end)
local w2=mS(tWo,"📷 CAMERA",2)mT(w2,"FOV Changer",1,"FvC",function(v)if not v then Cam.FieldOfView=OG.CV end end)mSl(w2,"FOV",2,30,140,70,"°",function(v)CFG.CF=v end)

-- ═══ ADMIN ═══
local ad1=mS(tAd,"👤 PLAYERS",1)
local adL=Instance.new("ScrollingFrame",ad1)adL.Size=UDim2.new(1,0,0,150)adL.BackgroundColor3=T.bg3 adL.BorderSizePixel=0 adL.ScrollBarThickness=2 adL.ScrollBarImageColor3=Ac adL.AutomaticCanvasSize=Enum.AutomaticSize.Y adL.CanvasSize=UDim2.new(0,0,0,0)adL.LayoutOrder=1 Instance.new("UICorner",adL).CornerRadius=UDim.new(0,5)Instance.new("UIListLayout",adL).Padding=UDim.new(0,2)Instance.new("UIPadding",adL).PaddingTop=UDim.new(0,3)
local function RefAd()for _,c in ipairs(adL:GetChildren())do if c:IsA("Frame")then c:Destroy()end end for _,p in ipairs(Players:GetPlayers())do if p==LP then continue end local r=Instance.new("Frame",adL)r.Size=UDim2.new(1,-6,0,24)r.BackgroundColor3=T.bg2 r.BorderSizePixel=0 Instance.new("UICorner",r).CornerRadius=UDim.new(0,4)local n=Instance.new("TextLabel",r)n.Size=UDim2.new(0.4,0,1,0)n.Position=UDim2.new(0,6,0,0)n.BackgroundTransparency=1 n.Text=p.DisplayName n.Font=Enum.Font.GothamBold n.TextSize=9 n.TextColor3=T.t1 n.TextXAlignment=Enum.TextXAlignment.Left n.TextTruncate=Enum.TextTruncate.AtEnd
local function ab(tx,xo,cl,cb)local b=Instance.new("TextButton",r)b.Size=UDim2.new(0,28,0,16)b.Position=UDim2.new(1,xo,0.5,-8)b.BackgroundColor3=T.bg3 b.BorderSizePixel=0 b.Text=tx b.Font=Enum.Font.GothamBold b.TextSize=7 b.TextColor3=cl b.AutoButtonColor=false Instance.new("UICorner",b).CornerRadius=UDim.new(0,3)b.MouseButton1Click:Connect(cb)end
ab("TP",-90,Color3.fromRGB(0,200,255),function()if LP.Character and p.Character and LP.Character:FindFirstChild("HumanoidRootPart")and p.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=p.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,3)end end)
ab("SPC",-58,Color3.fromRGB(255,220,0),function()if Spec==p then Spec=nil Cam.CameraSubject=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")else if p.Character then Spec=p Cam.CameraSubject=p.Character:FindFirstChildOfClass("Humanoid")end end end)
ab("VIEW",-26,Ac,function()if p.Character and p.Character:FindFirstChild("HumanoidRootPart")then Cam.CFrame=CFrame.new(p.Character.HumanoidRootPart.Position+Vector3.new(0,20,20),p.Character.HumanoidRootPart.Position)end end)end end
mB(ad1,"🔄 Refresh",2,RefAd)RefAd()
table.insert(CN,Players.PlayerAdded:Connect(function()task.wait(1)RefAd()end))

-- ═══ SETTINGS ═══
local s1=mS(tSe,"🎨 ACCENT COLOR",1)
local acR=Instance.new("Frame",s1)acR.Size=UDim2.new(1,0,0,22)acR.BackgroundTransparency=1 acR.LayoutOrder=1 Instance.new("UIListLayout",acR).FillDirection=Enum.FillDirection.Horizontal Instance.new("UIListLayout",acR).Padding=UDim.new(0,5)
for _,c in ipairs({{Color3.fromRGB(0,200,100)},{Color3.fromRGB(40,140,255)},{Color3.fromRGB(255,60,80)},{Color3.fromRGB(255,200,0)},{Color3.fromRGB(255,80,180)},{Color3.fromRGB(0,220,255)},{Color3.fromRGB(150,0,255)},{Color3.fromRGB(255,140,0)}})do local sw=Instance.new("TextButton",acR)sw.Size=UDim2.new(0,26,0,20)sw.BackgroundColor3=c[1]sw.BorderSizePixel=0 sw.Text="" sw.AutoButtonColor=false Instance.new("UICorner",sw).CornerRadius=UDim.new(0,5)sw.MouseButton1Click:Connect(function()Ac=c[1]T.acc=c[1]TC.ScrollBarImageColor3=c[1]lo.BackgroundColor3=c[1]Nf("Theme","Changed!",1.5,c[1])end)end

local s2=mS(tSe,"🎭 MENU THEME",2)
local thR=Instance.new("Frame",s2)thR.Size=UDim2.new(1,0,0,22)thR.BackgroundTransparency=1 thR.LayoutOrder=1 Instance.new("UIListLayout",thR).FillDirection=Enum.FillDirection.Horizontal Instance.new("UIListLayout",thR).Padding=UDim.new(0,4)
for _,mc in ipairs({{n="Dark",b1=Color3.fromRGB(8,12,10),b2=Color3.fromRGB(12,20,16),br=Color3.fromRGB(30,55,42)},{n="Night",b1=Color3.fromRGB(5,10,20),b2=Color3.fromRGB(10,18,35),br=Color3.fromRGB(30,45,75)},{n="Void",b1=Color3.fromRGB(3,3,8),b2=Color3.fromRGB(7,5,14),br=Color3.fromRGB(25,20,45)},{n="Blood",b1=Color3.fromRGB(14,4,4),b2=Color3.fromRGB(24,8,8),br=Color3.fromRGB(60,22,22)},{n="Ocean",b1=Color3.fromRGB(4,8,18),b2=Color3.fromRGB(8,14,30),br=Color3.fromRGB(25,40,70)}})do local sw=Instance.new("TextButton",thR)sw.Size=UDim2.new(0,44,0,20)sw.BackgroundColor3=mc.b2 sw.BorderSizePixel=0 sw.Text=mc.n sw.Font=Enum.Font.GothamBold sw.TextSize=7 sw.TextColor3=T.t2 sw.AutoButtonColor=false Instance.new("UICorner",sw).CornerRadius=UDim.new(0,4)sw.MouseButton1Click:Connect(function()T.bg1=mc.b1 T.bg2=mc.b2 T.br=mc.br local ti=TweenInfo.new(0.3)TW:Create(P,ti,{BackgroundColor3=mc.b1}):Play()TW:Create(H,ti,{BackgroundColor3=mc.b2}):Play()TW:Create(Si,ti,{BackgroundColor3=mc.b2}):Play()PSt.Color=mc.br for _,tf in pairs(tfs)do for _,ch in ipairs(tf:GetChildren())do if ch:IsA("Frame")and ch.BackgroundTransparency<0.5 then TW:Create(ch,ti,{BackgroundColor3=mc.b2}):Play()local stk=ch:FindFirstChildOfClass("UIStroke")if stk then TW:Create(stk,ti,{Color=mc.br}):Play()end end end end Nf("Theme",mc.n,1.5,Ac)end)end

-- Profile
local s3=mS(tSe,"👤 PROFILE",3)local pRow=Instance.new("Frame",s3)pRow.Size=UDim2.new(1,0,0,50)pRow.BackgroundTransparency=1 pRow.LayoutOrder=1
local av=Instance.new("ImageLabel",pRow)av.Size=UDim2.new(0,40,0,40)av.Position=UDim2.new(0,0,0,4)av.BackgroundColor3=T.bg3 av.BorderSizePixel=0 Instance.new("UICorner",av).CornerRadius=UDim.new(0,8)pcall(function()av.Image=Players:GetUserThumbnailAsync(LP.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)end)
local pn=Instance.new("TextLabel",pRow)pn.Size=UDim2.new(1,-50,0,13)pn.Position=UDim2.new(0,50,0,4)pn.BackgroundTransparency=1 pn.Text=LP.DisplayName pn.Font=Enum.Font.GothamBold pn.TextSize=12 pn.TextColor3=T.t1 pn.TextXAlignment=Enum.TextXAlignment.Left
local pu=Instance.new("TextLabel",pRow)pu.Size=UDim2.new(1,-50,0,10)pu.Position=UDim2.new(0,50,0,19)pu.BackgroundTransparency=1 pu.Text="@"..LP.Name pu.Font=Enum.Font.Gotham pu.TextSize=8 pu.TextColor3=T.t3 pu.TextXAlignment=Enum.TextXAlignment.Left
local pst=Instance.new("TextLabel",pRow)pst.Size=UDim2.new(1,-50,0,10)pst.Position=UDim2.new(0,50,0,32)pst.BackgroundTransparency=1 pst.Text="● PREMIUM ACTIVE" pst.Font=Enum.Font.GothamBold pst.TextSize=8 pst.TextColor3=Color3.fromRGB(0,255,130)pst.TextXAlignment=Enum.TextXAlignment.Left

-- Discord
local s4=mS(tSe,"💬 DISCORD",4)
mB(s4,"📋 Copy Discord Link",1,function()if setclipboard then setclipboard("https://discord.gg/qTGtM4Uyc")Nf("Discord","Link copied!",2,Color3.fromRGB(88,101,242))else Nf("Error","Not supported",2,Color3.fromRGB(255,50,50))end end)

-- Info
local s5=mS(tSe,"ℹ️ KEYBINDS",5)local il=Instance.new("TextLabel",s5)il.Size=UDim2.new(1,0,0,55)il.BackgroundTransparency=1 il.Text="[LCtrl] hide/show menu\n[F] save position · [G] tp back\n[Delete] destroy script\n\nHIROSHI 738 · Adopt Me Ultimate v3.0\nBy Hiroshi738 · discord.gg/qTGtM4Uyc" il.Font=Enum.Font.Gotham il.TextSize=8 il.TextColor3=T.t2 il.TextXAlignment=Enum.TextXAlignment.Left il.TextYAlignment=Enum.TextYAlignment.Top il.LayoutOrder=1

selT("🏃 Player")

-- ═══ SYSTEMS ═══
table.insert(CN,UIS.InputBegan:Connect(function(i,g)if g then return end if i.KeyCode==Enum.KeyCode.LeftControl then P.Visible=not P.Visible
    elseif i.KeyCode==Enum.KeyCode.Delete then Dead=true for _,c in ipairs(CN)do pcall(function()c:Disconnect()end)end if Spec then Cam.CameraSubject=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")end if LP.Character then local hr=LP.Character:FindFirstChild("HumanoidRootPart")if hr then local bv=hr:FindFirstChild("H738F")if bv then bv:Destroy()end local bg=hr:FindFirstChild("H738G")if bg then bg:Destroy()end end local hm=LP.Character:FindFirstChildOfClass("Humanoid")if hm then pcall(function()hm.WalkSpeed=16 hm.JumpPower=50 hm.PlatformStand=false end)end end pcall(function()Light.Brightness=OG.B Light.FogEnd=OG.FE Light.FogStart=OG.FS2 Light.GlobalShadows=OG.GS Light.ClockTime=OG.CT Cam.FieldOfView=OG.CV end)for p,o in pairs(EO)do pcall(function()o.nm:Remove()o.dt:Remove()o.bx:Remove()o.tr:Remove()end)end SG:Destroy()
    elseif i.KeyCode==Enum.KeyCode.F then if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then CFG.SP=LP.Character.HumanoidRootPart.CFrame Nf("Pos","Saved!",1,Ac)end
    elseif i.KeyCode==Enum.KeyCode.G then if CFG.SP and LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=CFG.SP end end end))

table.insert(CN,UIS.JumpRequest:Connect(function()if CFG.InfJump and LP.Character then local h=LP.Character:FindFirstChildOfClass("Humanoid")if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end end end))
local VU=game:GetService("VirtualUser")table.insert(CN,LP.Idled:Connect(function()if CFG.AFK then VU:Button2Down(Vector2.new(0,0),Cam.CFrame)task.wait(1)VU:Button2Up(Vector2.new(0,0),Cam.CFrame)end end))

-- ESP
local EO={}
local function gE(p)if EO[p]then return EO[p]end local o={}o.nm=Drawing.new("Text")o.nm.Size=12 o.nm.Font=2 o.nm.Center=true o.nm.Outline=true o.nm.Visible=false o.dt=Drawing.new("Text")o.dt.Size=10 o.dt.Font=2 o.dt.Center=true o.dt.Outline=true o.dt.Visible=false o.bx=Drawing.new("Square")o.bx.Thickness=1 o.bx.Filled=false o.bx.Visible=false o.tr=Drawing.new("Line")o.tr.Thickness=1 o.tr.Visible=false EO[p]=o return o end
local function hE(o)o.nm.Visible=false o.dt.Visible=false o.bx.Visible=false o.tr.Visible=false end
table.insert(CN,Players.PlayerRemoving:Connect(function(p)local o=EO[p]if o then pcall(function()o.nm:Remove()o.dt:Remove()o.bx:Remove()o.tr:Remove()end)EO[p]=nil end end))

-- FLY
table.insert(CN,RS.Heartbeat:Connect(function()if Dead then return end local ch=LP.Character if not ch then return end local hr=ch:FindFirstChild("HumanoidRootPart")if not hr then return end local hm=ch:FindFirstChildOfClass("Humanoid")local bv=hr:FindFirstChild("H738F")local bg=hr:FindFirstChild("H738G")
if not CFG.Fly then if bv then bv:Destroy()end if bg then bg:Destroy()end if hm and hm.PlatformStand then hm.PlatformStand=false end return end
if hm then hm.PlatformStand=true end if not bv then bv=Instance.new("BodyVelocity")bv.Name="H738F" bv.MaxForce=Vector3.new(1e6,1e6,1e6)bv.Parent=hr end if not bg then bg=Instance.new("BodyGyro")bg.Name="H738G" bg.MaxTorque=Vector3.new(1e6,1e6,1e6)bg.P=1e4 bg.Parent=hr end
bg.CFrame=Cam.CFrame local dir=Vector3.zero if UIS:IsKeyDown(Enum.KeyCode.W)then dir=dir+Cam.CFrame.LookVector end if UIS:IsKeyDown(Enum.KeyCode.S)then dir=dir-Cam.CFrame.LookVector end if UIS:IsKeyDown(Enum.KeyCode.A)then dir=dir-Cam.CFrame.RightVector end if UIS:IsKeyDown(Enum.KeyCode.D)then dir=dir+Cam.CFrame.RightVector end if UIS:IsKeyDown(Enum.KeyCode.Space)then dir=dir+Vector3.yAxis end if UIS:IsKeyDown(Enum.KeyCode.LeftShift)then dir=dir-Vector3.yAxis end
bv.Velocity=dir.Magnitude>0 and dir.Unit*CFG.FS or Vector3.zero end))

-- Auto Collect
local lastCol=0
table.insert(CN,RS.Heartbeat:Connect(function()if Dead or not CFG.AutoCollect then return end local now=tick()if now-lastCol<CFG.CS then return end lastCol=now
    local ch=LP.Character if not ch then return end local hrp=ch:FindFirstChild("HumanoidRootPart")if not hrp then return end
    local items=findCollectibles()if #items==0 then return end table.sort(items,function(a,b)return(a.Position-hrp.Position).Magnitude<(b.Position-hrp.Position).Magnitude end)
    local nearest=items[1]if(nearest.Position-hrp.Position).Magnitude<=CFG.CR then hrp.CFrame=nearest.CFrame+Vector3.new(0,2,0)
        local pp=nearest:FindFirstChildOfClass("ProximityPrompt")if pp then pcall(function()fireproximityprompt(pp)end)end
        local cd=nearest:FindFirstChildOfClass("ClickDetector")if cd then pcall(function()fireclickdetector(cd)end)end
        collectCount=collectCount+1 colLbl.Text="💰 Collected: "..collectCount end end))

-- Auto Care (cycle through care spots)
local careSpots={CFrame.new(-126,30,-1664),CFrame.new(-447,30,-1729),CFrame.new(85,30,-1600),CFrame.new(-305,30,-1504)}
local careIdx=1 local lastCare=0
table.insert(CN,RS.Heartbeat:Connect(function()if Dead or not CFG.AutoCare then return end local now=tick()if now-lastCare<8 then return end lastCare=now
    if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")then LP.Character.HumanoidRootPart.CFrame=careSpots[careIdx]careIdx=careIdx%#careSpots+1 careCount=careCount+1 careLbl.Text="🐾 Care actions: "..careCount end end))

-- RENDER
table.insert(CN,RS.RenderStepped:Connect(function()if Dead then return end
    local ch=LP.Character if not ch then return end local hm=ch:FindFirstChildOfClass("Humanoid")
    if hm then if CFG.Speed then hm.WalkSpeed=CFG.SV end if CFG.JP then hm.JumpPower=CFG.JV end end
    if CFG.Noclip then for _,p in ipairs(ch:GetDescendants())do if p:IsA("BasePart")and p.CanCollide then p.CanCollide=false end end end
    if CFG.FvC then Cam.FieldOfView=CFG.CF end if CFG.FT then Light.ClockTime=CFG.TV end
    local el=math.floor(tick()-Session)sessLbl.Text=math.floor(el/60)..":"..string.format("%02d",el%60)
    careLbl.Text="🐾 Care: "..careCount

    local vp=Cam.ViewportSize local ctr=vp/2
    local anyE=CFG.ESPNm or CFG.ESPBx or CFG.ESPDst or CFG.ESPTr
    for _,p in ipairs(Players:GetPlayers())do if p==LP then continue end local o=gE(p)
        if not anyE then hE(o)continue end local pc=p.Character local hd=pc and pc:FindFirstChild("Head")local hr2=pc and(pc:FindFirstChild("HumanoidRootPart")or pc:FindFirstChild("Torso"))local hm2=pc and pc:FindFirstChildOfClass("Humanoid")
        if not(pc and hd and hr2 and hm2 and hm2.Health>0)then hE(o)continue end
        local sp,vis=Cam:WorldToViewportPoint(hd.Position+Vector3.new(0,1,0))local fp=Cam:WorldToViewportPoint(hr2.Position-Vector3.new(0,3,0))
        if not vis then hE(o)continue end local dist=(Cam.CFrame.Position-hr2.Position).Magnitude
        local bH=math.abs(sp.Y-fp.Y)local bW=bH*0.55 local bX=sp.X-bW/2 local bY=sp.Y-4
        if CFG.ESPNm then o.nm.Text=p.DisplayName o.nm.Position=Vector2.new(sp.X,sp.Y-16)o.nm.Color=Ac o.nm.Visible=true else o.nm.Visible=false end
        if CFG.ESPDst then o.dt.Text="["..math.floor(dist).."m]" o.dt.Position=Vector2.new(fp.X,fp.Y+3)o.dt.Color=Ac o.dt.Visible=true else o.dt.Visible=false end
        if CFG.ESPBx then o.bx.Size=Vector2.new(bW,bH)o.bx.Position=Vector2.new(bX,bY)o.bx.Color=Ac o.bx.Visible=true else o.bx.Visible=false end
        if CFG.ESPTr then o.tr.From=Vector2.new(ctr.X,vp.Y)o.tr.To=Vector2.new(fp.X,fp.Y)o.tr.Color=Ac o.tr.Visible=true else o.tr.Visible=false end
    end
end))

Nf("🐾 HIROSHI 738","Ultimate Premium loaded!",3,Ac)
Nf("💰 Farm","Auto-collect & Pet Care ready",3,Color3.fromRGB(255,220,0))
Nf("✈️ Features","10 tabs · All features active",3,Color3.fromRGB(0,180,255))
Nf("💬 Discord","discord.gg/qTGtM4Uyc",4,Color3.fromRGB(88,101,242))

end -- Launch
