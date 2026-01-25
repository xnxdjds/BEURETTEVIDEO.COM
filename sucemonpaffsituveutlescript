--NIQUE LES JUIF
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local CoreGui = game:GetService("CoreGui")

if _G.BalkanLoaded then return end
_G.BalkanLoaded = true

local MenuVisible = true
local CurrentTab = "Main"

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
local PartieVisee = "Tête"
local optionsParties = {"Tête", "Torse", "Cou", "Epaule Droite", "Main Droite", "Epaule Gauche", "Main Gauche", "Cuisse Droite", "Mollet Droit", "Cuisse Gauche", "Mollet Gauche", "R6 ET R15 PERSO"}

local function getPartNames(part)
    local map = {
        ["Tête"] = {"Head"},
        ["Torse"] = {"UpperTorso", "Torso"},
        ["Cou"] = {"Neck"},
        ["Epaule Droite"] = {"RightUpperArm"},
        ["Main Droite"] = {"RightLowerArm"},
        ["Epaule Gauche"] = {"LeftUpperArm"},
        ["Main Gauche"] = {"LeftLowerArm"},
        ["Cuisse Droite"] = {"RightUpperLeg"},
        ["Mollet Droit"] = {"RightLowerLeg"},
        ["Cuisse Gauche"] = {"LeftUpperLeg"},
        ["Mollet Gauche"] = {"LeftLowerLeg"},
        ["R6 ET R15 PERSO"] = {"HumanoidRootPart"}
    }
    return map[part] or {"Head"}
end

-- Téléport / Follow player
local TargetPlayer = nil
local FollowConnection = nil
local FollowToggle = false

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BalkanXOD"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 2147483647
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 520, 0, 680)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -340)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
MainFrame.BorderSizePixel = 0
MainFrame.ZIndex = 10000
MainFrame.Parent = ScreenGui
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

-- Barre titre à la zeub pas d'idée mais trql
local TitleBar = Instance.new("Frame", MainFrame)
TitleBar.Size = UDim2.new(1,0,0,48)
TitleBar.BackgroundColor3 = Color3.fromRGB(35,35,60)
TitleBar.ZIndex = 1000001
Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0,12)

local Title = Instance.new("TextLabel", TitleBar)
Title.Size = UDim2.new(1,-100,1,0)
Title.Position = UDim2.new(0,15,0,0)
Title.BackgroundTransparency = 1
Title.Text = "Balkan XOD V2 crée par salutjaimeleskar"
Title.TextColor3 = Color3.fromRGB(255,200,120)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton", TitleBar)
CloseBtn.Size = UDim2.new(0,40,0,40)
CloseBtn.Position = UDim2.new(1,-50,0,4)
CloseBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.new(1,1,1)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 20
CloseBtn.ZIndex = 1000002
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0,8)

-- Onglets
local TabsFrame = Instance.new("Frame", MainFrame)
TabsFrame.Size = UDim2.new(1,0,0,40)
TabsFrame.Position = UDim2.new(0,0,0,48)
TabsFrame.BackgroundTransparency = 1

local MainTabBtn = Instance.new("TextButton", TabsFrame)
MainTabBtn.Size = UDim2.new(0.33,-5,1,-4)
MainTabBtn.Position = UDim2.new(0,5,0,2)
MainTabBtn.BackgroundColor3 = Color3.fromRGB(0,180,255)
MainTabBtn.Text = "MAIN"
MainTabBtn.TextColor3 = Color3.new(1,1,1)
MainTabBtn.Font = Enum.Font.GothamBold
MainTabBtn.TextSize = 16
Instance.new("UICorner", MainTabBtn).CornerRadius = UDim.new(0,8)

local AutoPaffTabBtn = Instance.new("TextButton", TabsFrame)
AutoPaffTabBtn.Size = UDim2.new(0.33,-5,1,-4)
AutoPaffTabBtn.Position = UDim2.new(0.33,0,0,2)
AutoPaffTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
AutoPaffTabBtn.Text = "AUTOPAFF"
AutoPaffTabBtn.TextColor3 = Color3.new(1,1,1)
AutoPaffTabBtn.Font = Enum.Font.GothamBold
AutoPaffTabBtn.TextSize = 16
Instance.new("UICorner", AutoPaffTabBtn).CornerRadius = UDim.new(0,8)

