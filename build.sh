
cd lua-resty-balancer
make clean && make
cp librestychash.so ../$1/lua_modules/clib/
cd ..

cd lua-resty-radixtree
make clean && make
cp librestyradixtree.so ../$1/lua_modules/clib/
cd ..
