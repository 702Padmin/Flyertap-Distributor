# Flyertap Distributor
### Required Versions
Flutter SDK: 3.7.11
Dart SDK: 2.19.6

Install Flutter here: https://docs.flutter.dev/release/archive?tab=windows

## Description
Flyertap Distributor is a Mobile Application where people can sign up to become distributors and take on jobs to start handing out flyers campaigns in a designated area. Whenever the distributors take on a job they will start a tracker to record their route for flyer distribution.

This Mobile application will utilize preexisting software from a Running Tracker App. As of right now, the running tracker app has the ability to track users running activities, as well as a couple of other features such as step tracking and water intake tracking. We will be stripping down the app by removing some of these existing features and adding new ones to align with the goals of the app we wish to create. 

The main functionality will be that distributors (users) are able to sign up for the app and choose the specific areas they want to deliver to. We want to allow users to be able to be assigned to a flyer campaign start the tracking functionality and actually start delivering the flyers. After that is complete we want to be able to save the route data into a database where we can use it to create reports.


## Database
This mobile application will be developed using Flutter using a MySQL Database with WordPress as headless cms.
The main Objects that will be used on the app are: 

Users (Distributors)
Campaigns (Flyer Campaigns)
Routes (We want to be able to save the route data to be able to create a report.)

