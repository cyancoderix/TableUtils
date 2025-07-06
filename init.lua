function table.copy(a,b)
	for i,v in pairs(a) do
		b[i] = v
	end
end

function table.contains(t,ri,rv)
	for i, v in pairs(t) do
		if i == ri then
			return true
		end
		if v == rv then
			return true
		end
	end
	return false
end
