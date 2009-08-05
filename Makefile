all:
	$(MAKE) -C kerlplayerlib
	$(MAKE) -C module
#	$(MAKE) -C testing
	$(MAKE) -C examples

clean:
	$(MAKE) -C kerlplayerlib clean
	$(MAKE) -C module clean
#	$(MAKE) -C testing clean
	$(MAKE) -C examples clean

#test:
#	$(MAKE) -C testing test


install:
	mkdir -p /usr/lib/erlang/lib/kerl/{lib,ebin,include}
	cp lib/*.so /usr/lib/erlang/lib/kerl/lib/
	cp ebin/*.beam /usr/lib/erlang/lib/kerl/ebin/
	cp include/*.hrl /usr/lib/erlang/lib/kerl/include/	
#	cp module/*.beam ebin/
#	cp -b lib/*.so /usr/local/lib/