local TeleportTabBtn = Instance.new("TextButton", TabsFrame)
TeleportTabBtn.Size = UDim2.new(0.33,-5,1,-4)
TeleportTabBtn.Position = UDim2.new(0.66,0,0,2)
TeleportTabBtn.BackgroundColor3 = Color3.fromRGB(35,35,50)
TeleportTabBtn.Text = "TELEPORTER"
TeleportTabBtn.TextColor3 = Color3.new(1,1,1)
TeleportTabBtn.Font = Enum.Font.GothamBold
TeleportTabBtn.TextSize = 16
Instance.new("UICorner", TeleportTabBtn).CornerRadius = UDim.new(0,8)

-- Contde paff
local MainContent = Instance.new("ScrollingFrame", MainFrame)
MainContent.Size = UDim2.new(1,-20,1,-100)
MainContent.Position = UDim2.new(0,10,0,100)
MainContent.BackgroundTransparency = 1
MainContent.ScrollBarThickness = 6
MainContent.Visible = true
MainContent.CanvasSize = UDim2.new(0,0,0,4500)

local AutoPaffContent = Instance.new("Frame", MainFrame)
AutoPaffContent.Size = UDim2.new(1,-20,1,-100)
AutoPaffContent.Position = UDim2.new(0,10,0,100)
AutoPaffContent.BackgroundTransparency = 1
AutoPaffContent.Visible = false

local TeleportContent = Instance.new("ScrollingFrame", MainFrame)
TeleportContent.Size = UDim2.new(1,-20,1,-100)
TeleportContent.Position = UDim2.new(0,10,0,100)
TeleportContent.BackgroundTransparency = 1
TeleportContent.ScrollBarThickness = 6
TeleportContent.Visible = false
TeleportContent.CanvasSize = UDim2.new(0,0,0,2000)

local MainList = Instance.new("UIListLayout", MainContent)
MainList.Padding = UDim.new(0,10)
MainList.SortOrder = Enum.SortOrder.LayoutOrder

local TeleportList = Instance.new("UIListLayout", TeleportContent)
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
local Watermark = Instance.new("TextLabel")
Watermark.AnchorPoint = Vector2.new(1,1)
Watermark.Position = UDim2.new(1, -15, 1, -15)
Watermark.Size = UDim2.new(0, 220, 0, 180)
Watermark.BackgroundTransparency = 0.4
Watermark.BackgroundColor3 = Color3.fromRGB(15,15,35)
Watermark.Text = ""
Watermark.TextColor3 = Color3.fromRGB(180, 255, 180)
Watermark.TextSize = 15
Watermark.Font = Enum.Font.GothamSemibold
Watermark.TextXAlignment = Enum.TextXAlignment.Left
Watermark.TextYAlignment = Enum.TextYAlignment.Top
Watermark.TextWrapped = true
Watermark.ZIndex = 999999
Watermark.Parent = ScreenGui
Instance.new("UICorner", Watermark).CornerRadius = UDim.new(0,8)
Instance.new("UIPadding", Watermark).PaddingLeft = UDim.new(0,10)
Instance.new("UIPadding", Watermark).PaddingTop = UDim.new(0,8)

local function UpdateWatermark()
    local text = "Amis (" .. #ListeAmis .. ")\n"
    if #ListeAmis == 0 then
        text = text .. "Aucun fdp ajouté"
    else
        for _, name in ipairs(ListeAmis) do
            text = text .. "• " .. name .. "\n"
        end
    end
    Watermark.Text = text
end

-- UI Helpers
local function AddToggle(parent, nom, defaut, callback)
    local f = Instance.new("Frame", parent)
    f.Size = UDim2.new(1,0,0,45)
    f.BackgroundColor3 = Color3.fromRGB(35,35,50)
    Instance.new("UICorner",f).CornerRadius = UDim.new(0,8)

    local l = Instance.new("TextLabel",f)
    l.Size = UDim2.new(0.65,0,1,0)
    l.BackgroundTransparency = 1
    l.Text = nom
    l.TextColor3 = Color3.new(1,1,1)
    l.TextSize = 17
    l.Font = Enum.Font.GothamSemibold
    l.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UIPadding",l).PaddingLeft = UDim.new(0,15)

    local b = Instance.new("TextButton",f)
    b.Size = UDim2.new(0.3,0,0.75,0)
    b.Position = UDim2.new(0.68,0,0.125,0)
    b.BackgroundColor3 = defaut and Color3.fromRGB(0,180,255) or Color3.fromRGB(90,90,90)
    b.Text = defaut and "OUI" or "NON"
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 16
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,6)

    local etat = defaut
    b.MouseButton1Click:Connect(function()
        etat = not etat
        b.BackgroundColor3 = etat and Color3.fromRGB(0,180,255) or Color3.fromRGB(90,90,90)
        b.Text = etat and "OUI" or "NON"
        callback(etat)
    end)
