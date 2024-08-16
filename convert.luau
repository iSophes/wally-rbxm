local Fs = require("@lune/fs")
local Roblox = require("@lune/roblox")

local PackagesPlace = Roblox.deserializePlace(Fs.readFile("createpackages.rbxl"))

for _, Package in Fs.readDir("Packages") do
	if Fs.isFile(Package) then
		Fs.removeFile(Package)
	end

	if Fs.isDir(Package) then
		Fs.removeDir(Package)
	end
end

local Packages = Roblox.serializeModel({ PackagesPlace:GetService("ReplicatedStorage").Packages })
Fs.writeFile("packages.rbxm", Packages)

if not Fs.isDir("ServerPackages") then return end

for _, Package in Fs.readDir("ServerPackages") do
	if Fs.isFile(Package) then
		Fs.removeFile(Package)
	end

	if Fs.isDir(Package) then
		Fs.removeDir(Package)
	end
end

local ServerPackages = Roblox.serializeModel({ PackagesPlace:GetService("ServerScriptService").ServerPackages })
Fs.writeFile("serverpackages.rbxm", ServerPackages)