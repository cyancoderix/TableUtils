function table.count(tbl)
	return #tbl
end

function table.indexOf(tbl, value)
	for i,v in pairs(tbl) do
		if v == value then
			return i
		end
	end
	return -1
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

function table.equals(a,b)
	if #a ~= #b then
		return false
	end
	for i, v in pairs(a) do
		if b[i] ~= v then
			return false
		end
	end
	return true
end

function table.keys(tbl)
	local result = {}
	for i,_ in pairs(tbl) do
		table.insert(result,i)
	end
	return result
end

function table.values(tbl)
	local result = {}
	for _,v in pairs(tbl) do
		table.insert(result,v)
	end
	return result
end