end

local function AddSlider(parent, nom, minv, maxv, defaut, callback, format)
    local f = Instance.new("Frame", parent)
    f.Size = UDim2.new(1,0,0,65)
    f.BackgroundColor3 = Color3.fromRGB(35,35,50)
    Instance.new("UICorner",f).CornerRadius = UDim.new(0,8)

    local l = Instance.new("TextLabel",f)
    l.Size = UDim2.new(0.6,0,0.35,0)
    l.BackgroundTransparency = 1
    l.Text = nom
    l.TextColor3 = Color3.new(1,1,1)
    l.TextSize = 16
    l.Font = Enum.Font.Gotham
    l.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UIPadding",l).PaddingLeft = UDim.new(0,15)

    local v = Instance.new("TextLabel",f)
    v.Size = UDim2.new(0.35,0,0.35,0)
    v.Position = UDim2.new(0.63,0,0,0)
    v.BackgroundTransparency = 1
    v.Text = string.format(format or "%.0f", defaut)
    v.TextColor3 = Color3.fromRGB(180,180,255)
    v.TextSize = 16
    v.Font = Enum.Font.Gotham
    v.TextXAlignment = Enum.TextXAlignment.Right

    local bar = Instance.new("Frame",f)
    bar.Size = UDim2.new(1,-30,0,10)
    bar.Position = UDim2.new(0,15,0,45)
    bar.BackgroundColor3 = Color3.fromRGB(60,60,80)
    Instance.new("UICorner",bar).CornerRadius = UDim.new(0,5)

    local fill = Instance.new("Frame",bar)
    fill.Size = UDim2.new((defaut-minv)/(maxv-minv),0,1,0)
    fill.BackgroundColor3 = Color3.fromRGB(0,180,255)
    Instance.new("UICorner",fill).CornerRadius = UDim.new(0,5)

    local drag = false
    bar.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then drag = true end end)
    bar.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then drag = false end end)

    UserInputService.InputChanged:Connect(function(i)
        if not drag or i.UserInputType ~= Enum.UserInputType.MouseMovement then return end
        local rel = math.clamp((i.Position.X - bar.AbsolutePosition.X)/bar.AbsoluteSize.X, 0,1)
        local val = minv + rel*(maxv-minv)
        fill.Size = UDim2.new(rel,0,1,0)
        v.Text = string.format(format or "%.0f", val)
        callback(val)
    end)
end

--  pour choisir la partie visée 
local PartieFrame = Instance.new("Frame", MainContent)
PartieFrame.Size = UDim2.new(1,0,0,45)
PartieFrame.BackgroundColor3 = Color3.fromRGB(35,35,50)
Instance.new("UICorner", PartieFrame).CornerRadius = UDim.new(0,8)

local PartieLabel = Instance.new("TextLabel", PartieFrame)
PartieLabel.Size = UDim2.new(0.5,0,1,0)
PartieLabel.BackgroundTransparency = 1
PartieLabel.Text = "Partie visée par Aimbot :"
PartieLabel.TextColor3 = Color3.new(1,1,1)
PartieLabel.TextSize = 17
PartieLabel.Font = Enum.Font.GothamSemibold
PartieLabel.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UIPadding", PartieLabel).PaddingLeft = UDim.new(0,15)

local PartieButton = Instance.new("TextButton", PartieFrame)
PartieButton.Size = UDim2.new(0.45,0,0.8,0)
PartieButton.Position = UDim2.new(0.52,0,0.1,0)
PartieButton.BackgroundColor3 = Color3.fromRGB(50,50,70)
PartieButton.Text = PartieVisee
PartieButton.TextColor3 = Color3.new(1,1,1)
PartieButton.Font = Enum.Font.GothamBold
PartieButton.TextSize = 16
Instance.new("UICorner", PartieButton).CornerRadius = UDim.new(0,6)

