function table.removeWhere(tbl, predicate)
	for i,v in pairs(tbl) do
		if predicate(i,v) then
			tbl[i] = nil
		end
	end
	return tbl
end

function table.removeValue(tbl, value)
	table.removeWhere(tbl,function(x) return x == value end)
	return tbl
end

function table.reverse(tbl)
	table.sort(tbl,function(x,y) return x > y end)
	return tbl
end

function table.copy(a,b)
	for i,v in pairs(a) do
		b[i] = v
	end
	return b
end


function table.constTable(tbl)
	local constants = {}
	constants.const = function(i,v) constants[i] = v end
	local meta = { __index = constants, __newindex = function(t,i,v) if not constants[i] then rawset(t,i,v) end end }
	setmetatable(meta,getmetatable(tbl))
	setmetatable(constants,getmetatable(tbl))
	setmetatable(tbl,meta)
	return tbl
end
