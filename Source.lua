local ScrnGui

local Library = {}

function Library:CreateUi(Name)
	local Main = Instance.new("ScreenGui")
	ScrnGui = Main
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Pages = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	
	Main.Name = "Main"
	Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Main
	MainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	MainFrame.Position = UDim2.new(0.218009502, 0, 0.198003322, 0)
	MainFrame.Size = UDim2.new(0.480726719, 0, 0.534276187, 0)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = MainFrame

	Pages.Name = "Pages"
	Pages.Parent = MainFrame
	Pages.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Pages.Size = UDim2.new(0.285549313, 0, 1, 0)

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = Pages

	Title.Name = "Title"
	Title.Parent = Pages
	Title.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(1.00000012, 0, 0.166372225, 0)
	Title.Font = Enum.Font.GothamBold
	Title.Text = Name
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 34.000
	Title.TextWrapped = true

	UIListLayout.Parent = Pages
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
end

return Library