local PartieListVisible = false
local PartieListFrame = Instance.new("ScrollingFrame")
PartieListFrame.Size = UDim2.new(0.45,0,0,200)
PartieListFrame.Position = UDim2.new(0.52,0,1.1,0)
PartieListFrame.BackgroundColor3 = Color3.fromRGB(30,30,45)
PartieListFrame.BorderSizePixel = 0
PartieListFrame.ScrollBarThickness = 4
PartieListFrame.Visible = false
PartieListFrame.Parent = MainContent
Instance.new("UICorner", PartieListFrame).CornerRadius = UDim.new(0,6)

local PartieListLayout = Instance.new("UIListLayout", PartieListFrame)
PartieListLayout.Padding = UDim.new(0,4)
PartieListLayout.SortOrder = Enum.SortOrder.LayoutOrder

for _, opt in ipairs(optionsParties) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1,0,0,30)
    btn.BackgroundColor3 = Color3.fromRGB(40,40,60)
    btn.Text = opt
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    btn.Parent = PartieListFrame
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0,4)

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
AddToggle(MainContent, "Aimbot", Settings.Aimbot, function(v) Settings.Aimbot = v end)
AddSlider(MainContent, "Fov Aimbot", 10, 300, Settings.AimbotFOV, function(v) Settings.AimbotFOV = math.floor(v) end, "%.0f")
AddSlider(MainContent, "Smooth Aimbot", 0, 1, Settings.AimbotSmooth, function(v) Settings.AimbotSmooth = v end, "%.2f")
AddToggle(MainContent, "ESP", Settings.ESP, function(v) Settings.ESP = v end)
AddToggle(MainContent, "Afficher les noms", Settings.AfficherNoms, function(v) Settings.AfficherNoms = v end)
AddSlider(MainContent, "Vitesse De Marche", 16, 400, Settings.VitesseMarche, function(v) Settings.VitesseMarche = v pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = v end) end, "%.0f")
AddSlider(MainContent, "Puissance Du Jump", 50, 300, Settings.PuissanceSaut, function(v) Settings.PuissanceSaut = v pcall(function() LocalPlayer.Character.Humanoid.JumpPower = v end) end, "%.0f")
AddToggle(MainContent, "Saut infini", Settings.SautInfini, function(v) Settings.SautInfini = v end)
AddToggle(MainContent, "NoClip", Settings.NoClip, function(v) Settings.NoClip = v end)
AddToggle(MainContent, "TP clic (Ctrl+clic)", Settings.TP_Clic, function(v) Settings.TP_Clic = v end)
AddToggle(MainContent, "Anti-AFK", Settings.AntiAFK, function(v) Settings.AntiAFK = v end)

-- FreeCam
AddToggle(MainContent, "FreeCam (Shift + P)", Settings.FreeCam, function(v)
    Settings.FreeCam = v
    if v then
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ozguradam822/freecamv2/refs/heads/main/Freecam"))()
        end)
    end
end)

-- Fly
AddToggle(MainContent, "Fly", Settings.Fly, function(v)
    Settings.Fly = v
    if v then
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if root then
            local bg = Instance.new("BodyGyro", root)
            bg.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
            bg.P = 9e4
            local bv = Instance.new("BodyVelocity", root)
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
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            for _, child in pairs(root:GetChildren()) do
                if child:IsA("BodyGyro") or child:IsA("BodyVelocity") then child:Destroy() end
            end
        end
    end
end)
AddSlider(MainContent, "Fly Speed", 0, 500, Settings.FlySpeed, function(v) Settings.FlySpeed = math.floor(v) end, "%.0f")

