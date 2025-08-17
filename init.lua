-- ================================
-- 	CREATED BY CODERIX CYAN
-- 	[ CYAN DEVELOPERS ]
--
-- --------------------------------
-- See the license in the LICENSE
-- ================================

return function(path)
	if path[#path] == "/" then path = path:substring(1,#path-1) end
	package.path = package.path..";"..path.."/../?.lua"
	require("TableUtils.actions")
	require("TableUtils.queries")
	require("TableUtils.iterators")
end
