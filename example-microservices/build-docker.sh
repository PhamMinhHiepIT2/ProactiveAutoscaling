#!/bin/bash

docker build -t 10.124.69.3:30444/hieppm1-microservices/booking-app:latest -f docker/booking.Dockerfile .
docker build -t 10.124.69.3:30444/hieppm1-microservices/movies-app:latest -f docker/movies.Dockerfile .
docker build -t 10.124.69.3:30444/hieppm1-microservices/showtimes-app:latest -f docker/showtimes.Dockerfile .
docker build -t 10.124.69.3:30444/hieppm1-microservices/user-app:latest -f docker/user.Dockerfile .

docker login 10.124.69.3:30444 -u admin -p vinbdi@2022@#

docker push 10.124.69.3:30444/hieppm1-microservices/booking-app:latest
docker push 10.124.69.3:30444/hieppm1-microservices/movies-app:latest
docker push 10.124.69.3:30444/hieppm1-microservices/showtimes-app:latest
docker push 10.124.69.3:30444/hieppm1-microservices/user-app:latest