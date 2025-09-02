local Library = {}
Library.__index = Library

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local UserInputService = game:GetService("UserInputService")

function Library:Window(Titlee, Version, Infoo, Accentt)

	local Window = {}
	Window.__index = Window
	Window.Tabs = {}
	Window.CurrentTab = nil

	for _, gui in pairs(PlayerGui:GetChildren()) do
		if gui.Name == "baconlib" then
			gui:Destroy()
		end
	end

	do
		local HxLib = Instance.new("ScreenGui")
		HxLib.Name = "HxLib"
		HxLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		HxLib.Parent = PlayerGui

		local UI = Instance.new("Frame")
		UI.AnchorPoint = Vector2.new(0.5, 0.5)
		UI.Name = "UI"
		UI.Position = UDim2.new(0.5, 0, 0.5, 0)
		UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
		UI.Size = UDim2.new(0, 350, 0, 225)
		UI.BorderSizePixel = 0
		UI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		UI.Parent = HxLib

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Thickness = 2
		UIStroke.Parent = UI

		local TopBar = Instance.new("Frame")
		TopBar.Name = "TopBar"
		TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TopBar.Size = UDim2.new(1, 0, 0, 24)
		TopBar.BorderSizePixel = 0
		TopBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		TopBar.Parent = UI

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(47, 47, 47)
		UIStroke.Parent = TopBar

		local Accent = Instance.new("Frame")
		Accent.Name = "Accent"
		Accent.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Accent.Size = UDim2.new(1, 0, 0, 2)
		Accent.BorderSizePixel = 0
		Accent.BackgroundColor3 = Accentt
		Accent.Parent = TopBar

		local Title = Instance.new("TextLabel")
		Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		Title.TextColor3 = Color3.fromRGB(99, 99, 99)
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.Text = Titlee
		Title.Name = "Title"
		Title.Size = UDim2.new(0.5, 0, 1, 0)
		Title.BackgroundTransparency = 1
		Title.TextXAlignment = Enum.TextXAlignment.Left
		Title.Position = UDim2.new(0, 5, 0, 0)
		Title.BorderSizePixel = 0
		Title.TextSize = 14
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.Parent = TopBar

		local Navigation = Instance.new("Frame")
		Navigation.AnchorPoint = Vector2.new(0, 0.5)
		Navigation.Name = "Navigation"
		Navigation.Position = UDim2.new(0, 0, 0.5, 0)
		Navigation.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Navigation.Size = UDim2.new(0, 75, 1, -50)
		Navigation.BorderSizePixel = 0
		Navigation.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		Navigation.Parent = UI

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(47, 47, 47)
		UIStroke.Parent = Navigation

		local Scrolling = Instance.new("ScrollingFrame")
		Scrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		Scrolling.Active = true
		Scrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Scrolling.ScrollBarThickness = 0
		Scrolling.BackgroundTransparency = 1
		Scrolling.Name = "Scrolling"
		Scrolling.Size = UDim2.new(1, 0, 1, -25)
		Scrolling.BorderSizePixel = 0
		Scrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Scrolling.Parent = Navigation

		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Parent = Scrolling

		local BottomBar = Instance.new("Frame")
		BottomBar.AnchorPoint = Vector2.new(0, 1)
		BottomBar.Name = "BottomBar"
		BottomBar.Position = UDim2.new(0, 0, 1, 0)
		BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BottomBar.Size = UDim2.new(1, 0, 0, 24)
		BottomBar.BorderSizePixel = 0
		BottomBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		BottomBar.Parent = UI

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(47, 47, 47)
		UIStroke.Parent = BottomBar

		local VersionValue = Instance.new("TextLabel")
		VersionValue.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		VersionValue.TextColor3 = Accentt
		VersionValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
		VersionValue.Text = Version
		VersionValue.AnchorPoint = Vector2.new(1, 0)
		VersionValue.Name = "VersionValue"
		VersionValue.BackgroundTransparency = 1
		VersionValue.Position = UDim2.new(1, -5, 0, 0)
		VersionValue.Size = UDim2.new(0.10000000149011612, 0, 1, 0)
		VersionValue.BorderSizePixel = 0
		VersionValue.TextSize = 14
		VersionValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		VersionValue.Parent = BottomBar

		local Version = Instance.new("TextLabel")
		Version.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		Version.TextColor3 = Color3.fromRGB(99, 99, 99)
		Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Version.Text = "version"
		Version.AnchorPoint = Vector2.new(1, 0)
		Version.Name = "Version"
		Version.BackgroundTransparency = 1
		Version.Position = UDim2.new(1, -27, 0, 0)
		Version.Size = UDim2.new(0.20000000298023224, 0, 1, 0)
		Version.BorderSizePixel = 0
		Version.TextSize = 14
		Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Version.Parent = BottomBar

		local Info = Instance.new("TextLabel")
		Info.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		Info.TextColor3 = Color3.fromRGB(99, 99, 99)
		Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Info.Text = Infoo
		Info.Name = "Info"
		Info.Size = UDim2.new(0.699999988079071, 0, 1, 0)
		Info.BackgroundTransparency = 1
		Info.TextXAlignment = Enum.TextXAlignment.Left
		Info.Position = UDim2.new(0, 5, 0, 0)
		Info.BorderSizePixel = 0
		Info.TextSize = 14
		Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Info.Parent = BottomBar

		local Content = Instance.new("Frame")
		Content.Name = "Content"
		Content.Position = UDim2.new(0, 84, 0, 33)
		Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Content.Size = UDim2.new(1, -90, 1, -65)
		Content.BorderSizePixel = 0
		Content.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		Content.Parent = UI

		local UIStroke = Instance.new("UIStroke")
		UIStroke.Color = Color3.fromRGB(47, 47, 47)
		UIStroke.Parent = Content
		
		local dragging = false
		local dragStart = nil
		local startPos = nil

		local dragButton = Instance.new("TextButton")
		dragButton.Size = UDim2.new(1, 0, 1, 0)
		dragButton.BackgroundTransparency = 1
		dragButton.Text = ""
		dragButton.Parent = TopBar

		dragButton.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragStart = input.Position
				startPos = UI.Position
			end
		end)

		dragButton.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - dragStart
				UI.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)

		function Window:SwitchTab(TabName)
			for _, TabData in pairs(self.Tabs) do
				if TabData.Name == TabName then
					for _, otherTabData in pairs(self.Tabs) do
						otherTabData.ContentFrame.Visible = false
						otherTabData.NavButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						otherTabData.Accent.Visible = false
					end

					TabData.ContentFrame.Visible = true
					TabData.NavButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
					TabData.Accent.Visible = true
					self.CurrentTab = TabData
					break
				end
			end
		end

		function Window:Tab(Titleee)
			local Tabb = {}
			Tabb.__index = Tabb

			local Tab = Instance.new("Frame")
			Tab.Name = "Tab"
			Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Tab.Size = UDim2.new(1, 0, 0, 25)
			Tab.BorderSizePixel = 0
			Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Tab.Parent = Scrolling

			local UIStroke = Instance.new("UIStroke")
			UIStroke.Color = Color3.fromRGB(47, 47, 47)
			UIStroke.Parent = Tab

			local Accent = Instance.new("Frame")
			Accent.Name = "Accent"
			Accent.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Accent.Size = UDim2.new(0, 2, 1, 0)
			Accent.BorderSizePixel = 0
			Accent.BackgroundColor3 = Accentt
			Accent.Visible = false
			Accent.Parent = Tab

			local Title = Instance.new("TextLabel")
			Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			Title.TextColor3 = Color3.fromRGB(99, 99, 99)
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.Text = Titleee
			Title.BackgroundTransparency = 1
			Title.Name = "Title"
			Title.Size = UDim2.new(1, 0, 1, 0)
			Title.BorderSizePixel = 0
			Title.TextSize = 14
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.Parent = Tab

			local TabButton = Instance.new("TextButton")
			TabButton.BackgroundTransparency = 1
			TabButton.Size = UDim2.new(1, 0, 1, 0)
			TabButton.Text = ""
			TabButton.Parent = Tab

			local TabContent = Instance.new("Frame")
			TabContent.BackgroundTransparency = 1
			TabContent.Name = "Tab"
			TabContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TabContent.Size = UDim2.new(1, 0, 1, 0)
			TabContent.BorderSizePixel = 0
			TabContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabContent.Visible = false
			TabContent.Parent = Content

			local TabTitle = Instance.new("TextLabel")
			TabTitle.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
			TabTitle.TextColor3 = Color3.fromRGB(99, 99, 99)
			TabTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TabTitle.Text = Titleee
			TabTitle.Name = "Title"
			TabTitle.Size = UDim2.new(0.5, 0, 0, 15)
			TabTitle.BackgroundTransparency = 1
			TabTitle.TextXAlignment = Enum.TextXAlignment.Left
			TabTitle.Position = UDim2.new(0, 5, 0, -7)
			TabTitle.BorderSizePixel = 0
			TabTitle.TextSize = 14
			TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabTitle.Parent = TabContent
			TabTitle.ZIndex = 2

			local Scrolling = Instance.new("ScrollingFrame")
			Scrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
			Scrolling.Active = true
			Scrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Scrolling.ScrollBarThickness = 5
			Scrolling.BackgroundTransparency = 1
			Scrolling.Name = "Scrolling"
			Scrolling.Size = UDim2.new(1, 0, 1, 0)
			Scrolling.BorderSizePixel = 0
			Scrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Scrolling.Parent = TabContent

			local UIListLayout = Instance.new("UIListLayout")
			UIListLayout.Padding = UDim.new(0, 3)
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Parent = Scrolling

			local UIPadding = Instance.new("UIPadding")
			UIPadding.PaddingTop = UDim.new(0, 12)
			UIPadding.PaddingBottom = UDim.new(0, 5)
			UIPadding.PaddingRight = UDim.new(0, 5)
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.Parent = Scrolling

			local TabData = {
				Name = Titleee,
				NavButton = Tab,
				ContentFrame = TabContent,
				ScrollingFrame = Scrolling,
				Accent = Accent
			}

			table.insert(Window.Tabs, TabData)

			TabButton.MouseButton1Click:Connect(function()
				Window:SwitchTab(Titleee)
			end)

			if #Window.Tabs == 1 then
				Window:SwitchTab(Titleee)
			end

			Tabb.ScrollingFrame = Scrolling

			function Tabb:Section(Titleeee)
				local Sectionn = {}
				Sectionn.__index = Sectionn

				local Section = Instance.new("Frame")
				Section.Name = "Section"
				Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Section.Size = UDim2.new(1, 0, 0, 25)
				Section.BorderSizePixel = 0
				Section.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Section.Parent = Scrolling

				local UIStroke = Instance.new("UIStroke")
				UIStroke.Color = Color3.fromRGB(47, 47, 47)
				UIStroke.Parent = Section

				local Title = Instance.new("TextLabel")
				Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Title.TextColor3 = Color3.fromRGB(99, 99, 99)
				Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title.Text = Titleeee
				Title.Name = "Title"
				Title.Size = UDim2.new(1, -18, 0, 15)
				Title.BackgroundTransparency = 1
				Title.TextXAlignment = Enum.TextXAlignment.Left
				Title.Position = UDim2.new(0, 3, 0, 5)
				Title.BorderSizePixel = 0
				Title.TextSize = 14
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.Parent = Section

				local Arrow = Instance.new("ImageButton")
				Arrow.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Arrow.Name = "Arrow"
				Arrow.AnchorPoint = Vector2.new(1, 0)
				Arrow.Image = "rbxassetid://122392687695836"
				Arrow.BackgroundTransparency = 1
				Arrow.Position = UDim2.new(1, -3, 0, 5)
				Arrow.Size = UDim2.new(0, 15, 0, 15)
				Arrow.BorderSizePixel = 0
				Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Arrow.Parent = Section

				local ContentFrame = Instance.new("Frame")
				ContentFrame.ClipsDescendants = true
				ContentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ContentFrame.Name = "ContentFrame"
				ContentFrame.Size = UDim2.new(1, 0, 1, -25)
				ContentFrame.BackgroundTransparency = 1
				ContentFrame.Position = UDim2.new(0, 0, 0, 25)
				ContentFrame.BorderSizePixel = 0
				ContentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ContentFrame.Parent = Section

				local ContentScrolling = Instance.new("ScrollingFrame")
				ContentScrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
				ContentScrolling.Active = true
				ContentScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ContentScrolling.ScrollBarThickness = 0
				ContentScrolling.BackgroundTransparency = 1
				ContentScrolling.Name = "ContentScrolling"
				ContentScrolling.Size = UDim2.new(1, 0, 1, 0)
				ContentScrolling.BorderSizePixel = 0
				ContentScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ContentScrolling.Parent = ContentFrame

				local ContentListLayout = Instance.new("UIListLayout")
				ContentListLayout.Padding = UDim.new(0, 3)
				ContentListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				ContentListLayout.Parent = ContentScrolling

				local ContentPadding = Instance.new("UIPadding")
				ContentPadding.PaddingTop = UDim.new(0, 5)
				ContentPadding.PaddingBottom = UDim.new(0, 5)
				ContentPadding.PaddingRight = UDim.new(0, 5)
				ContentPadding.PaddingLeft = UDim.new(0, 5)
				ContentPadding.Parent = ContentScrolling

				local function UpdateSectionSize()
					local totalHeight = 25
					local contentHeight = ContentListLayout.AbsoluteContentSize.Y + ContentPadding.PaddingTop.Offset + ContentPadding.PaddingBottom.Offset
					totalHeight = totalHeight + contentHeight

					if totalHeight < 50 then
						totalHeight = 50
					end

					Section.Size = UDim2.new(1, 0, 0, totalHeight)
					ContentScrolling.CanvasSize = UDim2.new(0, 0, 0, ContentListLayout.AbsoluteContentSize.Y)
				end

				ContentListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateSectionSize)

				UpdateSectionSize()

				local isExpanded = true
				Arrow.MouseButton1Click:Connect(function()
					isExpanded = not isExpanded

					if isExpanded then
						ContentFrame.Visible = true
						UpdateSectionSize()
						Arrow.Rotation = 0
					else
						ContentFrame.Visible = false
						Section.Size = UDim2.new(1, 0, 0, 25)
						Arrow.Rotation = -90
					end
				end)

				function Sectionn:AddElement(element)
					element.Parent = ContentScrolling
					UpdateSectionSize()
					return element
				end
				
				function Sectionn:Button(Titlew, Infooo, Callbackw)
					local Button = Instance.new("Frame")
					Button.Name = "Button"
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Button.Size = UDim2.new(1, 0, 0, 30)
					Button.BorderSizePixel = 0
					Button.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Button.Parent = Scrolling

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = Button

					local Title = Instance.new("TextLabel")
					Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Title.TextColor3 = Color3.fromRGB(99, 99, 99)
					Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Title.Text = Titlew
					Title.Name = "Title"
					Title.Size = UDim2.new(0.699999988079071, -5, 0.5, 0)
					Title.BackgroundTransparency = 1
					Title.TextXAlignment = Enum.TextXAlignment.Left
					Title.Position = UDim2.new(0, 5, 0, 2)
					Title.BorderSizePixel = 0
					Title.TextSize = 14
					Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title.Parent = Button

					local Info = Instance.new("TextLabel")
					Info.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Info.TextColor3 = Color3.fromRGB(69, 69, 69)
					Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Info.Text = Infooo
					Info.Name = "Info"
					Info.AnchorPoint = Vector2.new(0, 1)
					Info.Size = UDim2.new(0.699999988079071, -5, 0.5, 0)
					Info.BackgroundTransparency = 1
					Info.TextXAlignment = Enum.TextXAlignment.Left
					Info.Position = UDim2.new(0, 5, 1, -2)
					Info.BorderSizePixel = 0
					Info.TextSize = 14
					Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Info.Parent = Button
					
					local ButtonDetector = Instance.new("TextButton")
					ButtonDetector.Transparency = 1
					ButtonDetector.Parent = Button
					ButtonDetector.Size = UDim2.new(1,0,1,0)
					ButtonDetector.MouseButton1Click:Connect(Callbackw)
					
					return Sectionn:AddElement(Button)
				end
				
				function Sectionn:Label(Textw)
					local Label = Instance.new("Frame")
					Label.Name = "Label"
					Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Label.Size = UDim2.new(1, 0, 0, 25)
					Label.BorderSizePixel = 0
					Label.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Label.Parent = Scrolling

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = Label

					local Text = Instance.new("TextLabel")
					Text.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Text.TextColor3 = Color3.fromRGB(99, 99, 99)
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.Name = Textw
					Text.Size = UDim2.new(1, -5, 1, 0)
					Text.BackgroundTransparency = 1
					Text.TextXAlignment = Enum.TextXAlignment.Left
					Text.Position = UDim2.new(0, 5, 0, 0)
					Text.BorderSizePixel = 0
					Text.TextSize = 14
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.Parent = Label
					
					return Sectionn:AddElement(Label)
				end
				
				function Sectionn:Toggle(Titlex, Infox, Default, Keybind, Callback)
					local ToggleData = {
						Active = Default,
					}

					local keybindConnection

					local Toggle = Instance.new("Frame")
					Toggle.Name = "Toggle"
					Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Toggle.Size = UDim2.new(1, 0, 0, 30)
					Toggle.BorderSizePixel = 0
					Toggle.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Toggle.Parent = Scrolling

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = Toggle

					local Title = Instance.new("TextLabel")
					Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Title.TextColor3 = Color3.fromRGB(99, 99, 99)
					Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Title.Text = Titlex
					Title.Name = "Title"
					Title.Size = UDim2.new(0.699999988079071, -5, 0.5, 0)
					Title.BackgroundTransparency = 1
					Title.TextXAlignment = Enum.TextXAlignment.Left
					Title.Position = UDim2.new(0, 5, 0, 2)
					Title.BorderSizePixel = 0
					Title.TextSize = 14
					Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title.Parent = Toggle

					local Info = Instance.new("TextLabel")
					Info.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Info.TextColor3 = Color3.fromRGB(69, 69, 69)
					Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Info.Text = Infox
					Info.Name = "Info"
					Info.AnchorPoint = Vector2.new(0, 1)
					Info.Size = UDim2.new(0.699999988079071, -5, 0.5, 0)
					Info.BackgroundTransparency = 1
					Info.TextXAlignment = Enum.TextXAlignment.Left
					Info.Position = UDim2.new(0, 5, 1, -2)
					Info.BorderSizePixel = 0
					Info.TextSize = 14
					Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Info.Parent = Toggle

					local KeybindFrame = Instance.new("Frame")
					KeybindFrame.AnchorPoint = Vector2.new(1, 0.5)
					KeybindFrame.Name = "Keybind"
					KeybindFrame.Position = UDim2.new(1, -30, 0.5, 0)
					KeybindFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					KeybindFrame.Size = UDim2.new(0, 20, 0, 20)
					KeybindFrame.BorderSizePixel = 0
					KeybindFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					KeybindFrame.Parent = Toggle
					KeybindFrame.ZIndex = 1000

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = KeybindFrame

					local Key = Instance.new("TextLabel")
					Key.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Key.TextColor3 = Color3.fromRGB(99, 99, 99)
					Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Key.Text = Keybind and Keybind.Name:sub(1, 1):lower() or "a"
					Key.BackgroundTransparency = 1
					Key.Name = "Key"
					Key.Size = UDim2.new(1, 0, 1, 0)
					Key.BorderSizePixel = 0
					Key.TextSize = 14
					Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Key.Parent = KeybindFrame

					local Check = Instance.new("Frame")
					Check.AnchorPoint = Vector2.new(1, 0.5)
					Check.Name = "Check"
					Check.Position = UDim2.new(1, -5, 0.5, 0)
					Check.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Check.Size = UDim2.new(0, 20, 0, 20)
					Check.BorderSizePixel = 0
					Check.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Check.Parent = Toggle

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = Check

					local Checked = Instance.new("Frame")
					Checked.AnchorPoint = Vector2.new(0.5, 0.5)
					Checked.Name = "Checked"
					Checked.Position = UDim2.new(0.5, 0, 0.5, 0)
					Checked.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Checked.Size = UDim2.new(1, -5, 1, -5)
					Checked.BorderSizePixel = 0
					Checked.BackgroundColor3 = Accentt
					Checked.Parent = Check

					local Icon = Instance.new("ImageLabel")
					Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Icon.Image = "rbxassetid://139959044647863"
					Icon.BackgroundTransparency = 1
					Icon.Name = "Icon"
					Icon.Size = UDim2.new(1, 0, 1, 0)
					Icon.BorderSizePixel = 0
					Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Icon.Parent = Checked

					local ToggleDetector = Instance.new("TextButton")
					ToggleDetector.BackgroundTransparency = 1
					ToggleDetector.Size = UDim2.new(1,0,1,0)
					ToggleDetector.Text = ""
					ToggleDetector.Parent = Toggle
					ToggleDetector.MouseButton1Click:Connect(function()
						ToggleData.Active = not ToggleData.Active
						if ToggleData.Active then
							Checked.Visible = true
						else
							Checked.Visible = false
						end
						if Callback then
							Callback(ToggleData.Active)
						end
					end)

					if ToggleData.Active then
						Checked.Visible = true
					else
						Checked.Visible = false
					end

					local NewKeybind = Keybind or Enum.KeyCode.A

					local function ActivateToggle()
						ToggleData.Active = not ToggleData.Active
						if ToggleData.Active then
							Checked.Visible = true
						else
							Checked.Visible = false
						end
						if Callback then
							Callback(ToggleData.Active)
						end
					end

					keybindConnection = UserInputService.InputBegan:Connect(function(input)
						if input.KeyCode == NewKeybind then
							ActivateToggle()
						end
					end)

					local function UpdateKeybind()
						local listening = false

						local keybindButton = Instance.new("TextButton")
						keybindButton.Size = UDim2.new(1, 0, 1, 0)
						keybindButton.BackgroundTransparency = 1
						keybindButton.Text = ""
						keybindButton.Parent = KeybindFrame

						keybindButton.MouseButton1Click:Connect(function()
							if listening then return end

							listening = true
							Key.Text = "..."

							local connection
							connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
								if gameProcessed then return end

								if input.UserInputType == Enum.UserInputType.Keyboard then
									local keyName = input.KeyCode.Name

									Key.Text = keyName:sub(1, 1):lower()
									Key.TextColor3 = Color3.fromRGB(99, 99, 99)

									NewKeybind = input.KeyCode

									connection:Disconnect()
									listening = false

									if keybindConnection then
										keybindConnection:Disconnect()
									end

									keybindConnection = UserInputService.InputBegan:Connect(function(newInput)
										if newInput.KeyCode == NewKeybind then
											ActivateToggle()
										end
									end)
								end
							end)
						end)
					end

					UpdateKeybind()

					return Sectionn:AddElement(Toggle)
				end
				
				function Sectionn:Slider(Titlev, Min, Max, Defaultz, CallbackY)
					local SliderData = {
						Value = Defaultz or Min or 0
					}

					local Slider = Instance.new("Frame")
					Slider.Name = "Slider"
					Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slider.Size = UDim2.new(1, 0, 0, 40)
					Slider.BorderSizePixel = 0
					Slider.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Slider.Parent = Scrolling

					local UIStroke = Instance.new("UIStroke")
					UIStroke.Color = Color3.fromRGB(47, 47, 47)
					UIStroke.Parent = Slider

					local Title = Instance.new("TextLabel")
					Title.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Title.TextColor3 = Color3.fromRGB(99, 99, 99)
					Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Title.Text = Titlev or "Slider"
					Title.Name = "Title"
					Title.Size = UDim2.new(0.30000001192092896, -5, 0, 20)
					Title.BackgroundTransparency = 1
					Title.TextXAlignment = Enum.TextXAlignment.Left
					Title.Position = UDim2.new(0, 5, 0, 2)
					Title.BorderSizePixel = 0
					Title.TextSize = 14
					Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Title.Parent = Slider

					local Value = Instance.new("TextLabel")
					Value.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					Value.TextColor3 = Color3.fromRGB(99, 99, 99)
					Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Value.Text = tostring(SliderData.Value)
					Value.Name = "Value"
					Value.AnchorPoint = Vector2.new(1, 0)
					Value.Size = UDim2.new(0.30000001192092896, -5, 0, 20)
					Value.BackgroundTransparency = 1
					Value.TextXAlignment = Enum.TextXAlignment.Right
					Value.Position = UDim2.new(1, -5, 0, 2)
					Value.BorderSizePixel = 0
					Value.TextSize = 14
					Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Value.Parent = Slider

					local Bar = Instance.new("Frame")
					Bar.Name = "Bar"
					Bar.Position = UDim2.new(0, 5, 0, 25)
					Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Bar.Size = UDim2.new(1, -10, 0, 10)
					Bar.BorderSizePixel = 0
					Bar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					Bar.Parent = Slider

					local UIStroke2 = Instance.new("UIStroke")
					UIStroke2.Color = Color3.fromRGB(47, 47, 47)
					UIStroke2.Parent = Bar

					local BarFill = Instance.new("Frame")
					BarFill.Name = "BarFill"
					BarFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
					BarFill.Size = UDim2.new(0.5, 0, 1, 0)
					BarFill.BorderSizePixel = 0
					BarFill.BackgroundColor3 = Accentt
					BarFill.Parent = Bar

					local function UpdateSlider(newValue)
						newValue = math.clamp(newValue, Min, Max)
						SliderData.Value = newValue
						Value.Text = tostring(newValue)

						local percentage = (newValue - Min) / (Max - Min)
						BarFill.Size = UDim2.new(percentage, 0, 1, 0)

						if CallbackY then
							CallbackY(newValue)
						end
					end

					local dragging = false

					local function GetSliderValue(input)
						local barPosition = Bar.AbsolutePosition.X
						local barSize = Bar.AbsoluteSize.X
						local mouseX = input.Position.X

						local percentage = math.clamp((mouseX - barPosition) / barSize, 0, 1)
						return Min + (percentage * (Max - Min))
					end

					local sliderButton = Instance.new("TextButton")
					sliderButton.Size = UDim2.new(1, 0, 1, 0)
					sliderButton.BackgroundTransparency = 1
					sliderButton.Text = ""
					sliderButton.Parent = Bar

					sliderButton.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
							local newValue = GetSliderValue(input)
							UpdateSlider(math.floor(newValue))
						end
					end)

					sliderButton.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end)

					UserInputService.InputChanged:Connect(function(input)
						if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
							local newValue = GetSliderValue(input)
							UpdateSlider(math.floor(newValue))
						end
					end)

					UpdateSlider(SliderData.Value)

					SliderData.SetValue = function(newValue)
						UpdateSlider(newValue)
					end

					return Sectionn:AddElement(Slider)
				end

				return setmetatable(Sectionn, Sectionn)
			end
			return setmetatable(Tabb, Tabb)
		end
	end

	return setmetatable(Window, Window)
end

return Library
