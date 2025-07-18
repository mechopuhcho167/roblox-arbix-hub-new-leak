--[[
  Arbix Hub - Leaked Version
  Credits: Lifea, Ugly, Korez
]]

repeat wait() until game:IsLoaded()

-- Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Simple UI
local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.Name = "ArbixHubUI"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
MainFrame.BorderSizePixel = 0
MainFrame.Name = "MainFrame"

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

local TextLabel = Instance.new("TextLabel", MainFrame)
TextLabel.Text = "Arbix Hub Loaded!"
TextLabel.Size = UDim2.new(1, 0, 0, 50)
TextLabel.TextColor3 = Color3.new(1,1,1)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 18

-- Example script action (You can replace this with real features)
local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0.8, 0, 0, 30)
Button.Position = UDim2.new(0.1, 0, 0.5, 0)
Button.Text = "Print Hello"
Button.BackgroundColor3 = Color3.fromRGB(50,50,50)
Button.TextColor3 = Color3.new(1,1,1)
Button.Font = Enum.Font.Gotham
Button.TextSize = 14

local btnCorner = Instance.new("UICorner", Button)
btnCorner.CornerRadius = UDim.new(0, 6)

Button.MouseButton1Click:Connect(function()
    print("Hello from Arbix Hub!")
end)
