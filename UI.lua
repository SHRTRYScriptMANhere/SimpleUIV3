local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local plr = game.Players.LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "Simple UI V3 by maksat_rel/SomeGuy",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Simple UI V3 is loading...",
   LoadingSubtitle = "by SomeGuy",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", "user")
local Slider = PlayerTab:CreateSlider({
   Name = "Speed",
   Range = {16, 400},
   Increment = 1,
   Suffix = "speed",
   CurrentValue = 16,
   Flag = "SSLider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   plr.Character:WaitForChild("Humanoid").WalkSpeed = Value
   end,
})
local JPSlider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {60, 400},
   Increment = 1,
   Suffix = "jumppower",
   CurrentValue = 60,
   Flag = "JSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   plr.Character:WaitForChild("Humanoid").JumpPower = Value
   end,
})
local SITButton = PlayerTab:CreateButton({
   Name = "Sit (jump to disable)",
   Callback = function()
   plr.Character:WaitForChild("Humanoid").Sit = true
   end,
})
local FLYButton = PlayerTab:CreateButton({
   Name = "fly",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/eQA4nfcw"))()
   end,
})
local TPButton = PlayerTab:CreateButton({
   Name = "TP Tool",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/SHRTRYScriptMANhere/TPTool/refs/heads/main/teleportation"))()
   end,
})

local FETab = Window:CreateTab("FE Things", "eye") -- Title, Image
local IYButton = FETab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   Rayfield:Notify({
   Title = "Loading",
   Content = "FE Infinite Yield is loading...",
   Duration = 6,
   Image = 4483362458,
   })
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})
local JOButton = FETab:CreateButton({
   Name = "jerk off (r15 and r6)",
   Callback = function()
   --This one is r6:
   loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))() 
   --This one is r15:
   loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
   end,
})
local KButton = FETab:CreateButton({
   Name = "Kill Yourself (can kill others if there is stroller item in game)",
   Callback = function()
   plr.Character:WaitForChild("HumanoidRootPart").Position = Vector3.new(0, -9999, 0)
   end,
})

local NDSTab = Window:CreateTab("💀 Natural Disaster Survival 🏝️", "tree-palm") -- Title, Image
local MainNDSSection = NDSTab:CreateSection("Main")
local NDSTPDropdown = NDSTab:CreateDropdown({
   Name = "Teleport",
   Options = {"Lobby","Island"},
   CurrentOption = {"Lobby"},
   MultipleOptions = false,
   Flag = "Dropdown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   if CurrentOption = Island then
				print("skibdi")
          end
		else
			print("HAHA")
			
   end,
})
