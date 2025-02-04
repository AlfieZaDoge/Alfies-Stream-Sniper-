local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Username = Instance.new("TextBox")
local PlaceID = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Start = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local UseCurrentIDToggle = Instance.new("ImageButton")

local UseCurrentID = false

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "Alfies_Sniper"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.372762591, 0, 0.448798984, 0)
Frame.Size = UDim2.new(0, 285, 0, 198)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(35, 178, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 285, 0, 27)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "    Alfies Sniper"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Username.Name = "Username"
Username.Parent = Frame
Username.BackgroundColor3 = Color3.fromRGB(35, 178, 255)
Username.BorderColor3 = Color3.fromRGB(0, 0, 0)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.147368416, 0, 0.256544501, 0)
Username.Size = UDim2.new(0, 200, 0, 30)
Username.ClearTextOnFocus = false
Username.Font = Enum.Font.SourceSansBold
Username.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Username.PlaceholderText = "Username"
Username.Text = ""
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 14.000

PlaceID.Name = "PlaceID"
PlaceID.Parent = Frame
PlaceID.BackgroundColor3 = Color3.fromRGB(35, 178, 255)
PlaceID.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlaceID.BorderSizePixel = 0
PlaceID.Position = UDim2.new(0.147368416, 0, 0.497382194, 0)
PlaceID.Size = UDim2.new(0, 200, 0, 30)
PlaceID.ClearTextOnFocus = false
PlaceID.Font = Enum.Font.SourceSansBold
PlaceID.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
PlaceID.PlaceholderText = "PlaceID"
PlaceID.Text = ""
PlaceID.TextColor3 = Color3.fromRGB(255, 255, 255)
PlaceID.TextSize = 14.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.147368416, 0, 0.172774866, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 16)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Username/UserID"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.147368416, 0, 0.413612574, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 16)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "PlaceID"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Start.Name = "Start"
Start.Parent = Frame
Start.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Start.BorderColor3 = Color3.fromRGB(0, 0, 0)
Start.Position = UDim2.new(0.147368416, 0, 0.794886112, 0)
Start.Size = UDim2.new(0, 200, 0, 32)
Start.Font = Enum.Font.SourceSansBold
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(255, 255, 255)
Start.TextSize = 16.000
Start.TextWrapped = true

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.217543855, 0, 0.674652278, 0)
TextLabel_4.Size = UDim2.new(0, 109, 0, 16)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Use Current place ID"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000

UseCurrentIDToggle.Name = "UseCurrentID"
UseCurrentIDToggle.Parent = Frame
UseCurrentIDToggle.BackgroundColor3 = Color3.fromRGB(35, 178, 255)
UseCurrentIDToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
UseCurrentIDToggle.BorderSizePixel = 0
UseCurrentIDToggle.Position = UDim2.new(0.147368416, 0, 0.676238716, 0)
UseCurrentIDToggle.Size = UDim2.new(0, 14, 0, 14)

function CheckIfVaild()
	if Username.Text == "" then
		Start.Text = 'Please enter a Username!'
		wait(1)
		Start.Text = "Start"
		return
	end

	if PlaceID.Text == "" then
		Start.Text = "Please enter a PlaceID"
		wait(1)
		Start.Text = "Start"
		return
	end	
end

local UsernameOrUserIDCheckResult = ""

function UsernameOrUserIDCheck(input)
	if input:match("^[a-zA-Z]+$") then
		UsernameOrUserIDCheckResult = "Username"
	elseif input:match("^%d+$") then
		UsernameOrUserIDCheckResult = "UserID"
	else
		UsernameOrUserIDCheckResult = "Invalid"
	end
end

Start.MouseButton1Click:Connect(function()
	CheckIfVaild()
	wait(0.5)
	UsernameOrUserIDCheck(Username.Text)
	wait(0.2)
	
	if UsernameOrUserIDCheckResult == "Invaild" then
		Start.Text = "Error Finding Username/UserID"
		wait(1)
		Start.Text = "Start"
		return
	end
end)
