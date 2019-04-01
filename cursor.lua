cursor = {}
cursor.__index = cursor

function cursor:init()
	self.x = 1
	self.y = 1

	self.sx = 1
	self.sy = 1

	term.setCursorBlink(true)
end

function cursor:move(dx, dy)
	self.x = self.x + dx
	self.y = self.y + dy

	self.sx = self.x
	self.sy = self.y

	if self.x < 0 then self.x = 1 end
	if self.y < 0 then self.y = 1 end

	if self.x > screenWidth then self.sx = screenWidth end
	if self.y > screenHeight then self.sy = screenHeight end

	term.setCursor(self.sx, self.sy)
end

function blinkCallback()
	
end
