
echo **************************************************************
echo Generate JAR
echo **************************************************************
mvn clean package -DskipTests
echo **************************************************************
echo BUILD AND PUSH Docker
echo **************************************************************
docker stop ms-config-v1
docker rm  ms-config-v1
echo **************************************************************
docker  build -t antony0618/ms-config-v1 .
docker push  antony0618/ms-config-v1
echo **************************************************************
echo run image 
docker run -p 8888:8888 --name msconfigv1 --network aforo255 -d antony0618/ms-config-v1
echo *************************************************************
echo End Process
echo *************************************************************