-- Spin
AddToggle(MainContent, "Spin", SpinEnabled, function(v)
    SpinEnabled = v
    if v then
        spawn(function()
            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then return end
            
            if _G.SpinConnection then _G.SpinConnection:Disconnect() end
            if _G.SpinTouchedConn then _G.SpinTouchedConn:Disconnect() end
            
            local spinConn = RunService.Heartbeat:Connect(function(dt)
                if not SpinEnabled or not root or not root.Parent then return end
                root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(SpinSpeed * dt), 0)
            end)
            _G.SpinConnection = spinConn
            
            local touchedConn = root.Touched:Connect(function(hit)
                if not SpinEnabled then return end
                if not hit or not hit.Parent then return end
                local hum = hit.Parent:FindFirstChildWhichIsA("Humanoid") or (hit.Parent.Parent and hit.Parent.Parent:FindFirstChildWhichIsA("Humanoid"))
                if hum then return end
                
                local direction = (root.Position - hit.Position).Unit
                if direction.Magnitude < 0.01 then direction = -root.CFrame.LookVector end
                
                local recoilPower = 60 + (SpinSpeed / 8000)
                local verticalBoost = 25 + (SpinSpeed / 40000)
                
                local bv = Instance.new("BodyVelocity")
                bv.Velocity = (direction * recoilPower) + Vector3.new(0, verticalBoost, 0)
                bv.MaxForce = Vector3.new(4000000, 4000000, 4000000)
                bv.Parent = root
                game.Debris:AddItem(bv, 0.16)
            end)
            _G.SpinTouchedConn = touchedConn
        end)
    else
        if _G.SpinConnection then _G.SpinConnection:Disconnect() end
        if _G.SpinTouchedConn then _G.SpinTouchedConn:Disconnect() end
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if root then
            for _, child in pairs(root:GetChildren()) do
                if child:IsA("BodyVelocity") then child:Destroy() end
            end
        end
    end
end)
AddSlider(MainContent, "Spin Vitesse", 100, 15000, SpinSpeed, function(v) SpinSpeed = math.floor(v) end, "%.0f")

-- Branlette
local branletteConnection local branletteTime = 0
AddToggle(MainContent, "Branlette", Settings.Branlette, function(v)
    Settings.Branlette = v
    if v then
        local char = LocalPlayer.Character
        local rightArm = char and (char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm"))
        if rightArm then
            branletteConnection = RunService.Heartbeat:Connect(function(dt)
                branletteTime += dt * 20
                local offset = math.sin(branletteTime) * 0.3
                rightArm.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, -2, -0.5 + offset) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
            end)
        end
    else
        if branletteConnection then branletteConnection:Disconnect() end
    end
end)

-- Liste des joueurs
local PlayersListTitle = Instance.new("TextLabel", MainContent)
PlayersListTitle.Size = UDim2.new(1,0,0,30)
PlayersListTitle.BackgroundTransparency = 1
PlayersListTitle.Text = "Liste des Joueurs - Clique pour ajouter en ami"
PlayersListTitle.TextColor3 = Color3.fromRGB(180,180,255)
PlayersListTitle.Font = Enum.Font.GothamBold
PlayersListTitle.TextSize = 18
PlayersListTitle.LayoutOrder = 100

local SearchFrame = Instance.new("Frame", MainContent)
SearchFrame.Size = UDim2.new(1,0,0,36)
SearchFrame.BackgroundColor3 = Color3.fromRGB(30,30,45)
SearchFrame.LayoutOrder = 101
Instance.new("UICorner", SearchFrame).CornerRadius = UDim.new(0,8)

local SearchBox = Instance.new("TextBox", SearchFrame)
SearchBox.Size = UDim2.new(1,-16,1,-8)
SearchBox.Position = UDim2.new(0,8,0,4)
SearchBox.BackgroundColor3 = Color3.fromRGB(20,20,35)
SearchBox.TextColor3 = Color3.new(1,1,1)
SearchBox.PlaceholderText = "Rechercher un joueur..."
SearchBox.Text = ""
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextSize = 16
Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0,6)

local PlayersListFrame = Instance.new("ScrollingFrame", MainContent)
PlayersListFrame.Size = UDim2.new(1,0,0,300)
PlayersListFrame.BackgroundTransparency = 1
PlayersListFrame.ScrollBarThickness = 5
PlayersListFrame.CanvasSize = UDim2.new(0,0,0,0)
PlayersListFrame.LayoutOrder = 102

