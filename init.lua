function table.indexOf(table, value)
	for i,v in pairs(table) do
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

function table.contains(table,index,value)
	for i, v in pairs(table) do
		if i == index then
			return true
		end
		if v == value then
			return true
		end
	end
	return false
end
