function table.indexOf(tbl, value)
	for i,v in pairs(tbl) do
		if v == value then
			return i
		end
	end
end

function table.copy(a,b)
	for i,v in pairs(a) do
		b[i] = v
	end
end

function table.contains(tbl,index,value)
	for i, v in pairs(tbl) do
		if i == index then
			return true
		end
		if v == value then
			return true
		end
	end
	return false
end

function table.findFirst(tbl, prediction)
	for i, v in pairs(tbl) do
		if prediction(i,v) then
			return v
		end
	end
end

function table.findAll(tbl, prediction)
	local r = {}
	for i, v in pairs(tbl) do
		if prediction(i,v) then
			table.insert(r,v)
		end
	end
	return r
end

function table.constTable(tbl)
	local constants = {}
	constants.const = function(i,v) constants[i] = v end
	local meta = { __index = constants, __newindex = function(t,i,v) if not constants[i] then rawset(t,i,v) end end }
	setmetatable(meta,getmetatable(tbl))
	setmetatable(constants,getmetatable(tbl))
	setmetatable(tbl,meta)
end
