ECHO OFF
ECHO Building Docker Image...
docker build . -t ashellwig/ashhellwig-vue-docker:latest
ECHO Completed the build.
PAUSE
