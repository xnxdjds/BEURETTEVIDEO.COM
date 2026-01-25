
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _xrhytd7ao = function()
    --NIQUE LES JUIF
local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local UserInputService = game:GetService((function()
        local a={1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local VirtualUser = game:GetService((function()
        local a={1155,1402,1519,1545,1558,1298,1441,1142,1532,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local CoreGui = game:GetService((function()
        local a={908,1480,1519,1350,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

if _G.BalkanLoaded then return end
_G.BalkanLoaded = true

local MenuVisible = true
local CurrentTab = (function()
        local a={1038,1298,1402,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()

-- Paramètres
local Settings = {
    Aimbot = false,
    AimbotFOV = 120,
    AimbotSmooth = 0.25,
    ESP = false,
    AfficherNoms = true,
    TailleNoms = 13,
    VitesseMarche = 36,
    PuissanceSaut = 55,
    SautInfini = false,
    NoClip = false,
    TP_Clic = false,
    AntiAFK = false,
    FreeCam = false,
    Fly = false,
    FlySpeed = 50,
    Branlette = false,
    ToucheMenu = Enum.KeyCode.H
}

local AutoPaff = {
    Enabled = false,
    CPS = 120,
    ToggleKey = Enum.KeyCode.F6
}

local ListeAmis = {}
local ListeJoueursFrames = {}
local SpinSpeed = 5000
local SpinEnabled = false

local COULEUR_ENNEMI = Color3.fromRGB(255, 70, 70)
local COULEUR_ALLIE = Color3.fromRGB(70, 255, 100)
local COULEUR_NOM_ENNEMI = Color3.fromRGB(255, 220, 100)
local COULEUR_NOM_ALLIE = Color3.fromRGB(120, 255, 220)

-- partie aimbot head ect ..
local PartieVisee = (function()
        local a={1129,3079,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
local optionsParties = {(function()
        local a={1129,3079,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1129,1480,1519,1532,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={908,1480,1558};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={934,1493,1298,1558,1441,1350,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1038,1298,1402,1467,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={934,1493,1298,1558,1441,1350,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1038,1298,1402,1467,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={908,1558,1402,1532,1532,1350,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1038,1480,1441,1441,1350,1545,453,921,1519,1480,1402,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={908,1558,1402,1532,1532,1350,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1038,1480,1441,1441,1350,1545,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1103,739,453,934,1129,453,1103,674,726,453,1077,934,1103,1116,1064};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}

local function getPartNames(part)
    local map = {
        [(function()
        local a={1129,3079,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={973,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1129,1480,1519,1532,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1142,1493,1493,1350,1519,1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={908,1480,1558};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1051,1350,1324,1428};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={934,1493,1298,1558,1441,1350,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1103,1402,1376,1389,1545,1142,1493,1493,1350,1519,882,1519,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1038,1298,1402,1467,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1103,1402,1376,1389,1545,1025,1480,1584,1350,1519,882,1519,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={934,1493,1298,1558,1441,1350,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1025,1350,1363,1545,1142,1493,1493,1350,1519,882,1519,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1038,1298,1402,1467,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1025,1350,1363,1545,1025,1480,1584,1350,1519,882,1519,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={908,1558,1402,1532,1532,1350,453,921,1519,1480,1402,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1103,1402,1376,1389,1545,1142,1493,1493,1350,1519,1025,1350,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1038,1480,1441,1441,1350,1545,453,921,1519,1480,1402,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1103,1402,1376,1389,1545,1025,1480,1584,1350,1519,1025,1350,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={908,1558,1402,1532,1532,1350,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1025,1350,1363,1545,1142,1493,1493,1350,1519,1025,1350,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1038,1480,1441,1441,1350,1545,453,960,1298,1558,1324,1389,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={1025,1350,1363,1545,1025,1480,1584,1350,1519,1025,1350,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()},
        [(function()
        local a={1103,739,453,934,1129,453,1103,674,726,453,1077,934,1103,1116,1064};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()] = {(function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}
    }
    return map[part] or {(function()
        local a={973,1350,1298,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}
end

-- Téléport / Follow player
local TargetPlayer = nil
local FollowConnection = nil
local FollowToggle = false

-- GUI
local ScreenGui = Instance.new((function()
        local a={1116,1324,1519,1350,1350,1467,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
ScreenGui.Name = (function()
        local a={895,1298,1441,1428,1298,1467,1181,1064,921};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
MainFrame.Size = UDim2.new(0, 520, 0, 680)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -340)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
MainFrame.BorderSizePixel = 0
MainFrame.ZIndex = 10000
MainFrame.Parent = ScreenGui
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame).CornerRadius = UDim.new(0, 12)

-- Barre titre à la zeub pas d'idée mais trql
local TitleBar = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame)
TitleBar.Size = UDim2.new(1,0,0,48)
TitleBar.BackgroundColor3 = Color3.fromRGB(35,35,60)
TitleBar.ZIndex = 1000001
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TitleBar).CornerRadius = UDim.new(0,12)

local Title = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TitleBar)
Title.Size = UDim2.new(1,-100,1,0)
Title.Position = UDim2.new(0,15,0,0)
Title.BackgroundTransparency = 1
Title.Text = (function()
        local a={895,1298,1441,1428,1298,1467,453,1181,1064,921,453,1155,687,453,1324,1519,3066,1350,453,1493,1298,1519,453,1532,1298,1441,1558,1545,1415,1298,1402,1454,1350,1441,1350,1532,1428,1298,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
Title.TextColor3 = Color3.fromRGB(255,200,120)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TitleBar)
CloseBtn.Size = UDim2.new(0,40,0,40)
CloseBtn.Position = UDim2.new(1,-50,0,4)
CloseBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
CloseBtn.Text = (function()
        local a={1181};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
CloseBtn.TextColor3 = Color3.new(1,1,1)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 20
CloseBtn.ZIndex = 1000002
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), CloseBtn).CornerRadius = UDim.new(0,8)

-- Onglets
local TabsFrame = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame)
TabsFrame.Size = UDim2.new(1,0,0,40)
TabsFrame.Position = UDim2.new(0,0,0,48)
TabsFrame.BackgroundTransparency = 1

local MainTabBtn = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TabsFrame)
MainTabBtn.Size = UDim2.new(0.33,-5,1,-4)
MainTabBtn.Position = UDim2.new(0,5,0,2)
MainTabBtn.BackgroundColor3 = Color3.fromRGB(0,180,255)
MainTabBtn.Text = (function()
        local a={1038,882,986,1051};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
MainTabBtn.TextColor3 = Color3.new(1,1,1)
MainTabBtn.Font = Enum.Font.GothamBold
MainTabBtn.TextSize = 16
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainTabBtn).CornerRadius = UDim.new(0,8)

local AutoPaffTabBtn = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TabsFrame)
AutoPaffTabBtn.Size = UDim2.new(0.33,-5,1,-4)
AutoPaffTabBtn.Position = UDim2.new(0.33,0,0,2)
AutoPaffTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
AutoPaffTabBtn.Text = (function()
        local a={882,1142,1129,1064,1077,882,947,947};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
AutoPaffTabBtn.TextColor3 = Color3.new(1,1,1)
AutoPaffTabBtn.Font = Enum.Font.GothamBold
AutoPaffTabBtn.TextSize = 16
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), AutoPaffTabBtn).CornerRadius = UDim.new(0,8)

local TeleportTabBtn = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TabsFrame)
TeleportTabBtn.Size = UDim2.new(0.33,-5,1,-4)
TeleportTabBtn.Position = UDim2.new(0.66,0,0,2)
TeleportTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
TeleportTabBtn.Text = (function()
        local a={1129,934,1025,934,1077,1064,1103,1129,934,1103};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
TeleportTabBtn.TextColor3 = Color3.new(1,1,1)
TeleportTabBtn.Font = Enum.Font.GothamBold
TeleportTabBtn.TextSize = 16
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TeleportTabBtn).CornerRadius = UDim.new(0,8)

-- Contde paff
local MainContent = Instance.new((function()
        local a={1116,1324,1519,1480,1441,1441,1402,1467,1376,947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame)
MainContent.Size = UDim2.new(1,-20,1,-100)
MainContent.Position = UDim2.new(0,10,0,100)
MainContent.BackgroundTransparency = 1
MainContent.ScrollBarThickness = 6
MainContent.Visible = true
MainContent.CanvasSize = UDim2.new(0,0,0,4500)

local AutoPaffContent = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame)
AutoPaffContent.Size = UDim2.new(1,-20,1,-100)
AutoPaffContent.Position = UDim2.new(0,10,0,100)
AutoPaffContent.BackgroundTransparency = 1
AutoPaffContent.Visible = false

local TeleportContent = Instance.new((function()
        local a={1116,1324,1519,1480,1441,1441,1402,1467,1376,947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainFrame)
TeleportContent.Size = UDim2.new(1,-20,1,-100)
TeleportContent.Position = UDim2.new(0,10,0,100)
TeleportContent.BackgroundTransparency = 1
TeleportContent.ScrollBarThickness = 6
TeleportContent.Visible = false
TeleportContent.CanvasSize = UDim2.new(0,0,0,2000)

local MainList = Instance.new((function()
        local a={1142,986,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), MainContent)
MainList.Padding = UDim.new(0,10)
MainList.SortOrder = Enum.SortOrder.LayoutOrder

local TeleportList = Instance.new((function()
        local a={1142,986,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), TeleportContent)
TeleportList.Padding = UDim.new(0,8)
TeleportList.SortOrder = Enum.SortOrder.LayoutOrder

-- Switch onglets
MainTabBtn.MouseButton1Click:Connect(function()
    MainTabBtn.BackgroundColor3 = Color3.fromRGB(0,180,255)
    AutoPaffTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    TeleportTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    MainContent.Visible = true
    AutoPaffContent.Visible = false
    TeleportContent.Visible = false
end)

AutoPaffTabBtn.MouseButton1Click:Connect(function()
    MainTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    AutoPaffTabBtn.BackgroundColor3 = Color3.fromRGB(0,180,255)
    TeleportTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    MainContent.Visible = false
    AutoPaffContent.Visible = true
    TeleportContent.Visible = false
end)

TeleportTabBtn.MouseButton1Click:Connect(function()
    MainTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    AutoPaffTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
    TeleportTabBtn.BackgroundColor3 = Color3.fromRGB(0,180,255)
    MainContent.Visible = false
    AutoPaffContent.Visible = false
    TeleportContent.Visible = true
end)

-- Drag
local dragging = false
local dragStart, startPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

TitleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        local screen = workspace.CurrentCamera.ViewportSize
        local size = MainFrame.AbsoluteSize
        MainFrame.Position = UDim2.new(0, math.clamp(newPos.X.Offset, 0, screen.X - size.X), 0, math.clamp(newPos.Y.Offset, 0, screen.Y - size.Y))
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    MenuVisible = false
    ScreenGui.Enabled = false
end)

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Settings.ToucheMenu then
        MenuVisible = not MenuVisible
        ScreenGui.Enabled = MenuVisible
    end
end)

-- Watermark amis
local Watermark = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
Watermark.AnchorPoint = Vector2.new(1,1)
Watermark.Position = UDim2.new(1, -15, 1, -15)
Watermark.Size = UDim2.new(0, 220, 0, 180)
Watermark.BackgroundTransparency = 0.4
Watermark.BackgroundColor3 = Color3.fromRGB(15,15,35)
Watermark.Text = "(function()
        local a={167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,674,765,661,609,453,687,726,726,609,453,674,765,661,570,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,726,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,1116,1350,1454,1402,1311,1480,1441,1337,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,1194,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1194,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1129,1480,1493,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,1168,1519,1298,1493,1493,1350,1337,453,830,453,1545,1519,1558,1350,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1207,986,1467,1337,1350,1597,453,830,453,778,778,778,778,778,778,167,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1077,1298,1519,1350,1467,1545,453,830,453,1116,1324,1519,1350,1350,1467,960,1558,1402,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1168,1298,1545,1350,1519,1454,1298,1519,1428,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding(function()
        local a={609,453,1168,1298,1545,1350,1519,1454,1298,1519,1428,570,635,1077,1298,1337,1337,1402,1467,1376,1025,1350,1363,1545,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,674,661,570,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding(function()
        local a={609,453,1168,1298,1545,1350,1519,1454,1298,1519,1428,570,635,1077,1298,1337,1337,1402,1467,1376,1129,1480,1493,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,1142,1493,1337,1298,1545,1350,1168,1298,1545,1350,1519,1454,1298,1519,1428,557,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1350,1597,1545,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Amis ((function()
        local a={453,635,635,453,492,1025,1402,1532,1545,1350,882,1454,1402,1532,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())\n(function()
        local a={167,453,453,453,453,1402,1363,453,492,1025,1402,1532,1545,1350,882,1454,1402,1532,453,830,830,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1545,1350,1597,1545,453,830,453,1545,1350,1597,1545,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aucun fdp ajouté(function()
        local a={167,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1467,1298,1454,1350,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1025,1402,1532,1545,1350,882,1454,1402,1532,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,1545,1350,1597,1545,453,830,453,1545,1350,1597,1545,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()• (function()
        local a={453,635,635,453,1467,1298,1454,1350,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()\n(function()
        local a={167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,453,453,453,453,1168,1298,1545,1350,1519,1454,1298,1519,1428,635,1129,1350,1597,1545,453,830,453,1545,1350,1597,1545,167,1350,1467,1337,167,167,622,622,453,1142,986,453,973,1350,1441,1493,1350,1519,1532,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1493,1298,1519,1350,1467,1545,609,453,1467,1480,1454,609,453,1337,1350,1363,1298,1558,1545,609,453,1324,1298,1441,1441,1311,1298,1324,1428,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1363,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,453,1493,1298,1519,1350,1467,1545,570,167,453,453,453,453,1363,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,713,726,570,167,453,453,453,453,1363,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,726,609,700,726,609,726,661,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1363,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,1363,570,167,453,453,453,453,1441,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,726,609,661,609,674,609,661,570,167,453,453,453,453,1441,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,453,453,453,453,1441,635,1129,1350,1597,1545,453,830,453,1467,1480,1454,167,453,453,453,453,1441,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1441,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,752,167,453,453,453,453,1441,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,1116,1350,1454,1402,1311,1480,1441,1337,167,453,453,453,453,1441,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding(function()
        local a={609,1441,570,635,1077,1298,1337,1337,1402,1467,1376,1025,1350,1363,1545,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,674,726,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1311,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton(function()
        local a={609,1363,570,167,453,453,453,453,1311,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,700,609,661,609,661,635,752,726,609,661,570,167,453,453,453,453,1311,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,765,609,661,609,661,635,674,687,726,609,661,570,167,453,453,453,453,1311,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,1337,1350,1363,1298,1558,1545,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,661,609,674,765,661,609,687,726,726,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,778,661,609,778,661,609,778,661,570,167,453,453,453,453,1311,635,1129,1350,1597,1545,453,830,453,1337,1350,1363,1298,1558,1545,453,1298,1467,1337,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()OUI(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NON(function()
        local a={167,453,453,453,453,1311,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1311,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1480,1441,1337,167,453,453,453,453,1311,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner",b).CornerRadius = UDim.new(0,6)

    local etat = defaut
    b.MouseButton1Click:Connect(function()
        etat = not etat
        b.BackgroundColor3 = etat and Color3.fromRGB(0,180,255) or Color3.fromRGB(90,90,90)
        b.Text = etat and "OUI(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NON(function()
        local a={167,453,453,453,453,453,453,453,453,1324,1298,1441,1441,1311,1298,1324,1428,557,1350,1545,1298,1545,570,167,453,453,453,453,1350,1467,1337,570,167,1350,1467,1337,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1493,1298,1519,1350,1467,1545,609,453,1467,1480,1454,609,453,1454,1402,1467,1571,609,453,1454,1298,1597,1571,609,453,1337,1350,1363,1298,1558,1545,609,453,1324,1298,1441,1441,1311,1298,1324,1428,609,453,1363,1480,1519,1454,1298,1545,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1363,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,453,1493,1298,1519,1350,1467,1545,570,167,453,453,453,453,1363,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,739,726,570,167,453,453,453,453,1363,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,726,609,700,726,609,726,661,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1363,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,1363,570,167,453,453,453,453,1441,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,609,661,609,661,635,700,726,609,661,570,167,453,453,453,453,1441,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,453,453,453,453,1441,635,1129,1350,1597,1545,453,830,453,1467,1480,1454,167,453,453,453,453,1441,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1441,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,453,453,453,453,1441,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,453,453,453,453,1441,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding(function()
        local a={609,1441,570,635,1077,1298,1337,1337,1402,1467,1376,1025,1350,1363,1545,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,674,726,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1571,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,1363,570,167,453,453,453,453,1571,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,700,726,609,661,609,661,635,700,726,609,661,570,167,453,453,453,453,1571,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,700,609,661,609,661,609,661,570,167,453,453,453,453,1571,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,453,453,453,453,1571,635,1129,1350,1597,1545,453,830,453,1532,1545,1519,1402,1467,1376,635,1363,1480,1519,1454,1298,1545,557,1363,1480,1519,1454,1298,1545,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.0f(function()
        local a={609,453,1337,1350,1363,1298,1558,1545,570,167,453,453,453,453,1571,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,674,765,661,609,674,765,661,609,687,726,726,570,167,453,453,453,453,1571,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,453,453,453,453,1571,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,453,453,453,453,1571,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1103,1402,1376,1389,1545,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1298,1519,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,1363,570,167,453,453,453,453,1311,1298,1519,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,622,700,661,609,661,609,674,661,570,167,453,453,453,453,1311,1298,1519,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,674,726,609,661,609,713,726,570,167,453,453,453,453,1311,1298,1519,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,739,661,609,739,661,609,765,661,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1311,1298,1519,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,726,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1363,1402,1441,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,1311,1298,1519,570,167,453,453,453,453,1363,1402,1441,1441,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,557,1337,1350,1363,1298,1558,1545,622,1454,1402,1467,1571,570,648,557,1454,1298,1597,1571,622,1454,1402,1467,1571,570,609,661,609,674,609,661,570,167,453,453,453,453,1363,1402,1441,1441,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,661,609,674,765,661,609,687,726,726,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1363,1402,1441,1441,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,726,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1519,1298,1376,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,1311,1298,1519,635,986,1467,1493,1558,1545,895,1350,1376,1298,1467,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1402,570,453,1402,1363,453,1402,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,453,830,830,453,934,1467,1558,1454,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,635,1038,1480,1558,1532,1350,895,1558,1545,1545,1480,1467,674,453,1545,1389,1350,1467,453,1337,1519,1298,1376,453,830,453,1545,1519,1558,1350,453,1350,1467,1337,453,1350,1467,1337,570,167,453,453,453,453,1311,1298,1519,635,986,1467,1493,1558,1545,934,1467,1337,1350,1337,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1402,570,453,1402,1363,453,1402,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,453,830,830,453,934,1467,1558,1454,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,635,1038,1480,1558,1532,1350,895,1558,1545,1545,1480,1467,674,453,1545,1389,1350,1467,453,1337,1519,1298,1376,453,830,453,1363,1298,1441,1532,1350,453,1350,1467,1337,453,1350,1467,1337,570,167,167,453,453,453,453,1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350,635,986,1467,1493,1558,1545,908,1389,1298,1467,1376,1350,1337,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1402,570,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1337,1519,1298,1376,453,1480,1519,453,1402,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,453,1675,830,453,934,1467,1558,1454,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,635,1038,1480,1558,1532,1350,1038,1480,1571,1350,1454,1350,1467,1545,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1350,1441,453,830,453,1454,1298,1545,1389,635,1324,1441,1298,1454,1493,557,557,1402,635,1077,1480,1532,1402,1545,1402,1480,1467,635,1181,453,622,453,1311,1298,1519,635,882,1311,1532,1480,1441,1558,1545,1350,1077,1480,1532,1402,1545,1402,1480,1467,635,1181,570,648,1311,1298,1519,635,882,1311,1532,1480,1441,1558,1545,1350,1116,1402,1623,1350,635,1181,609,453,661,609,674,570,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1571,1298,1441,453,830,453,1454,1402,1467,1571,453,596,453,1519,1350,1441,583,557,1454,1298,1597,1571,622,1454,1402,1467,1571,570,167,453,453,453,453,453,453,453,453,1363,1402,1441,1441,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,1519,1350,1441,609,661,609,674,609,661,570,167,453,453,453,453,453,453,453,453,1571,635,1129,1350,1597,1545,453,830,453,1532,1545,1519,1402,1467,1376,635,1363,1480,1519,1454,1298,1545,557,1363,1480,1519,1454,1298,1545,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.0f(function()
        local a={609,453,1571,1298,1441,570,167,453,453,453,453,453,453,453,453,1324,1298,1441,1441,1311,1298,1324,1428,557,1571,1298,1441,570,167,453,453,453,453,1350,1467,1337,570,167,1350,1467,1337,167,167,622,622,453,453,1493,1480,1558,1519,453,1324,1389,1480,1402,1532,1402,1519,453,1441,1298,453,1493,1298,1519,1545,1402,1350,453,1571,1402,1532,3066,1350,453,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,947,1519,1298,1454,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,453,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,570,167,1077,1298,1519,1545,1402,1350,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,713,726,570,167,1077,1298,1519,1545,1402,1350,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,726,609,700,726,609,726,661,570,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,947,1519,1298,1454,1350,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,1025,1298,1311,1350,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", PartieFrame)
PartieLabel.Size = UDim2.new(0.5,0,1,0)
PartieLabel.BackgroundTransparency = 1
PartieLabel.Text = (function()
        local a={1077,1298,1519,1545,1402,1350,453,1571,1402,1532,3066,1350,453,1493,1298,1519,453,882,1402,1454,1311,1480,1545,453,791};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
PartieLabel.TextColor3 = Color3.new(1,1,1)
PartieLabel.TextSize = 17
PartieLabel.Font = Enum.Font.GothamSemibold
PartieLabel.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,1025,1298,1311,1350,1441,570,635,1077,1298,1337,1337,1402,1467,1376,1025,1350,1363,1545,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,674,726,570,167,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,947,1519,1298,1454,1350,570,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,713,726,609,661,609,661,635,765,609,661,570,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,726,687,609,661,609,661,635,674,609,661,570,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,726,661,609,726,661,609,752,661,570,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,1129,1350,1597,1545,453,830,453,1077,1298,1519,1545,1402,1350,1155,1402,1532,1350,1350,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1480,1441,1337,167,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,895,1558,1545,1545,1480,1467,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ScrollingFrame(function()
        local a={570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,713,726,609,661,609,661,609,687,661,661,570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,726,687,609,661,609,674,635,674,609,661,570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,661,609,700,661,609,713,726,570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,895,1480,1519,1337,1350,1519,1116,1402,1623,1350,1077,1402,1597,1350,1441,453,830,453,661,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1116,1324,1519,1480,1441,1441,895,1298,1519,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,830,453,713,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1077,1298,1519,1350,1467,1545,453,830,453,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,167,1441,1480,1324,1298,1441,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIListLayout(function()
        local a={609,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,635,1077,1298,1337,1337,1402,1467,1376,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,713,570,167,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,453,830,453,934,1467,1558,1454,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,167,167,1363,1480,1519,453,1272,609,453,1480,1493,1545,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1480,1493,1545,1402,1480,1467,1532,1077,1298,1519,1545,1402,1350,1532,570,453,1337,1480,167,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1545,1467,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton(function()
        local a={570,167,453,453,453,453,1311,1545,1467,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,700,661,570,167,453,453,453,453,1311,1545,1467,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,713,661,609,713,661,609,739,661,570,167,453,453,453,453,1311,1545,1467,635,1129,1350,1597,1545,453,830,453,1480,1493,1545,167,453,453,453,453,1311,1545,1467,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1311,1545,1467,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,453,453,453,453,1311,1545,1467,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,453,453,453,453,1311,1545,1467,635,1077,1298,1519,1350,1467,1545,453,830,453,1077,1298,1519,1545,1402,1350,1025,1402,1532,1545,947,1519,1298,1454,1350,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner", btn).CornerRadius = UDim.new(0,4)

    btn.MouseButton1Click:Connect(function()
        PartieVisee = opt
        PartieButton.Text = opt
        PartieListFrame.Visible = false
        PartieListVisible = false
    end)
end

PartieButton.MouseButton1Click:Connect(function()
    PartieListVisible = not PartieListVisible
    PartieListFrame.Visible = PartieListVisible
end)

-- ===================== MAIN TAB (suite) =====================
AddToggle(MainContent, "Aimbot(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Fov Aimbot(function()
        local a={609,453,674,661,609,453,700,661,661,609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,947,1064,1155,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,947,1064,1155,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1571,570,453,1350,1467,1337,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.0f(function()
        local a={570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Smooth Aimbot(function()
        local a={609,453,661,609,453,674,609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,1116,1454,1480,1480,1545,1389,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1402,1454,1311,1480,1545,1116,1454,1480,1480,1545,1389,453,830,453,1571,453,1350,1467,1337,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.2f(function()
        local a={570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ESP(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,934,1116,1077,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,934,1116,1077,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Afficher les noms(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1363,1363,1402,1324,1389,1350,1519,1051,1480,1454,1532,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1363,1363,1402,1324,1389,1350,1519,1051,1480,1454,1532,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Vitesse De Marche", 16, 400, Settings.VitesseMarche, function(v) Settings.VitesseMarche = v pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = v end) end, "%.0f(function()
        local a={570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Puissance Du Jump", 50, 300, Settings.PuissanceSaut, function(v) Settings.PuissanceSaut = v pcall(function() LocalPlayer.Character.Humanoid.JumpPower = v end) end, "%.0f(function()
        local a={570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Saut infini(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1116,1298,1558,1545,986,1467,1363,1402,1467,1402,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1116,1298,1558,1545,986,1467,1363,1402,1467,1402,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NoClip(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1051,1480,908,1441,1402,1493,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1051,1480,908,1441,1402,1493,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TP clic (Ctrl+clic)(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1129,1077,1272,908,1441,1402,1324,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,1129,1077,1272,908,1441,1402,1324,453,830,453,1571,453,1350,1467,1337,570,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Anti-AFK(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1467,1545,1402,882,947,1012,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1467,1545,1402,882,947,1012,453,830,453,1571,453,1350,1467,1337,570,167,167,622,622,453,947,1519,1350,1350,908,1298,1454,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FreeCam (Shift + P)", Settings.FreeCam, function(v)
    Settings.FreeCam = v
    if v then
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ozguradam822/freecamv2/refs/heads/main/Freecam(function()
        local a={570,570,557,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,167,167,622,622,453,947,1441,1610,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Fly(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,947,1441,1610,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,167,453,453,453,453,1116,1350,1545,1545,1402,1467,1376,1532,635,947,1441,1610,453,830,453,1571,167,453,453,453,453,1402,1363,453,1571,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1389,1298,1519,453,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1480,1480,1545,453,830,453,1324,1389,1298,1519,453,1298,1467,1337,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,1402,1363,453,1519,1480,1480,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1376,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyGyro(function()
        local a={609,453,1519,1480,1480,1545,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1038,1298,1597,1129,1480,1519,1506,1558,1350,453,830,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,778,1350,713,609,453,778,1350,713,609,453,778,1350,713,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1077,453,830,453,778,1350,713,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1571,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyVelocity", root)
            bv.Velocity = Vector3.new(0,0.1,0)
            bv.MaxForce = Vector3.new(9e4, 9e4, 9e4)
            local flyConn = RunService.RenderStepped:Connect(function()
                if not Settings.Fly then return end
                local cam = workspace.CurrentCamera
                local vel = Vector3.new(0,0,0)
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel += cam.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel -= cam.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel += cam.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel -= cam.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then vel += Vector3.new(0,1,0) end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then vel -= Vector3.new(0,1,0) end
                bv.Velocity = vel * Settings.FlySpeed
                bg.CFrame = cam.CFrame
            end)
            _G.FlyConnection = flyConn
        end
    else
        if _G.FlyConnection then _G.FlyConnection:Disconnect() end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,1402,1363,453,1519,1480,1480,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1324,1389,1402,1441,1337,453,1402,1467,453,1493,1298,1402,1519,1532,557,1519,1480,1480,1545,791,960,1350,1545,908,1389,1402,1441,1337,1519,1350,1467,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1324,1389,1402,1441,1337,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyGyro(function()
        local a={570,453,1480,1519,453,1324,1389,1402,1441,1337,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyVelocity(function()
        local a={570,453,1545,1389,1350,1467,453,1324,1389,1402,1441,1337,791,921,1350,1532,1545,1519,1480,1610,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Fly Speed(function()
        local a={609,453,661,609,453,726,661,661,609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,947,1441,1610,1116,1493,1350,1350,1337,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1350,1545,1545,1402,1467,1376,1532,635,947,1441,1610,1116,1493,1350,1350,1337,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1571,570,453,1350,1467,1337,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.0f(function()
        local a={570,167,167,622,622,453,1116,1493,1402,1467,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Spin", SpinEnabled, function(v)
    SpinEnabled = v
    if v then
        spawn(function()
            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1519,1480,1480,1545,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1272,960,635,1116,1493,1402,1467,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,1545,1389,1350,1467,453,1272,960,635,1116,1493,1402,1467,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1272,960,635,1116,1493,1402,1467,1129,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,453,1545,1389,1350,1467,453,1272,960,635,1116,1493,1402,1467,1129,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1493,1402,1467,908,1480,1467,1467,453,830,453,1103,1558,1467,1116,1350,1519,1571,1402,1324,1350,635,973,1350,1298,1519,1545,1311,1350,1298,1545,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1337,1545,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1116,1493,1402,1467,934,1467,1298,1311,1441,1350,1337,453,1480,1519,453,1467,1480,1545,453,1519,1480,1480,1545,453,1480,1519,453,1467,1480,1545,453,1519,1480,1480,1545,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1519,1480,1480,1545,635,908,947,1519,1298,1454,1350,453,830,453,1519,1480,1480,1545,635,908,947,1519,1298,1454,1350,453,583,453,908,947,1519,1298,1454,1350,635,882,1467,1376,1441,1350,1532,557,661,609,453,1454,1298,1545,1389,635,1519,1298,1337,557,1116,1493,1402,1467,1116,1493,1350,1350,1337,453,583,453,1337,1545,570,609,453,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1272,960,635,1116,1493,1402,1467,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,830,453,1532,1493,1402,1467,908,1480,1467,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,453,830,453,1519,1480,1480,1545,635,1129,1480,1558,1324,1389,1350,1337,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1389,1402,1545,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1116,1493,1402,1467,934,1467,1298,1311,1441,1350,1337,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1389,1402,1545,453,1480,1519,453,1467,1480,1545,453,1389,1402,1545,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1558,1454,453,830,453,1389,1402,1545,635,1077,1298,1519,1350,1467,1545,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1168,1389,1402,1324,1389,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,453,1480,1519,453,557,1389,1402,1545,635,1077,1298,1519,1350,1467,1545,635,1077,1298,1519,1350,1467,1545,453,1298,1467,1337,453,1389,1402,1545,635,1077,1298,1519,1350,1467,1545,635,1077,1298,1519,1350,1467,1545,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1168,1389,1402,1324,1389,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1389,1558,1454,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1402,1519,1350,1324,1545,1402,1480,1467,453,830,453,557,1519,1480,1480,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,453,622,453,1389,1402,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,570,635,1142,1467,1402,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1337,1402,1519,1350,1324,1545,1402,1480,1467,635,1038,1298,1376,1467,1402,1545,1558,1337,1350,453,817,453,661,635,661,674,453,1545,1389,1350,1467,453,1337,1402,1519,1350,1324,1545,1402,1480,1467,453,830,453,622,1519,1480,1480,1545,635,908,947,1519,1298,1454,1350,635,1025,1480,1480,1428,1155,1350,1324,1545,1480,1519,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1350,1324,1480,1402,1441,1077,1480,1584,1350,1519,453,830,453,739,661,453,596,453,557,1116,1493,1402,1467,1116,1493,1350,1350,1337,453,648,453,765,661,661,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1571,1350,1519,1545,1402,1324,1298,1441,895,1480,1480,1532,1545,453,830,453,687,726,453,596,453,557,1116,1493,1402,1467,1116,1493,1350,1350,1337,453,648,453,713,661,661,661,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1571,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyVelocity(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1311,1571,635,1155,1350,1441,1480,1324,1402,1545,1610,453,830,453,557,1337,1402,1519,1350,1324,1545,1402,1480,1467,453,583,453,1519,1350,1324,1480,1402,1441,1077,1480,1584,1350,1519,570,453,596,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,661,609,453,1571,1350,1519,1545,1402,1324,1298,1441,895,1480,1480,1532,1545,609,453,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1311,1571,635,1038,1298,1597,947,1480,1519,1324,1350,453,830,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,713,661,661,661,661,661,661,609,453,713,661,661,661,661,661,661,609,453,713,661,661,661,661,661,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1311,1571,635,1077,1298,1519,1350,1467,1545,453,830,453,1519,1480,1480,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1376,1298,1454,1350,635,921,1350,1311,1519,1402,1532,791,882,1337,1337,986,1545,1350,1454,557,1311,1571,609,453,661,635,674,739,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1272,960,635,1116,1493,1402,1467,1129,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,453,830,453,1545,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,1402,1363,453,1272,960,635,1116,1493,1402,1467,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,1545,1389,1350,1467,453,1272,960,635,1116,1493,1402,1467,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1402,1363,453,1272,960,635,1116,1493,1402,1467,1129,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,453,1545,1389,1350,1467,453,1272,960,635,1116,1493,1402,1467,1129,1480,1558,1324,1389,1350,1337,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1480,1480,1545,453,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1298,1467,1337,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,1402,1363,453,1519,1480,1480,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1324,1389,1402,1441,1337,453,1402,1467,453,1493,1298,1402,1519,1532,557,1519,1480,1480,1545,791,960,1350,1545,908,1389,1402,1441,1337,1519,1350,1467,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1324,1389,1402,1441,1337,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BodyVelocity(function()
        local a={570,453,1545,1389,1350,1467,453,1324,1389,1402,1441,1337,791,921,1350,1532,1545,1519,1480,1610,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,167,882,1337,1337,1116,1441,1402,1337,1350,1519,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Spin Vitesse(function()
        local a={609,453,674,661,661,609,453,674,726,661,661,661,609,453,1116,1493,1402,1467,1116,1493,1350,1350,1337,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,453,1116,1493,1402,1467,1116,1493,1350,1350,1337,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1571,570,453,1350,1467,1337,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%.0f(function()
        local a={570,167,167,622,622,453,895,1519,1298,1467,1441,1350,1545,1545,1350,167,1441,1480,1324,1298,1441,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,1441,1480,1324,1298,1441,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,1129,1402,1454,1350,453,830,453,661,167,882,1337,1337,1129,1480,1376,1376,1441,1350,557,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Branlette(function()
        local a={609,453,1116,1350,1545,1545,1402,1467,1376,1532,635,895,1519,1298,1467,1441,1350,1545,1545,1350,609,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,570,167,453,453,453,453,1116,1350,1545,1545,1402,1467,1376,1532,635,895,1519,1298,1467,1441,1350,1545,1545,1350,453,830,453,1571,167,453,453,453,453,1402,1363,453,1571,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1389,1298,1519,453,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1402,1376,1389,1545,882,1519,1454,453,830,453,1324,1389,1298,1519,453,1298,1467,1337,453,557,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Right Arm(function()
        local a={570,453,1480,1519,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()RightUpperArm(function()
        local a={570,570,167,453,453,453,453,453,453,453,453,1402,1363,453,1519,1402,1376,1389,1545,882,1519,1454,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,830,453,1103,1558,1467,1116,1350,1519,1571,1402,1324,1350,635,973,1350,1298,1519,1545,1311,1350,1298,1545,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1337,1545,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,1129,1402,1454,1350,453,596,830,453,1337,1545,453,583,453,687,661,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1480,1363,1363,1532,1350,1545,453,830,453,1454,1298,1545,1389,635,1532,1402,1467,557,1311,1519,1298,1467,1441,1350,1545,1545,1350,1129,1402,1454,1350,570,453,583,453,661,635,700,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1519,1402,1376,1389,1545,882,1519,1454,635,908,947,1519,1298,1454,1350,453,830,453,1324,1389,1298,1519,635,973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545,635,908,947,1519,1298,1454,1350,453,583,453,908,947,1519,1298,1454,1350,635,1467,1350,1584,557,661,609,453,622,687,609,453,622,661,635,726,453,596,453,1480,1363,1363,1532,1350,1545,570,453,583,453,908,947,1519,1298,1454,1350,635,882,1467,1376,1441,1350,1532,557,1454,1298,1545,1389,635,1519,1298,1337,557,778,661,570,609,453,1454,1298,1545,1389,635,1519,1298,1337,557,661,570,609,453,1454,1298,1545,1389,635,1519,1298,1337,557,661,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,1402,1363,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,453,1545,1389,1350,1467,453,1311,1519,1298,1467,1441,1350,1545,1545,1350,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,167,167,622,622,453,1025,1402,1532,1545,1350,453,1337,1350,1532,453,1415,1480,1558,1350,1558,1519,1532,167,1441,1480,1324,1298,1441,453,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,1129,1402,1545,1441,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", MainContent)
PlayersListTitle.Size = UDim2.new(1,0,0,30)
PlayersListTitle.BackgroundTransparency = 1
PlayersListTitle.Text = (function()
        local a={1025,1402,1532,1545,1350,453,1337,1350,1532,453,999,1480,1558,1350,1558,1519,1532,453,622,453,908,1441,1402,1506,1558,1350,453,1493,1480,1558,1519,453,1298,1415,1480,1558,1545,1350,1519,453,1350,1467,453,1298,1454,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
PlayersListTitle.TextColor3 = Color3.fromRGB(180,180,255)
PlayersListTitle.Font = Enum.Font.GothamBold
PlayersListTitle.TextSize = 18
PlayersListTitle.LayoutOrder = 100

local SearchFrame = Instance.new("Frame(function()
        local a={609,453,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,570,167,1116,1350,1298,1519,1324,1389,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,700,739,570,167,1116,1350,1298,1519,1324,1389,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,661,609,700,661,609,713,726,570,167,1116,1350,1298,1519,1324,1389,947,1519,1298,1454,1350,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,453,830,453,674,661,674,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1116,1350,1298,1519,1324,1389,947,1519,1298,1454,1350,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,1441,1480,1324,1298,1441,453,1116,1350,1298,1519,1324,1389,895,1480,1597,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextBox", SearchFrame)
SearchBox.Size = UDim2.new(1,-16,1,-8)
SearchBox.Position = UDim2.new(0,8,0,4)
SearchBox.BackgroundColor3 = Color3.fromRGB(20,20,35)
SearchBox.TextColor3 = Color3.new(1,1,1)
SearchBox.PlaceholderText = (function()
        local a={1103,1350,1324,1389,1350,1519,1324,1389,1350,1519,453,1558,1467,453,1415,1480,1558,1350,1558,1519,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
SearchBox.Text = "(function()
        local a={167,1116,1350,1298,1519,1324,1389,895,1480,1597,635,908,1441,1350,1298,1519,1129,1350,1597,1545,1064,1467,947,1480,1324,1558,1532,453,830,453,1363,1298,1441,1532,1350,167,1116,1350,1298,1519,1324,1389,895,1480,1597,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,1116,1350,1298,1519,1324,1389,895,1480,1597,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1116,1350,1298,1519,1324,1389,895,1480,1597,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,167,1441,1480,1324,1298,1441,453,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ScrollingFrame(function()
        local a={609,453,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,570,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,700,661,661,570,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1116,1324,1519,1480,1441,1441,895,1298,1519,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,830,453,726,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,635,908,1298,1467,1571,1298,1532,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,661,609,661,609,661,570,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,453,830,453,674,661,687,167,167,1441,1480,1324,1298,1441,453,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIListLayout(function()
        local a={609,453,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,570,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,635,1077,1298,1337,1337,1402,1467,1376,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,1025,1298,1610,1480,1558,1545,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,453,830,453,934,1467,1558,1454,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,908,1519,1350,1298,1545,1350,1077,1441,1298,1610,1350,1519,1025,1402,1467,1350,557,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,1402,1363,453,1025,1402,1532,1545,1350,999,1480,1558,1350,1558,1519,1532,947,1519,1298,1454,1350,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,1441,1480,1324,1298,1441,453,1363,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={570,167,453,453,453,453,1363,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,713,687,570,167,453,453,453,453,1363,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,765,609,700,765,609,726,726,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1363,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,752,570,167,453,453,453,453,1363,635,1077,1298,1519,1350,1467,1545,453,830,453,1077,1441,1298,1610,1350,1519,1532,1025,1402,1532,1545,947,1519,1298,1454,1350,167,453,453,453,453,1025,1402,1532,1545,1350,999,1480,1558,1350,1558,1519,1532,947,1519,1298,1454,1350,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,830,453,1363,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,1363,570,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,687,609,661,609,674,609,661,570,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,1129,1350,1597,1545,453,830,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,1545,1298,1311,1441,1350,635,1363,1402,1467,1337,557,1025,1402,1532,1545,1350,882,1454,1402,1532,609,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,570,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,765,661,609,687,726,726,609,687,726,726,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,752,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,1116,1350,1454,1402,1311,1480,1441,1337,167,453,453,453,453,1467,1298,1454,1350,1025,1298,1311,1350,1441,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding(function()
        local a={609,1467,1298,1454,1350,1025,1298,1311,1350,1441,570,635,1077,1298,1337,1337,1402,1467,1376,1025,1350,1363,1545,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,674,713,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1545,1298,1545,1558,1532,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,1363,570,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,700,739,609,661,609,661,635,765,609,661,570,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,713,609,661,609,661,635,674,609,661,570,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1129,1350,1597,1545,453,830,453,1545,1298,1311,1441,1350,635,1363,1402,1467,1337,557,1025,1402,1532,1545,1350,882,1454,1402,1532,609,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,570,453,1298,1467,1337,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AMI(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,674,661,661,609,687,726,726,609,687,661,661,570,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1480,1441,1337,167,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,726,167,167,453,453,453,453,1363,635,986,1467,1493,1558,1545,895,1350,1376,1298,1467,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1402,1467,1493,1558,1545,570,167,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1493,1558,1545,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,453,830,830,453,934,1467,1558,1454,635,1142,1532,1350,1519,986,1467,1493,1558,1545,1129,1610,1493,1350,635,1038,1480,1558,1532,1350,895,1558,1545,1545,1480,1467,674,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1337,1597,453,830,453,1545,1298,1311,1441,1350,635,1363,1402,1467,1337,557,1025,1402,1532,1545,1350,882,1454,1402,1532,609,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1337,1597,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1311,1441,1350,635,1519,1350,1454,1480,1571,1350,557,1025,1402,1532,1545,1350,882,1454,1402,1532,609,453,1402,1337,1597,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1545,1298,1545,1558,1532,635,1129,1350,1597,1545,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()"
                nameLabel.TextColor3 = Color3.new(1,1,1)
            else
                table.insert(ListeAmis, player.Name)
                status.Text = (function()
        local a={882,1038,986};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                nameLabel.TextColor3 = Color3.fromRGB(80,255,255)
            end
            UpdateWatermark()
        end
    end)
end

local function RefreshPlayerList(filter)
    filter = (filter or "(function()
        local a={570,791,1441,1480,1584,1350,1519,557,570,167,453,453,453,453,1363,1480,1519,453,1493,609,453,1363,1519,1298,1454,1350,453,1402,1467,453,1493,1298,1402,1519,1532,557,1025,1402,1532,1545,1350,999,1480,1558,1350,1558,1519,1532,947,1519,1298,1454,1350,1532,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1493,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1519,1298,1454,1350,791,921,1350,1532,1545,1519,1480,1610,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1025,1402,1532,1545,1350,999,1480,1558,1350,1558,1519,1532,947,1519,1298,1454,1350,1532,1220,1493,1246,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1480,1519,1545,1350,1337,453,830,453,1636,1662,167,453,453,453,453,1363,1480,1519,453,1272,609,453,1493,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1077,1441,1298,1610,1350,1519,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1493,453,1675,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,453,1298,1467,1337,453,557,1363,1402,1441,1545,1350,1519,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()" or p.Name:lower():find(filter,1,true)) then
            table.insert(sorted, p)
        end
    end
    table.sort(sorted, function(a,b) return a.Name < b.Name end)

    for i, player in ipairs(sorted) do
        CreatePlayerLine(player)
        ListeJoueursFrames[player].LayoutOrder = i
    end
    PlayersListFrame.CanvasSize = UDim2.new(0,0,0, PlayersListLayout.AbsoluteContentSize.Y + 20)
end

RefreshPlayerList()
UpdateWatermark()

Players.PlayerAdded:Connect(function(p)
    task.wait(0.4)
    RefreshPlayerList(SearchBox.Text)
end)

Players.PlayerRemoving:Connect(function(p)
    if ListeJoueursFrames[p] then
        ListeJoueursFrames[p]:Destroy()
        ListeJoueursFrames[p] = nil
    end
    local idx = table.find(ListeAmis, p.Name)
    if idx then
        table.remove(ListeAmis, idx)
        UpdateWatermark()
    end
    task.delay(0.2, function()
        RefreshPlayerList(SearchBox.Text)
    end)
end)

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    RefreshPlayerList(SearchBox.Text)
end)

-- ESP
local ESP_Objects = {}

local function CreateOrUpdateESP(player)
    if player == LocalPlayer then return end
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart(function()
        local a={570,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1532,947,1519,1402,1350,1467,1337,453,830,453,1545,1298,1311,1441,1350,635,1363,1402,1467,1337,557,1025,1402,1532,1545,1350,882,1454,1402,1532,609,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,570,453,1675,830,453,1467,1402,1441,167,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1532,1129,1350,1298,1454,453,830,453,557,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,830,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,1298,1467,1337,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,570,453,1298,1467,1337,453,1467,1480,1545,453,1402,1532,947,1519,1402,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1480,1441,1480,1519,947,1402,1441,1441,453,830,453,1402,1532,947,1519,1402,1350,1467,1337,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,726,661,609,453,687,687,661,609,453,687,726,726,570,453,1480,1519,453,557,1402,1532,1129,1350,1298,1454,453,1298,1467,1337,453,908,1064,1142,1025,934,1142,1103,1272,882,1025,1025,986,934,453,1480,1519,453,908,1064,1142,1025,934,1142,1103,1272,934,1051,1051,934,1038,986,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1480,1441,1480,1519,1064,1558,1545,1441,1402,1467,1350,453,830,453,1402,1532,947,1519,1402,1350,1467,1337,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,674,687,661,609,453,687,713,661,609,453,687,726,726,570,453,1480,1519,453,557,1402,1532,1129,1350,1298,1454,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,661,661,609,687,726,726,609,687,661,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,726,726,609,687,661,661,609,687,661,661,570,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1480,1441,1480,1519,1051,1298,1454,1350,453,830,453,1402,1532,947,1519,1402,1350,1467,1337,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,674,661,661,609,453,687,726,726,609,453,687,726,726,570,453,1480,1519,453,557,1402,1532,1129,1350,1298,1454,453,1298,1467,1337,453,908,1064,1142,1025,934,1142,1103,1272,1051,1064,1038,1272,882,1025,1025,986,934,453,1480,1519,453,908,1064,1142,1025,934,1142,1103,1272,1051,1064,1038,1272,934,1051,1051,934,1038,986,570,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1441,453,830,453,934,1116,1077,1272,1064,1311,1415,1350,1324,1545,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,1298,1467,1337,453,934,1116,1077,1272,1064,1311,1415,1350,1324,1545,1532,1220,1493,1441,1298,1610,1350,1519,1246,635,973,1402,1376,1389,1441,1402,1376,1389,1545,167,453,453,453,453,1402,1363,453,1467,1480,1545,453,1389,1441,453,1480,1519,453,1467,1480,1545,453,1389,1441,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1389,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Highlight(function()
        local a={570,167,453,453,453,453,453,453,453,453,1389,1441,635,1077,1298,1519,1350,1467,1545,453,830,453,1324,1389,1298,1519,167,453,453,453,453,453,453,453,453,934,1116,1077,1272,1064,1311,1415,1350,1324,1545,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,830,453,1636,973,1402,1376,1389,1441,1402,1376,1389,1545,453,830,453,1389,1441,1662,167,453,453,453,453,1350,1467,1337,167,453,453,453,453,1389,1441,635,947,1402,1441,1441,908,1480,1441,1480,1519,453,830,453,1324,1480,1441,1480,1519,947,1402,1441,1441,167,453,453,453,453,1389,1441,635,1064,1558,1545,1441,1402,1467,1350,908,1480,1441,1480,1519,453,830,453,1324,1480,1441,1480,1519,1064,1558,1545,1441,1402,1467,1350,167,453,453,453,453,1389,1441,635,947,1402,1441,1441,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,635,726,726,167,453,453,453,453,1389,1441,635,1064,1558,1545,1441,1402,1467,1350,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,635,674,726,167,453,453,453,453,1389,1441,635,921,1350,1493,1545,1389,1038,1480,1337,1350,453,830,453,934,1467,1558,1454,635,973,1402,1376,1389,1441,1402,1376,1389,1545,921,1350,1493,1545,1389,1038,1480,1337,1350,635,882,1441,1584,1298,1610,1532,1064,1467,1129,1480,1493,167,453,453,453,453,1389,1441,635,934,1467,1298,1311,1441,1350,1337,453,830,453,1116,1350,1545,1545,1402,1467,1376,1532,635,934,1116,1077,167,167,453,453,453,453,1402,1363,453,1116,1350,1545,1545,1402,1467,1376,1532,635,882,1363,1363,1402,1324,1389,1350,1519,1051,1480,1454,1532,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1376,453,830,453,934,1116,1077,1272,1064,1311,1415,1350,1324,1545,1532,1220,1493,1441,1298,1610,1350,1519,1246,635,895,1402,1441,1441,1311,1480,1298,1519,1337,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1311,1376,453,1480,1519,453,1467,1480,1545,453,1311,1376,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BillboardGui(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,882,1337,1480,1519,1467,1350,1350,453,830,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Head(function()
        local a={570,453,1480,1519,453,1324,1389,1298,1519,635,973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,674,739,661,609,661,609,713,726,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1116,1545,1558,1337,1532,1064,1363,1363,1532,1350,1545,453,830,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,661,609,700,635,713,609,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,882,1441,1584,1298,1610,1532,1064,1467,1129,1480,1493,453,830,453,1545,1519,1558,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1038,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,453,830,453,778,661,661,167,453,453,453,453,453,453,453,453,453,453,453,453,1311,1376,635,1077,1298,1519,1350,1467,1545,453,830,453,1324,1389,1298,1519,167,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1597,1545,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", bg)
            txt.Size = UDim2.new(1,0,1,0)
            txt.BackgroundTransparency = 1
            txt.Text = player.Name
            txt.Font = Enum.Font.GothamBold
            txt.TextSize = Settings.TailleNoms + 1
            txt.TextStrokeTransparency = 0.35
            txt.TextStrokeColor3 = Color3.new(0,0,0)

            ESP_Objects[player].Billboard = bg
            ESP_Objects[player].NameText = txt
        end
        ESP_Objects[player].NameText.TextColor3 = colorName
        ESP_Objects[player].Billboard.Enabled = Settings.ESP
    elseif ESP_Objects[player] and ESP_Objects[player].Billboard then
        ESP_Objects[player].Billboard.Enabled = false
    end
end

local function CleanupPlayerESP(player)
    if ESP_Objects[player] then
        if ESP_Objects[player].Highlight then pcall(function() ESP_Objects[player].Highlight:Destroy() end) end
        if ESP_Objects[player].Billboard then pcall(function() ESP_Objects[player].Billboard:Destroy() end) end
        ESP_Objects[player] = nil
    end
end

spawn(function()
    while _G.BalkanLoaded do
        if Settings.ESP then
            for _, player in ipairs(Players:GetPlayers()) do
                pcall(CreateOrUpdateESP, player)
            end
        else
            for _, data in pairs(ESP_Objects) do
                if data.Highlight then data.Highlight.Enabled = false end
                if data.Billboard then data.Billboard.Enabled = false end
            end
        end
        task.wait(0.1)
    end
end)

Players.PlayerRemoving:Connect(CleanupPlayerESP)

for _, player in ipairs(Players:GetPlayers()) do
    if player.Character then pcall(CreateOrUpdateESP, player) end
    player.CharacterAdded:Connect(function() task.wait(0.3) pcall(CreateOrUpdateESP, player) end)
    player.CharacterRemoving:Connect(function() CleanupPlayerESP(player) end)
end

-- Aimbot config de paff
local aiming = false
UserInputService.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then aiming = true end
end)

UserInputService.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then aiming = false end
end)

RunService.RenderStepped:Connect(function()
    if not (Settings.Aimbot and aiming) then return end

    local cam = workspace.CurrentCamera
    local closest, bestDist = nil, Settings.AimbotFOV
    local noms = getPartNames(PartieVisee)

    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer or table.find(ListeAmis, player.Name) or (player.Team == LocalPlayer.Team and player.Team) then continue end
        local char = player.Character
        if not char then continue end

        local target
        for _, n in ipairs(noms) do
            if char:FindFirstChild(n) then
                target = char[n]
                break
            end
        end
        target = target or char:FindFirstChild("Head(function()
        local a={570,453,1480,1519,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart")

        if target then
            local pos, onScreen = cam:WorldToViewportPoint(target.Position)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)).Magnitude
                if dist < bestDist then
                    bestDist = dist
                    closest = target
                end
            end
        end
    end

    if closest then
        local targetCF = CFrame.new(cam.CFrame.Position, closest.Position)
        cam.CFrame = cam.CFrame:Lerp(targetCF, 1 - Settings.AimbotSmooth)
    end
end)


RunService.Stepped:Connect(function()
    if Settings.NoClip and LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

UserInputService.JumpRequest:Connect(function()
    if Settings.SautInfini and LocalPlayer.Character then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

UserInputService.InputBegan:Connect(function(i)
    if Settings.TP_Clic and i.UserInputType == Enum.UserInputType.MouseButton1 and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
        local m = LocalPlayer:GetMouse()
        if m and m.Hit then
            pcall(function()
                LocalPlayer.Character.HumanoidRootPart.CFrame = m.Hit + Vector3.new(0, 5, 0)
            end)
        end
    end
end)

LocalPlayer.Idled:Connect(function()
    if Settings.AntiAFK then
        game:GetService("VirtualUser(function()
        local a={570,791,908,1298,1493,1545,1558,1519,1350,908,1480,1467,1545,1519,1480,1441,1441,1350,1519,557,570,167,453,453,453,453,453,453,453,453,1376,1298,1454,1350,791,960,1350,1545,1116,1350,1519,1571,1402,1324,1350,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()VirtualUser(function()
        local a={570,791,908,1441,1402,1324,1428,895,1558,1545,1545,1480,1467,687,557,1155,1350,1324,1545,1480,1519,687,635,1467,1350,1584,557,570,570,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,453,1064,1051,960,1025,934,1129,453,1129,934,1025,934,1077,1064,1103,1129,934,1103,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1129,1402,1545,1441,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", TeleportContent)
TeleportTitle.Size = UDim2.new(1,0,0,40)
TeleportTitle.BackgroundTransparency = 1
TeleportTitle.Text = (function()
        local a={1116,3066,1441,1350,1324,1545,1402,1480,1467,1467,1350,453,1558,1467,453,1415,1480,1558,1350,1558,1519,453,1493,1480,1558,1519,453,1545,1350,453,1324,1480,1441,1441,1350,1519,453,2949,453,1441,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
TeleportTitle.TextColor3 = Color3.fromRGB(200,200,255)
TeleportTitle.Font = Enum.Font.GothamBold
TeleportTitle.TextSize = 22
TeleportTitle.LayoutOrder = 1

local FollowToggleBtn = Instance.new("TextButton(function()
        local a={609,453,1129,1350,1441,1350,1493,1480,1519,1545,908,1480,1467,1545,1350,1467,1545,570,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,765,609,661,609,661,609,726,661,570,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,674,609,661,609,661,609,726,661,570,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,661,609,687,661,661,609,674,661,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,661,661,609,726,661,609,726,661,570,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,1129,1350,1597,1545,453,830,453,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,453,1298,1467,1337,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FOLLOW ACTIF(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()SUIVRE LE JOUEUR(function()
        local a={167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1480,1441,1337,167,947,1480,1441,1441,1480,1584,1129,1480,1376,1376,1441,1350,895,1545,1467,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,687,713,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner", FollowToggleBtn).CornerRadius = UDim.new(0,12)
FollowToggleBtn.LayoutOrder = 2

FollowToggleBtn.MouseButton1Click:Connect(function()
    FollowToggle = not FollowToggle
    FollowToggleBtn.BackgroundColor3 = FollowToggle and Color3.fromRGB(0,200,100) or Color3.fromRGB(200,50,50)
    FollowToggleBtn.Text = FollowToggle and "FOLLOW ACTIF(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()SUIVRE LE JOUEUR"

    if not FollowToggle then
        if FollowConnection then FollowConnection:Disconnect() FollowConnection = nil end
        TargetPlayer = nil
        return
    end

    if not TargetPlayer then
        FollowToggle = false
        FollowToggleBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
        FollowToggleBtn.Text = (function()
        local a={1116,1142,986,1155,1103,934,453,1025,934,453,999,1064,1142,934,1142,1103};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        return
    end

    if FollowConnection then FollowConnection:Disconnect() end

    FollowConnection = RunService.Heartbeat:Connect(function()
        if not FollowToggle or not TargetPlayer or not TargetPlayer.Character or not TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if FollowConnection then FollowConnection:Disconnect() FollowConnection = nil end
            FollowToggle = false
            FollowToggleBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
            FollowToggleBtn.Text = (function()
        local a={1116,1142,986,1155,1103,934,453,1025,934,453,999,1064,1142,934,1142,1103};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
            return
        end

        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1519,1480,1480,1545,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1298,1519,1376,1350,1545,1103,1480,1480,1545,453,830,453,1129,1298,1519,1376,1350,1545,1077,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,635,973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545,167,453,453,453,453,453,453,453,453,1519,1480,1480,1545,635,908,947,1519,1298,1454,1350,453,830,453,1545,1298,1519,1376,1350,1545,1103,1480,1480,1545,635,908,947,1519,1298,1454,1350,453,583,453,908,947,1519,1298,1454,1350,635,1467,1350,1584,557,661,609,453,700,609,453,622,687,570,453,453,167,453,453,453,453,1350,1467,1337,570,167,1350,1467,1337,570,167,167,622,622,453,1025,1402,1532,1545,1350,453,1337,1350,1532,453,1415,1480,1558,1350,1558,1519,1532,453,1493,1480,1558,1519,453,1324,1350,453,1545,1493,453,1298,1558,453,1363,1337,1493,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1129,1402,1545,1441,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", TeleportContent)
TeleportPlayerTitle.Size = UDim2.new(1,0,0,30)
TeleportPlayerTitle.BackgroundTransparency = 1
TeleportPlayerTitle.Text = (function()
        local a={999,1480,1558,1350,1558,1519,1532,453,1337,1402,1532,1493,1480,1467,1402,1311,1441,1350,1532,453,557,1324,1441,1402,1506,1558,1350,453,1493,1480,1558,1519,453,1532,3066,1441,1350,1324,1545,1402,1480,1467,1467,1350,1519,570};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
TeleportPlayerTitle.TextColor3 = Color3.fromRGB(180,180,255)
TeleportPlayerTitle.Font = Enum.Font.GothamBold
TeleportPlayerTitle.TextSize = 18
TeleportPlayerTitle.LayoutOrder = 3

local TeleportSearchBox = Instance.new("TextBox", TeleportContent)
TeleportSearchBox.Size = UDim2.new(1,-20,0,36)
TeleportSearchBox.Position = UDim2.new(0,10,0,90)
TeleportSearchBox.BackgroundColor3 = Color3.fromRGB(20,20,35)
TeleportSearchBox.TextColor3 = Color3.new(1,1,1)
TeleportSearchBox.PlaceholderText = (function()
        local a={1103,1350,1324,1389,1350,1519,1324,1389,1350,1519,453,1558,1467,453,1415,1480,1558,1350,1558,1519,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
TeleportSearchBox.Text = "(function()
        local a={167,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1298,1519,1324,1389,895,1480,1597,635,908,1441,1350,1298,1519,1129,1350,1597,1545,1064,1467,947,1480,1324,1558,1532,453,830,453,1363,1298,1441,1532,1350,167,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1298,1519,1324,1389,895,1480,1597,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1298,1519,1324,1389,895,1480,1597,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,739,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1298,1519,1324,1389,895,1480,1597,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1298,1519,1324,1389,895,1480,1597,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,453,830,453,713,167,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ScrollingFrame(function()
        local a={609,453,1129,1350,1441,1350,1493,1480,1519,1545,908,1480,1467,1545,1350,1467,1545,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,622,687,661,609,674,609,622,674,726,661,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,674,661,609,661,609,674,713,661,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,1116,1324,1519,1480,1441,1441,895,1298,1519,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,830,453,726,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,908,1298,1467,1571,1298,1532,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,661,609,661,609,661,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,453,830,453,726,167,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,1025,1298,1610,1480,1558,1545,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIListLayout(function()
        local a={609,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,1025,1298,1610,1480,1558,1545,635,1077,1298,1337,1337,1402,1467,1376,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,739,570,167,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,1025,1298,1610,1480,1558,1545,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,453,830,453,934,1467,1558,1454,635,1116,1480,1519,1545,1064,1519,1337,1350,1519,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,167,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,947,1519,1298,1454,1350,1532,453,830,453,1636,1662,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,908,1519,1350,1298,1545,1350,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1025,1402,1467,1350,557,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,1402,1363,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,947,1519,1298,1454,1350,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,1441,1480,1324,1298,1441,453,1363,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton(function()
        local a={570,167,453,453,453,453,1363,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,713,661,570,167,453,453,453,453,1363,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,700,765,609,700,765,609,726,726,570,167,453,453,453,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1363,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,453,453,453,453,1363,635,1077,1298,1519,1350,1467,1545,453,830,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,1532,947,1519,1298,1454,1350,167,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,947,1519,1298,1454,1350,1532,1220,1493,1441,1298,1610,1350,1519,1246,453,830,453,1363,167,167,453,453,453,453,1363,635,1129,1350,1597,1545,453,830,453,1493,1441,1298,1610,1350,1519,635,1051,1298,1454,1350,167,453,453,453,453,1363,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,1363,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,1116,1350,1454,1402,1311,1480,1441,1337,167,453,453,453,453,1363,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,752,167,453,453,453,453,1363,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1493,1298,1337,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIPadding", f)
    pad.PaddingLeft = UDim.new(0,15)

    f.MouseButton1Click:Connect(function()
        TargetPlayer = player
        for _, btn in pairs(TeleportPlayerFrames) do
            btn.BackgroundColor3 = Color3.fromRGB(38,38,55)
        end
        f.BackgroundColor3 = Color3.fromRGB(0,120,255)
    end)
end

local function RefreshTeleportList(filter)
    filter = (filter or "(function()
        local a={570,791,1441,1480,1584,1350,1519,557,570,167,453,453,453,453,1363,1480,1519,453,1493,609,453,1363,1519,1298,1454,1350,453,1402,1467,453,1493,1298,1402,1519,1532,557,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,947,1519,1298,1454,1350,1532,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1493,635,1077,1298,1519,1350,1467,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1519,1298,1454,1350,791,921,1350,1532,1545,1519,1480,1610,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1077,1441,1298,1610,1350,1519,947,1519,1298,1454,1350,1532,1220,1493,1246,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1480,1519,1545,1350,1337,453,830,453,1636,1662,167,453,453,453,453,1363,1480,1519,453,1272,609,453,1493,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1077,1441,1298,1610,1350,1519,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1493,453,1675,830,453,1025,1480,1324,1298,1441,1077,1441,1298,1610,1350,1519,453,1298,1467,1337,453,557,1363,1402,1441,1545,1350,1519,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()" or p.Name:lower():find(filter,1,true)) then
            table.insert(sorted, p)
        end
    end
    table.sort(sorted, function(a,b) return a.Name < b.Name end)

    for i, player in ipairs(sorted) do
        CreateTeleportPlayerLine(player)
        TeleportPlayerFrames[player].LayoutOrder = i
    end
    TeleportPlayersFrame.CanvasSize = UDim2.new(0,0,0, TeleportPlayersLayout.AbsoluteContentSize.Y + 20)
end

RefreshTeleportList()

Players.PlayerAdded:Connect(function(p)
    task.wait(0.4)
    RefreshTeleportList(TeleportSearchBox.Text)
end)

Players.PlayerRemoving:Connect(function(p)
    if TeleportPlayerFrames[p] then
        TeleportPlayerFrames[p]:Destroy()
        TeleportPlayerFrames[p] = nil
    end
    if TargetPlayer == p then
        TargetPlayer = nil
        FollowToggle = false
        if FollowConnection then FollowConnection:Disconnect() FollowConnection = nil end
        FollowToggleBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
        FollowToggleBtn.Text = (function()
        local a={1116,1142,986,1155,1103,934,453,1025,934,453,999,1064,1142,934,1142,1103};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    end
    task.delay(0.2, function()
        RefreshTeleportList(TeleportSearchBox.Text)
    end)
end)

TeleportSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    RefreshTeleportList(TeleportSearchBox.Text)
end)

-- Kill Menu
local killf = Instance.new("Frame(function()
        local a={609,453,1038,1298,1402,1467,908,1480,1467,1545,1350,1467,1545,570,167,1428,1402,1441,1441,1363,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,726,726,570,167,1428,1402,1441,1441,1363,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,765,661,609,687,661,609,687,661,570,167,1428,1402,1441,1441,1363,635,1025,1298,1610,1480,1558,1545,1064,1519,1337,1350,1519,453,830,453,778,778,778,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,1428,1402,1441,1441,1363,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,167,1441,1480,1324,1298,1441,453,1428,1402,1441,1441,1311,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton",killf)
killb.Size = UDim2.new(0.92,0,0.8,0)
killb.Position = UDim2.new(0.04,0,0.1,0)
killb.BackgroundColor3 = Color3.fromRGB(200,30,30)
killb.Text = (function()
        local a={1012,986,1025,1025,453,1038,934,1051,1142,453,557,1142,1467,1441,1480,1298,1337,453,882,1441,1441,570};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
killb.TextColor3 = Color3.new(1,1,1)
killb.Font = Enum.Font.GothamBold
killb.TextSize = 18
Instance.new("UICorner",killb).CornerRadius = UDim.new(0,8)

killb.MouseButton1Click:Connect(function()
    Settings.Aimbot = false
    Settings.ESP = false
    Settings.AfficherNoms = false
    Settings.SautInfini = false
    Settings.NoClip = false
    Settings.TP_Clic = false
    Settings.AntiAFK = false
    Settings.FreeCam = false
    Settings.Fly = false
    Settings.Branlette = false
    SpinEnabled = false
    AutoPaff.Enabled = false
    FollowToggle = false
    if FollowConnection then FollowConnection:Disconnect() end

    pcall(function()
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end)

    if _G.FlyConnection then _G.FlyConnection:Disconnect() end
    ScreenGui:Destroy()
    _G.BalkanLoaded = nil
end)

-- ===================== AUTOPAFF TAB =====================
local AutoTitle = Instance.new("TextLabel", AutoPaffContent)
AutoTitle.Size = UDim2.new(1,0,0,60)
AutoTitle.BackgroundTransparency = 1
AutoTitle.Text = (function()
        local a={882,1142,1129,1064,1077,882,947,947};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
AutoTitle.TextColor3 = Color3.fromRGB(220, 180, 255)
AutoTitle.Font = Enum.Font.GothamBlack
AutoTitle.TextSize = 48

local AutoToggle = Instance.new("TextButton(function()
        local a={609,453,882,1558,1545,1480,1077,1298,1363,1363,908,1480,1467,1545,1350,1467,1545,570,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,752,609,661,609,661,609,674,661,661,570,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,674,726,609,661,609,661,635,674,609,661,570,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,882,1558,1545,1480,1077,1298,1363,1363,635,934,1467,1298,1311,1441,1350,1337,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,765,661,609,687,726,726,609,674,687,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,726,726,609,765,661,609,765,661,570,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,1129,1350,1597,1545,453,830,453,882,1558,1545,1480,1077,1298,1363,1363,635,934,1467,1298,1311,1441,1350,1337,453,1298,1467,1337,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ON(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()OFF(function()
        local a={167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1441,1298,1324,1428,167,882,1558,1545,1480,1129,1480,1376,1376,1441,1350,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,739,661,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner", AutoToggle).CornerRadius = UDim.new(0,25)

AutoToggle.MouseButton1Click:Connect(function()
    AutoPaff.Enabled = not AutoPaff.Enabled
    AutoToggle.BackgroundColor3 = AutoPaff.Enabled and Color3.fromRGB(80,255,120) or Color3.fromRGB(255,80,80)
    AutoToggle.Text = AutoPaff.Enabled and "ON(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()OFF(function()
        local a={167,1350,1467,1337,570,167,167,1441,1480,1324,1298,1441,453,1324,1493,1532,947,1519,1298,1454,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,453,882,1558,1545,1480,1077,1298,1363,1363,908,1480,1467,1545,1350,1467,1545,570,167,1324,1493,1532,947,1519,1298,1454,1350,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,765,609,661,609,661,609,739,661,570,167,1324,1493,1532,947,1519,1298,1454,1350,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,674,609,661,609,661,635,713,609,661,570,167,1324,1493,1532,947,1519,1298,1454,1350,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,167,1441,1480,1324,1298,1441,453,1324,1493,1532,1025,1311,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel", cpsFrame)
cpsLbl.Size = UDim2.new(0.35,0,1,0)
cpsLbl.BackgroundTransparency = 1
cpsLbl.Text = (function()
        local a={908,1077,1116};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
cpsLbl.TextColor3 = Color3.fromRGB(220,220,255)
cpsLbl.Font = Enum.Font.GothamBold
cpsLbl.TextSize = 32

local cpsInput = Instance.new("TextBox(function()
        local a={609,453,1324,1493,1532,947,1519,1298,1454,1350,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,739,609,661,609,674,609,661,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,713,609,661,609,661,609,661,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,713,661,609,713,661,609,739,661,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,1129,1350,1597,1545,453,830,453,1545,1480,1532,1545,1519,1402,1467,1376,557,882,1558,1545,1480,1077,1298,1363,1363,635,908,1077,1116,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,726,726,609,687,726,726,609,687,726,726,570,167,1324,1493,1532,986,1467,1493,1558,1545,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,1324,1493,1532,986,1467,1493,1558,1545,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,713,661,167,1324,1493,1532,986,1467,1493,1558,1545,635,908,1441,1350,1298,1519,1129,1350,1597,1545,1064,1467,947,1480,1324,1558,1532,453,830,453,1363,1298,1441,1532,1350,167,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner", cpsInput).CornerRadius = UDim.new(0,15)

cpsInput.FocusLost:Connect(function()
    local n = tonumber(cpsInput.Text)
    if n and n >= 1 and n <= 5000 then
        AutoPaff.CPS = n
    else
        cpsInput.Text = tostring(AutoPaff.CPS)
    end
end)

local infoTxt = Instance.new("TextLabel", AutoPaffContent)
infoTxt.Size = UDim2.new(0.9,0,0,100)
infoTxt.Position = UDim2.new(0.05,0,0.6,0)
infoTxt.BackgroundTransparency = 1
infoTxt.Text = (function()
        local a={947,739,453,830,453,1493,1480,1558,1519,453,1298,1324,1545,1402,1571,3066,1350,453,1233,1467,1454,1350,1545,453,713,661,661,453,1493,1480,1558,1519,453,1376,1298,1376,1467,1350,1519,453,1545,1480,1558,1545,453,1441,1350,453,1545,1350,1454,1493,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
infoTxt.TextColor3 = Color3.fromRGB(200,200,220)
infoTxt.Font = Enum.Font.Gotham
infoTxt.TextSize = 20
infoTxt.TextWrapped = true
infoTxt.TextYAlignment = Enum.TextYAlignment.Top

-- Boucle AutoPaff
RunService.Heartbeat:Connect(function(delta)
    if not AutoPaff.Enabled then return end
    VirtualUser:ClickButton1(Vector2.new(LocalPlayer:GetMouse().X, LocalPlayer:GetMouse().Y))
    task.wait(math.max(1 / AutoPaff.CPS - delta, 0.00005))
end)

-- F6 toggle
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == AutoPaff.ToggleKey then
        AutoPaff.Enabled = not AutoPaff.Enabled
        AutoToggle.BackgroundColor3 = AutoPaff.Enabled and Color3.fromRGB(80,255,120) or Color3.fromRGB(255,80,80)
        AutoToggle.Text = AutoPaff.Enabled and "ON(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()OFF"
    end
end)
end;
_xrhytd7ao();
