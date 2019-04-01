term = require("term")
component = require("component")
event = require("event")
require("cursor")
require("line")
gpu = component.gpu

screenWidth, screenHeight = gpu.getResolution()
cursor:init()
local t = text:new("test.lua")
term.clear()
t:draw()

while true do
	local _, _, _, d = event.pull("key_down")
	--print(a, b, c, d)
	if d == 200 then cursor:move(0, -1)
	elseif d == 208 then cursor:move(0, 1)
	elseif d == 205 then cursor:move(1, 0)
	elseif d == 203 then cursor:move(-1, 0)
	end
end
