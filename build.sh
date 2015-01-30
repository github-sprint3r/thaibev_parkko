rm -rf build/src
mkdir build/src
mkdir build/src/main
mkdir build/src/test
mkdir build/src/main/java
mkdir build/src/test/java
mkdir build/src/main/webapp
cp -rf ./Database  build/src/main/webapp
cp -rf ./Javascript  build/src/main/webapp
cp -rf ./build/WEB-INF  build/src/main/webapp
cp -rf ./build/META-INF  build/src/main/webapp
cp -rf ./*.jsp  build/src/main/webapp
rm -rf build/src/main/webapp/WEB-INF/lib
cd build
mvn clean test install