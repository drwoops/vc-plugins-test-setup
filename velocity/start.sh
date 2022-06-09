cd /srv/velocity
cd data
test -r velocity.toml || cp ../velocity.toml .
java -jar ../${JAR}