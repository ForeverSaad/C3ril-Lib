-- Z3N LIBRARY

local Library = {}

local TS = game:GetService("TweenService")

--Properties:
local Main = Instance.new("ScreenGui")
Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function Library:Window(Name)
    local MainFrame = Instance.new("Frame")
    local Divider = Instance.new("Frame")
    local TabHolder = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Main
    MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    MainFrame.BorderColor3 = Color3.fromRGB(172, 172, 174)
    MainFrame.BorderSizePixel = 2
    MainFrame.Position = UDim2.new(0.564770937, 0, 0.0831946731, 0)
    MainFrame.Size = UDim2.new(0.27, 0,0.71, 0)

    Divider.Name = "Divider"
    Divider.Parent = MainFrame
    Divider.BackgroundColor3 = Color3.fromRGB(164, 66, 179)
    Divider.BorderSizePixel = 0
    Divider.Position = UDim2.new(0, 0, 0.209999993, 0)
    Divider.Size = UDim2.new(1, 0, 0.00400000019, 0)

    TabHolder.Name = "TabHolder"
    TabHolder.Parent = MainFrame
    TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabHolder.BackgroundTransparency = 1.000
    TabHolder.BorderSizePixel = 0
    TabHolder.Position = UDim2.new(0.00998502132, 0, 0.145999998, 0)
    TabHolder.Size = UDim2.new(0.980029941, 0, 0.064000003, 0)

    UIListLayout.Parent = TabHolder
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout.Padding = UDim.new(0, 8)

    local TabButtonHolder = {}

    local CurrentTab = nil

    function TabButtonHolder:Tab(Name)
        local TabButton = Instance.new("TextButton")

        TabButton.Name = "TabButton"
        TabButton.Parent = TabHolder
        TabButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0, 0, 0.406249046, 0)
        TabButton.Size = UDim2.new(0.10484273, 0, 0.593750954, 0)
        TabButton.AutoButtonColor = false
        TabButton.Font = Enum.Font.Code
        TabButton.Text = "<b>"..Name.."</b>"
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 14.000

        TabButton.MouseButton1Click:Connect(function()
            if CurrentTab ~= TabButton then
                local TI = TweenInfo.new(0.15)

                TS:Create(CurrentTab, TI, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)}):Play()
                TS:Create(TabButton, TI, {BackgroundColor3 = Color3.fromRGB(164, 66, 179)}):Play()

                CurrentTab = TabButton
            end
        end)
    end
    return TabButtonHolder
end
return Library