local PlayersListLayout = Instance.new("UIListLayout", PlayersListFrame)
PlayersListLayout.Padding = UDim.new(0,6)
PlayersListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function CreatePlayerLine(player)
    if ListeJoueursFrames[player] then return end
    local f = Instance.new("Frame")
    f.Size = UDim2.new(1,0,0,42)
    f.BackgroundColor3 = Color3.fromRGB(38,38,55)
    Instance.new("UICorner",f).CornerRadius = UDim.new(0,7)
    f.Parent = PlayersListFrame
    ListeJoueursFrames[player] = f

    local nameLabel = Instance.new("TextLabel",f)
    nameLabel.Size = UDim2.new(0.62,0,1,0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = table.find(ListeAmis, player.Name) and Color3.fromRGB(80,255,255) or Color3.new(1,1,1)
    nameLabel.TextSize = 17
    nameLabel.Font = Enum.Font.GothamSemibold
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UIPadding",nameLabel).PaddingLeft = UDim.new(0,14)

    local status = Instance.new("TextLabel",f)
    status.Size = UDim2.new(0.36,0,0.8,0)
    status.Position = UDim2.new(0.64,0,0.1,0)
    status.BackgroundTransparency = 1
    status.Text = table.find(ListeAmis, player.Name) and "AMI" or ""
    status.TextColor3 = Color3.fromRGB(100,255,200)
    status.Font = Enum.Font.GothamBold
    status.TextSize = 15

    f.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local idx = table.find(ListeAmis, player.Name)
            if idx then
                table.remove(ListeAmis, idx)
                status.Text = ""
                nameLabel.TextColor3 = Color3.new(1,1,1)
            else
                table.insert(ListeAmis, player.Name)
                status.Text = "AMI"
                nameLabel.TextColor3 = Color3.fromRGB(80,255,255)
            end
            UpdateWatermark()
        end
    end)
end

local function RefreshPlayerList(filter)
    filter = (filter or ""):lower()
    for p, frame in pairs(ListeJoueursFrames) do
        if not p.Parent then
            frame:Destroy()
            ListeJoueursFrames[p] = nil
        end
    end

    local sorted = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and (filter == "" or p.Name:lower():find(filter,1,true)) then
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
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end

    local isFriend = table.find(ListeAmis, player.Name) ~= nil
    local isTeam = (player.Team == LocalPlayer.Team and player.Team ~= nil) and not isFriend

    local colorFill = isFriend and Color3.fromRGB(50, 220, 255) or (isTeam and COULEUR_ALLIE or COULEUR_ENNEMI)
    local colorOutline = isFriend and Color3.fromRGB(120, 240, 255) or (isTeam and Color3.fromRGB(200,255,200) or Color3.fromRGB(255,200,200))
    local colorName = isFriend and Color3.fromRGB(100, 255, 255) or (isTeam and COULEUR_NOM_ALLIE or COULEUR_NOM_ENNEMI)

    local hl = ESP_Objects[player] and ESP_Objects[player].Highlight
    if not hl or not hl.Parent then
        hl = Instance.new("Highlight")
        hl.Parent = char
        ESP_Objects[player] = {Highlight = hl}
    end
    hl.FillColor = colorFill
    hl.OutlineColor = colorOutline
    hl.FillTransparency = 0.55
    hl.OutlineTransparency = 0.15
    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Enabled = Settings.ESP

    if Settings.AfficherNoms then
        local bg = ESP_Objects[player].Billboard
        if not bg or not bg.Parent then
            bg = Instance.new("BillboardGui")
            bg.Adornee = char:FindFirstChild("Head") or char.HumanoidRootPart
            bg.Size = UDim2.new(0,160,0,45)
            bg.StudsOffset = Vector3.new(0,3.4,0)
            bg.AlwaysOnTop = true
            bg.MaxDistance = 900
            bg.Parent = char

            local txt = Instance.new("TextLabel", bg)
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
        target = target or char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")

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
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end
end)

-- ===================== ONGLET TELEPORTER =====================
local TeleportTitle = Instance.new("TextLabel", TeleportContent)
TeleportTitle.Size = UDim2.new(1,0,0,40)
TeleportTitle.BackgroundTransparency = 1
TeleportTitle.Text = "Sélectionne un joueur pour te coller à lui"
TeleportTitle.TextColor3 = Color3.fromRGB(200,200,255)
TeleportTitle.Font = Enum.Font.GothamBold
TeleportTitle.TextSize = 22
TeleportTitle.LayoutOrder = 1

local FollowToggleBtn = Instance.new("TextButton", TeleportContent)
FollowToggleBtn.Size = UDim2.new(0.8,0,0,50)
FollowToggleBtn.Position = UDim2.new(0.1,0,0,50)
FollowToggleBtn.BackgroundColor3 = FollowToggle and Color3.fromRGB(0,200,100) or Color3.fromRGB(200,50,50)
FollowToggleBtn.Text = FollowToggle and "FOLLOW ACTIF" or "SUIVRE LE JOUEUR"
FollowToggleBtn.TextColor3 = Color3.new(1,1,1)
FollowToggleBtn.Font = Enum.Font.GothamBold
FollowToggleBtn.TextSize = 24
Instance.new("UICorner", FollowToggleBtn).CornerRadius = UDim.new(0,12)
FollowToggleBtn.LayoutOrder = 2

