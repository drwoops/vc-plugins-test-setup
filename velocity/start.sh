cd /srv/velocity
cd data
test -r velocity.toml || cp ../velocity.toml .
test -r forwarding.secret || cp ../forwarding.secret .
java -jar ../${JAR}