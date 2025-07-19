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