FollowToggleBtn.MouseButton1Click:Connect(function()
    FollowToggle = not FollowToggle
    FollowToggleBtn.BackgroundColor3 = FollowToggle and Color3.fromRGB(0,200,100) or Color3.fromRGB(200,50,50)
    FollowToggleBtn.Text = FollowToggle and "FOLLOW ACTIF" or "SUIVRE LE JOUEUR"

    if not FollowToggle then
        if FollowConnection then FollowConnection:Disconnect() FollowConnection = nil end
        TargetPlayer = nil
        return
    end

    if not TargetPlayer then
        FollowToggle = false
        FollowToggleBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
        FollowToggleBtn.Text = "SUIVRE LE JOUEUR"
        return
    end

    if FollowConnection then FollowConnection:Disconnect() end

    FollowConnection = RunService.Heartbeat:Connect(function()
        if not FollowToggle or not TargetPlayer or not TargetPlayer.Character or not TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if FollowConnection then FollowConnection:Disconnect() FollowConnection = nil end
            FollowToggle = false
            FollowToggleBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
            FollowToggleBtn.Text = "SUIVRE LE JOUEUR"
            return
        end

        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then return end

        local targetRoot = TargetPlayer.Character.HumanoidRootPart
        root.CFrame = targetRoot.CFrame * CFrame.new(0, 3, -2)  
    end)
end)

-- Liste des joueurs pour ce tp au fdp
local TeleportPlayerTitle = Instance.new("TextLabel", TeleportContent)
TeleportPlayerTitle.Size = UDim2.new(1,0,0,30)
TeleportPlayerTitle.BackgroundTransparency = 1
TeleportPlayerTitle.Text = "Joueurs disponibles (clique pour sélectionner)"
TeleportPlayerTitle.TextColor3 = Color3.fromRGB(180,180,255)
TeleportPlayerTitle.Font = Enum.Font.GothamBold
TeleportPlayerTitle.TextSize = 18
TeleportPlayerTitle.LayoutOrder = 3

local TeleportSearchBox = Instance.new("TextBox", TeleportContent)
TeleportSearchBox.Size = UDim2.new(1,-20,0,36)
TeleportSearchBox.Position = UDim2.new(0,10,0,90)
TeleportSearchBox.BackgroundColor3 = Color3.fromRGB(20,20,35)
TeleportSearchBox.TextColor3 = Color3.new(1,1,1)
TeleportSearchBox.PlaceholderText = "Rechercher un joueur..."
TeleportSearchBox.Text = ""
TeleportSearchBox.ClearTextOnFocus = false
TeleportSearchBox.Font = Enum.Font.Gotham
TeleportSearchBox.TextSize = 16
Instance.new("UICorner", TeleportSearchBox).CornerRadius = UDim.new(0,6)
TeleportSearchBox.LayoutOrder = 4

local TeleportPlayersFrame = Instance.new("ScrollingFrame", TeleportContent)
TeleportPlayersFrame.Size = UDim2.new(1,-20,1,-150)
TeleportPlayersFrame.Position = UDim2.new(0,10,0,140)
TeleportPlayersFrame.BackgroundTransparency = 1
TeleportPlayersFrame.ScrollBarThickness = 5
TeleportPlayersFrame.CanvasSize = UDim2.new(0,0,0,0)
TeleportPlayersFrame.LayoutOrder = 5

local TeleportPlayersLayout = Instance.new("UIListLayout", TeleportPlayersFrame)
TeleportPlayersLayout.Padding = UDim.new(0,6)
TeleportPlayersLayout.SortOrder = Enum.SortOrder.LayoutOrder

local TeleportPlayerFrames = {}

