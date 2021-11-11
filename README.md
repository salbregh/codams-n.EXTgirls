# Get the best rest and do not save the rest for last!
### Hello and welcome to our GitHub repository for the TomToms n.EXT hackaton! 🚛
![Alt text](/pics/trucker.jpeg "Trucks")
#### We are CODAM's n.EXT level girls (from left to right) Tessa, Sanne, Maria and Mares. We have developed a tool for truck drivers to find and rate resting points to improve efficiency and safety during truck drivers' delivery.


##### This repository contains three different elements that contribute to reaching our goal:
- The Rest Calculator: Calculate when to make a stop
- The App: Rate facilities and safety at rest stops
- The Web: Find the stops on the map

## - The Rest Calculator: Calculate when to make a stop
<img src="/pics/truck-park.gif" height="150" />

Each 24 hours, a truck driver has to rest for 11 hours uninterruptedly. That means there is a maximum driving slot of 13 hours per day. Two short stops of 45 minutes per day are necessary, since 4,5 hours driving without stopping is the maximum according to the law.

In total, there is 11,5 hours per day a truck can actually drive.
Based on these rules, this algorithm calculates how many stops have to be made and after how many kilometers.

### Usage:
To run the algorithm, run the following command.
```console
python3 rest-calculator.py
```
The program will ask for input. Enter a distance in kilometers and an average speed in km/h to get the iternary plan for the truck delivery. With this tool a truck driver will never get a fine for breaking the driving times law again!


## - The App: Rate facilities and safety at rest stops
<img src="/pics/the-app.png" height="500" />

The app we made is meant as an additional functionality to the existing TomTom navigator. The objective of the tool we want to add is that users are able to rate the facilities and safety at rest stops they have visited. With a simple user interface, users can rate the rest stop based on 9 criteria. When the GPS location of a vehicle has been on a rest stop for more than 30 minutes, the driver of the vehicle will get a notification from the TomTom app with the request to answer some questions about the rest stop. The user will provide information on the presence of the following services:
- illuminated parking
- gas
- restaurant
- supermarket
- camera surveillance
- toilets
- hotel/pension
- showers
- cell service

When the user clicks an icon linked to one of these services, implying it's present at the rest stop, they are asked to rate the service on a scale of 1 - 5. When the user has clicked all present services, the 'Submit' button is pressed. Then, a final question will be asked: How safe do you feel at this rest stop?

Based on these scores, we create a facility and a safety rating. The data this tool collects about rest stops is very valuable to truck drivers to plan a safe and efficient iternary.

<img src="/pics/app.gif" alt="animated"  height="600" />

## The Web: Find the stops on the map
<img src="/pics/MapOverview.png" />
Based on the results of the Rest Calculator, and results of user input on facilities and safety, resting points will be shown on the map. For every stop that has to be made, a few options are shown. The facility and safety rating is shown when a stop is clicked. This way, a driver can decide which stop suits their needs te best. 45 minute stop? Look for high facility rating! 11 hour stop? Make sure the spot has a high safety rating! 
<img src="/pics/zoomedinfo.png" height="200" />


### screenshot van map en informatie over rest stop
