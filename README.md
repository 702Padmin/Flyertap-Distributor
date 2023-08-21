# Flyertap Distributor
### Required Versions
Flutter SDK: 3.7.11
Dart SDK: 2.19.6

Install Flutter here: https://docs.flutter.dev/release/archive?tab=windows

## Description
Flyertap Distributor is a Mobile Application where people can sign up to become distributors and take on jobs to start handing out flyers campaigns in a designated area. Whenever the distributors take on a job they will start a tracker to record their route for flyer distribution.

This Mobile application will utilize preexisting software from a Running Tracker App. As of right now, the running tracker app has the ability to track users running activities, as well as a couple of other features such as step tracking, user sign-up system, and water intake tracking. We are mainly interested in utilizing the route tracking feature from the app so will be removing some of these existing features that are not needed as well as adding new ones to align with the goals of the app we wish to create.


## User Sign Up
To start using that App users must first sign up. So there needs to be a system for users to sign-up or log in to the app. The current App has a process at the start of the app when it is first launched, that requests some user information but it's not a fully setup login system. So we will start by modifying this process and requesting the following information:

-First Name
-Last Name
-Email Address
-Phone
-Birthdate
-Serving Areas (This is a list of the areas they wish to send flyers out in. For this portion, we may need to utilize google maps, as we want users to type in the city, and be able to either select either the city or the parts of the city. The example is viewable below)

After that Data will be saved to the backend and users will be redirected to App Home Feed.



## Database
This mobile application will be developed using Flutter using a MySQL Database with WordPress as headless cms.
The main Objects that will be used on the app are: 

Users (Distributors)
Campaigns (Flyer Campaigns)
Routes (We want to be able to save the route data to be able to create a report.)