local function CreateTeleportPlayerLine(player)
    if TeleportPlayerFrames[player] then return end
    local f = Instance.new("TextButton")
    f.Size = UDim2.new(1,0,0,40)
    f.BackgroundColor3 = Color3.fromRGB(38,38,55)
    Instance.new("UICorner",f).CornerRadius = UDim.new(0,8)
    f.Parent = TeleportPlayersFrame
    TeleportPlayerFrames[player] = f

    f.Text = player.Name
    f.TextColor3 = Color3.new(1,1,1)
    f.Font = Enum.Font.GothamSemibold
    f.TextSize = 17
    f.TextXAlignment = Enum.TextXAlignment.Left

    local pad = Instance.new("UIPadding", f)
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
    filter = (filter or ""):lower()
    for p, frame in pairs(TeleportPlayerFrames) do
        if not p.Parent then
            frame:Destroy()
            TeleportPlayerFrames[p] = nil
        end
    end

    local sorted = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and (filter == "" or p.Name:lower():find(filter,1,true)) then
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
        FollowToggleBtn.Text = "SUIVRE LE JOUEUR"
    end
    task.delay(0.2, function()
        RefreshTeleportList(TeleportSearchBox.Text)
    end)
end)

TeleportSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    RefreshTeleportList(TeleportSearchBox.Text)
end)

-- Kill Menu
local killf = Instance.new("Frame", MainContent)
killf.Size = UDim2.new(1,0,0,55)
killf.BackgroundColor3 = Color3.fromRGB(80,20,20)
killf.LayoutOrder = 999
Instance.new("UICorner",killf).CornerRadius = UDim.new(0,8)

local killb = Instance.new("TextButton",killf)
killb.Size = UDim2.new(0.92,0,0.8,0)
killb.Position = UDim2.new(0.04,0,0.1,0)
killb.BackgroundColor3 = Color3.fromRGB(200,30,30)
killb.Text = "KILL MENU (Unload All)"
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
AutoTitle.Text = "AUTOPAFF"
AutoTitle.TextColor3 = Color3.fromRGB(220, 180, 255)
AutoTitle.Font = Enum.Font.GothamBlack
AutoTitle.TextSize = 48

local AutoToggle = Instance.new("TextButton", AutoPaffContent)
AutoToggle.Size = UDim2.new(0.7,0,0,100)
AutoToggle.Position = UDim2.new(0.15,0,0.1,0)
AutoToggle.BackgroundColor3 = AutoPaff.Enabled and Color3.fromRGB(80,255,120) or Color3.fromRGB(255,80,80)
AutoToggle.Text = AutoPaff.Enabled and "ON" or "OFF"
AutoToggle.TextColor3 = Color3.new(1,1,1)
AutoToggle.Font = Enum.Font.GothamBlack
AutoToggle.TextSize = 60
Instance.new("UICorner", AutoToggle).CornerRadius = UDim.new(0,25)

AutoToggle.MouseButton1Click:Connect(function()
    AutoPaff.Enabled = not AutoPaff.Enabled
    AutoToggle.BackgroundColor3 = AutoPaff.Enabled and Color3.fromRGB(80,255,120) or Color3.fromRGB(255,80,80)
    AutoToggle.Text = AutoPaff.Enabled and "ON" or "OFF"
end)

local cpsFrame = Instance.new("Frame", AutoPaffContent)
cpsFrame.Size = UDim2.new(0.8,0,0,60)
cpsFrame.Position = UDim2.new(0.1,0,0.4,0)
cpsFrame.BackgroundTransparency = 1

local cpsLbl = Instance.new("TextLabel", cpsFrame)
cpsLbl.Size = UDim2.new(0.35,0,1,0)
cpsLbl.BackgroundTransparency = 1
cpsLbl.Text = "CPS"
cpsLbl.TextColor3 = Color3.fromRGB(220,220,255)
cpsLbl.Font = Enum.Font.GothamBold
cpsLbl.TextSize = 32

local cpsInput = Instance.new("TextBox", cpsFrame)
cpsInput.Size = UDim2.new(0.6,0,1,0)
cpsInput.Position = UDim2.new(0.4,0,0,0)
cpsInput.BackgroundColor3 = Color3.fromRGB(40,40,60)
cpsInput.Text = tostring(AutoPaff.CPS)
cpsInput.TextColor3 = Color3.fromRGB(255,255,255)
cpsInput.Font = Enum.Font.Gotham
cpsInput.TextSize = 40
cpsInput.ClearTextOnFocus = false
Instance.new("UICorner", cpsInput).CornerRadius = UDim.new(0,15)

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
infoTxt.Text = "F6 = pour activée \nmet 400 pour gagner tout le temps"
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
        AutoToggle.Text = AutoPaff.Enabled and "ON" or "OFF"
    end
end)
