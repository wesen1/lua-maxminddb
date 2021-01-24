# lua-maxminddb

Bindings for [libmaxminddb](https://github.com/maxmind/libmaxminddb).


## Usage example

```lua
local mm = require 'maxminddb'
local db = mm.open('/var/lib/libmaxminddb/GeoLite2-City.mmdb')

local res = db:lookup('8.8.8.8')
print(res:get("country", "names", "en"), res:get("location", "longitude"), res:get("location", "latitude"))
```

Note:

* The code was created by fabled (see https://github.com/fabled/lua-maxminddb)
* The rockspec files were created by GroM (see https://github.com/GroM/lua-maxminddb)
* I wanted to use this for one of my projects, so I forked it and uploaded the rock to luarocks.org
