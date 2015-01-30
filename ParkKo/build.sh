rm -rf build/src
mkdir build/src
mkdir build/src/main
mkdir build/src/test
mkdir build/src/main/java
mkdir build/src/test/java
mkdir build/src/main/webapp
cp -rf ../ParkKo/WebContent/*  build/src/main/webapp
rm -rf build/src/main/webapp/WEB-INF/lib
cd build
mvn clean test install