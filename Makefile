#LUA_PKG		?= lua5.2
#LUA_CFLAGS	?= $(shell pkg-config --cflags $(LUA_PKG))
#LUA_CMOD	?= $(shell pkg-config --variable=INSTALL_CMOD $(LUA_PKG))

#CFLAGS ?= -g

maxminddb.so: maxminddb.c
	#$(CC) $(LIBFLAG) -std=c99 $(CFLAGS)  $< -o $@ $(LDFLAGS) -L$(LIBMAXMINDDB_LIBDIR) -I$(LUA_INCDIR) -I$(LIBMAXMINDDB_INCDIR) -lmaxminddb
	$(CC) $(LIBFLAG) $(CFLAGS)  $< -o $@ $(LDFLAGS) -L$(LIBMAXMINDDB_LIBDIR) -I$(LUA_INCDIR) -I$(LIBMAXMINDDB_INCDIR) -lmaxminddb

install:
	#install -d $(DESTDIR)$(LUA_CMOD)
	#install -c maxminddb.so $(DESTDIR)$(LUA_CMOD)
	#install -d $(LIBDIR)
	install -c maxminddb.so $(INST_LIBDIR)

clean:
	rm maxminddb.so
