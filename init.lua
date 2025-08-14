-- ================================
-- 	CREATED BY CODERIX CYAN
-- 	[ CYAN DEVELOPERS ]
--
-- --------------------------------
-- See the license in the LICENSE
-- ================================

package.path = package.path..";../?.lua"

require("TableUtils.actions")
require("TableUtils.queries")

function table.copy(a,b)
	for i,v in pairs(a) do
		b[i] = v
	end
	return b
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
	return nil
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
	return tbl
end
