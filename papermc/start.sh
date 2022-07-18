cd /srv/paper/data
test -r eula.txt || echo "eula=true" > eula.txt
test -r server.properties || cp ../server.properties .
test -r config/paper-global.yml || { mkdir config; cp ../paper-global.yml config/; }
java -Xms2G -Xmx2G -jar ../${JAR} --nogui
