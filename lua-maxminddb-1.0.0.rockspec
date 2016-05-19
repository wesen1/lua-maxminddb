package = "lua-maxmindb"
version = "1.0.0"
source =
{
	url = "git://github.com/GroM/lua-maxminddb",
	tag = "v1.0.0"
}
description =
{
	summary = "Lua bindings to MaxMind DB v2"
	detailed = [[
		Lua bindings to MaxMind DB v2
	]],
	homepage = "https://github.com/GroM/lua-maxminddb",
	licence = "LGPL"
}
dependencies =
{
	"lua >= 5.1"
}
external_dependencies =
{
	LIBMAXMINDDB =
	{
		header = "libmaxminddb.h"
	}
}
build =
{
	type = "make"
}