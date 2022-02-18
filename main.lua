local library = {}

function library:CreateWindow(name)
	local Library = Instance.new("ScreenGui")
	local MainWindow = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local GUIName = Instance.new("TextLabel")
	local CloseButton = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Container = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	
	Library.Name = "Library"
	Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainWindow.Name = "MainWindow"
	MainWindow.Parent = Library
	MainWindow.BackgroundColor3 = Color3.fromRGB(33, 31, 32)
	MainWindow.Position = UDim2.new(0.345757335, 0, 0.16842106, 0)
	MainWindow.Size = UDim2.new(0, 352, 0, 191)
	MainWindow.Active = true
	MainWindow.Draggable = true

	UICorner.Parent = MainWindow

	GUIName.Name = "GUIName"
	GUIName.Parent = MainWindow
	GUIName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GUIName.BackgroundTransparency = 1.000
	GUIName.Position = UDim2.new(0.0426136367, 0, 0.0418848172, 0)
	GUIName.Size = UDim2.new(0, 153, 0, 24)
	GUIName.Font = Enum.Font.Nunito
	GUIName.Text = name
	GUIName.TextColor3 = Color3.fromRGB(180, 180, 180)
	GUIName.TextScaled = true
	GUIName.TextSize = 14.000
	GUIName.TextWrapped = true
	GUIName.TextXAlignment = Enum.TextXAlignment.Left

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = GUIName
	CloseButton.BackgroundColor3 = Color3.fromRGB(106, 15, 35)
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(1.96078432, 0, 0, 0)
	CloseButton.Size = UDim2.new(0, 24, 0, 24)
	CloseButton.Font = Enum.Font.SourceSans
	CloseButton.Text = "X"
	CloseButton.TextColor3 = Color3.fromRGB(180, 180, 180)
	CloseButton.TextSize = 18.000
	CloseButton.MouseButton1Down:Connect(function()
		MainWindow:Destroy()
	end)

	UICorner_2.Parent = CloseButton

	Container.Name = "Container"
	Container.Parent = MainWindow
	Container.Active = true
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0.0426136367, 0, 0.235602096, 0)
	Container.Size = UDim2.new(0, 324, 0, 129)
	Container.ScrollBarThickness = 0

	UIListLayout.Parent = Container
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	UIPadding.Parent = Container
	UIPadding.PaddingTop = UDim.new(0, 5)
	
	local coolLib = {}
	
	function coolLib:CreateButton(text, callback)
		local callback = callback or function() end
		
		local Button = Instance.new("TextButton")

		Button.Name = "Button"
		Button.Parent = Container
		Button.BackgroundColor3 = Color3.fromRGB(50, 47, 48)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 324, 0, 28)
		Button.Font = Enum.Font.SourceSans
		Button.Text = text
		Button.TextColor3 = Color3.fromRGB(180, 180, 180)
		Button.TextSize = 22.000
		Button.TextWrapped = true
		Button.MouseButton1Down:Connect(function()
			pcall(callback)
		end)
	end
	
	return coolLib;
end

return library;
