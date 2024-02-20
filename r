cd ~/fk

gunzip fkme.gz
chmod +x fkme
mkdir static

./fkme daemon ws -addr wss://121.43.230.103:443/yt/ws \
  -port "8000;<;21080" -socks 8000 \
  -port "3000;<;3000" -file 3000 \
  -port "9022;<;9522" -file 3000 \
  -port "7000;<;27080" -http 7000  &

tar xzf ss.tgz
./sshserv serve &

