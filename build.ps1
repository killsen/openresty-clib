
if (-not (Test-Path lua-resty-balancer)) {
    git clone https://github.com/openresty/lua-resty-balancer.git
}

if (-not (Test-Path lua-resty-radixtree)) {
    git clone https://github.com/api7/lua-resty-radixtree.git
}

mingw32 -c './build.sh 32bit'
mingw64 -c './build.sh 64bit'
