# Flyertap Distributor
Flyertap Distributor is a Mobile Application where people can sign up to become distributors to start handing out flyers campaigns in a designated area. Whenever the distributors take on a job they will start a tracker to record their route for flyer distribution.



## Installation
### Required Versions
-  Flutter SDK: 3.7.11
-  Dart SDK: 2.19.6

Install Flutter 3.7.11 [here](https://docs.flutter.dev/release/archive?tab=windows)

Installation Instructions are found [here](https://docs.flutter.dev/get-started/install)

Once you have downloaded the correct Flutter Version, clone the project to your system.
```
git clone https://github.com/PATH-TO/REPOSITORY](https://github.com/702Padmin/Flyertap-Distributor.git
```
Once everything is installed run the App.

<!--
### Troubleshooting
If you experience any issues, in your editor Terminal run the following command:
```
Flutter Doctor
```
This command will show you if Flutter has all packages installed correctly. If there are any issues the command line will show you an error with a link to an article showing you how to fix the issue.
-->



## Project Scope
This App currently works as a simple Running Tracker. Users download the app and they can track their runs which saves them as "activities" on their phone.

We want to add a functionality where we can simply access all this data from all users using the app, and display it on something like an admin page where an administrator can view all of the current runs.

In terms of where to show this data, I was thinking perhaps of a Simple Web Page with a table showing all the current runs.

### Items that must be completed:
:heavy_check_mark: App must run on Android and IOS

<!--
This Mobile application will utilize preexisting software from a Running Tracker App. As of right now, the running tracker app has the ability to track users running activities, as well as a couple of other features such as step tracking, user sign-up system, and water intake tracking. We are mainly interested in utilizing the route tracking feature from the app so will be removing some of these existing features that are not needed as well as adding new ones to align with the goals of the app we wish to create.
-->


### Database
I believe the App currently utilizes Firebase, so that is most likely where all the running data is being stored.

<!--
 we would like to utilize WordPress as headless CMS for the backend of the app. As we want an easy way to manage users,  jobs, etc. Plus we e already have a WordPress website setup where the campaigns will be created and pulled from to display on the App. I'm not too familiar with Flutter and Firebase development so if there are any limitations from using WordPress as CMS please let us know and we consider using Firebase or a completely different option for the database.
-->

<!--
## User Sign Up
To start using the App users must first sign up. So there needs to be a system for users to sign-up or log in to the app. The current App has a process at the start of the app when it is first launched, that requests some user information but it's not a fully setup login system. So we will start by modifying this process and requesting the following information:

-  First Name
-  Last Name
-  Email Address
-  Phone
-  Birthdate
-  Serving Areas
(Serving Areas is the location, we want users to type in the city, and be able to either select either the city or specific parts of the city.)

This process should be a step-by-step form when signing up. The users should have the ability to log in or log out to the website if already registered. And we would like a simple account page with a simple form to update the user information.

![image](https://github.com/702Padmin/Flyertap-Distributor/assets/57960180/e560cb09-3bd7-4c16-9582-50957815907c)

After that User Data will be saved to the backend and the user will be redirected to App Home Feed.-->

<!--
## Jobs
The App Home Feed shows all the jobs available to them. These jobs will show up on their feed depending on what service areas they choose. For example, if they choose las vegas they will only see las vegas jobs on the feed. From the feed, they should be able to view job details such as:
-  Area
-  Pay
-  Flyer Amount
-  Description
-  Flyer Pickup location

These Jobs will be pulled from the database based on whatever service areas the users have selected and will be created on a Web Application so you will not need to develop anything for create these jobs you simnply pull whatever jobs are available. I will create an API endpoint (with documentation) for requesting jobs so you can pull the data and display them on the app. 

Of course, we will also need the ability to take on the job. So there should be a button where users can accept the job. Once they accept the job they will be shown the address pickup location for the Flyers and once they have the flyers. They should be able to view the job and have a button to start the distribution tracker. Once they complete it. All the tracking data should be saved to the database and we should get notified when the job is complete with a link to a report showing the route analtyics as well as the map with their route.   This brings us to the next thing, we would like to get notified whenever someone takes on a job.
-->

<!--
## Notifications
Being notified when specific things happen is a feature we also need to implement. Mainly we want notifications for two things:
-  When someone takes a job. (We need a notification that will take us to a view where we can see their profile details.)
-  When someone completes a job.
 
If possible we would like to send notifications to distributors whenever new jobs are available in their area as well as notify distributors and administrators when a distributor has left the selected area.

In terms of how this notification is sent, we would like it to be via App notifications, but if it's easier to get it done with Email or SMS  that would be fine.
-->



