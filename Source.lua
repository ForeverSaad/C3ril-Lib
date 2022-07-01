--[[
	
	First UI library. Feedback is wanted.
	
]]




local Library = {}

local PageTab

function Library:CreateUi(Title)
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Pages = Instance.new("Frame")
	PageTab = Pages
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UIListLayout = Instance.new("UIListLayout")
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = game.StarterGui.Main
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
	Title.Text = Title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 26.000
	Title.TextWrapped = true

	UIListLayout.Parent = Pages
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	local function KOZAXFR_fake_script() -- MainFrame.Dragify 
		local script = Instance.new('LocalScript', MainFrame)

		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	coroutine.wrap(KOZAXFR_fake_script)()
end

function Library:AddTab(Title)
	local Button1 = Instance.new("TextButton")
	
	Button1.Name = "Button1"
	Button1.Parent = PageTab
	Button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button1.BackgroundTransparency = 1.000
	Button1.Position = UDim2.new(0, 0, 0.166372225, 0)
	Button1.Size = UDim2.new(1, 0, 0.0875116065, 0)
	Button1.Font = Enum.Font.Gotham
	Button1.Text = Title
	Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button1.TextSize = 22.000
end

return Library -- <3
