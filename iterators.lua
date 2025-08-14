function table.first(tbl, predicate)
	for i, v in pairs(tbl) do
		if predicate(i,v) then
			return v
		end
	end
	return nil
end

function table.where(tbl, predicate)
	local r = {}
	for i, v in pairs(tbl) do
		if predicate(i,v) then
			table.insert(r,v)
		end
	end
	return r
end

function table.select(tbl, func)
	local result = {}
	for i,v in pairs(tbl) do
		result[i] = func(i,v)
	end
	return result
end

function table.asReadOnly(tbl)
	local new = {}
	local meta = { __index = tbl, __newindex = function(t,i,v) end }
	setmetatable(meta,getmetatable(tbl))
	setmetatable(new,meta)
	return new
end
