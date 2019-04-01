line = {}
line.__index = line

function line:new(cont)
	self = setmetatable({}, self)
	self.content = cont or ""

	return self
end

function line:draw(xx, yy)
	term.setCursor(xx, yy)
	io.write(self.content)
end

text = {}
text.__index = text

function text:new(filename)
	self = setmetatable({}, self)
	self.content = {}

	for ln in io.lines(filename) do
		table.insert(self.content, line:new(ln))
	end

	return self
end

function text:draw()
	local curline = 1
	for key, value in ipairs(self.content) do
		if key >= cursor.y and key <= cursor.y + screenHeight then
			value:draw(3, curline)
			curline = curline + 1
		end
	end
end
