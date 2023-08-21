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

-  First Name
-  Last Name
-  Email Address
-  Phone
-  Birthdate
-  Serving Areas (This is a list of the areas they wish to send flyers out in. For this portion, we may need to utilize google maps, as we want users to type in the city, and be able to either select either the city or specific parts of the city.)

![image](https://github.com/702Padmin/Flyertap-Distributor/assets/57960180/e560cb09-3bd7-4c16-9582-50957815907c)

After that User Data will be saved to the backend and the user will be redirected to App Home Feed.


## Jobs
The App Home Feed shows all the jobs available to them. These jobs will show up on their feed depending on what service areas they choose. For example, if they choose las vegas they will only see las vegas jobs on the feed. From the feed, they should be able to view job details such as:
-  Area
-  Pay
-  Flyer Amount
-  Description
-  Flyer Pickup location

These Jobs will be pulled from the database based on whatever service areas the users have selected. I will create an API endpoint (with documentation) for requesting jobs so you can pull the data and display them on the app. 

Of course, we will also need the ability to take on the job. So there should be a button where users can accept the job. Once they accept the job they will be shown the address pickup location for the Flyers and once they have the flyers. They should be able to view the job and have a button to  start the distribution tracker.  This brings us to the next thing, we would like to get notified whenever someone takes on a job.

## Notifications
Being notified when specific things happen is a feature we also need to implement. Mainly we want notifications for two things:
-  When someone takes a job. (We need a notification that will take us to a view where we can see their profile details.)
-  Get notified when the distributor has left the selected area. (We need a notification sent out to both the distributor and admin.)
If we can send out an email notifying us when these actions occur that would be great.


## Database
This mobile application will be developed using Flutter using a MySQL Database with WordPress as headless cms.
The main Objects that will be used on the app are: 

Users (Distributors)
Campaigns (Flyer Campaigns)
Routes (We want to be able to save the route data to be able to create a report.)

