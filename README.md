# Get the best rest!
### Hello and welcome to our GitHub repository for the TomToms n.EXT hackaton! 🚛
![Alt text](/pics/trucker.jpeg "Trucks")
We are CODAM's n.EXT level girls Tessa, Sanne, Maria and Mares. We have developed a tool for truck drivers to find and rate resting points to improve efficiency and safety during truck drivers' delivery.


This repository contains the following files that contribute to reaching this goal:
- rest-calculator.py: to get information on when a break is necessary
- !!!!!!!!!!!!!!!!!!! hier ook de andere files bijzetten en kort uitleggen !!!!!!!!!

## Rest calculator
### Algorithm that calculates when a truck driver has to make stops based on the distance and average speed.
Each 24 hours, a truck driver has to rest for 11 hours uninteruptedly. That means there is a maximum driving slot of 13 hours per day. Two short stops of 45 minutes per day are necessary, since 4,5 hours driving without stopping is the maximum according to the law.

In total, there is 11,5 hours per day a truck can actually drive.
Based on these rules, this algorithm calculates how many stops have to be made and after how many kilometers.

### Usage:
To run the algorithm, run the following command.
```console
python3 rest-calculator.py
```
The program will ask for input. Enter a distance in kilometers and an average speed in km/h to get the iternary plan for the truck delivery. 

## The web
### hier komt mares en tessa's web applicatie om de punten op de kaart te showen

## The app
### hier komt sannes app en uitleg van hoe het werkt

