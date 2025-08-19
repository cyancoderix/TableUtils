-- ================================
-- 	CREATED BY CODERIX CYAN
-- 	[ CYAN DEVELOPERS ]
--
-- --------------------------------
-- See the license in the LICENSE
-- ================================

local dir = debug.getinfo(1,"S").source:match("@(.*/)[^/]*/")
if dir then
	package.path = package.path..";"..dir.."?.lua"..";"..dir.."?/init.lua"
end
require("TableUtils.actions")
require("TableUtils.queries")
require("TableUtils.iterators")
