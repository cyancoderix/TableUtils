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

