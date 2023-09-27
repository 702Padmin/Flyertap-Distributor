# Flyertap Distributor
Flyertap Distributor is a Mobile Application where people can sign up to become distributors to start handing out flyer campaigns in a designated area. Whenever the distributors take on a job they will start a tracker to record their route for flyer distribution.



## Installation
### Required Versions
-  Flutter SDK: 3.7.11 -channel stable
-  Dart SDK: 2.19.6

Install Flutter 3.7.11 [(here)](https://docs.flutter.dev/release/archive?tab=windows)

Installation Instructions are found [(here)](https://docs.flutter.dev/get-started/install)

Once you have downloaded the correct Flutter Version, clone the project onto your system.
```
git clone https://github.com/702Padmin/Flyertap-Distributor.git
```
Once everything is installed run the App.

### Troubleshooting
If you experience any issues, in your editor Terminal run the following command:
```
Flutter Doctor
```
This command will show you if Flutter has all packages installed correctly. If there are any issues the command line will show you an error with a link to an article showing you how to fix the issue.
For any other issues please infer [Flutter Documentation](https://docs.flutter.dev/get-started/install)

### Database
- SQLite

## Project Scope
This Project consists of 2 Apps
- Flyertap Distributor Mobile App (This repository is for the Mobile App)
  
Built with:
-  Flutter SDK: 3.7.11 -channel stable
-  Dart SDK: 2.19.6
-  SQLite Database
<br>

- Flyertap Admin Web App (This can found [here](https://adm.flyertap.com/login){:target="_blank" rel="noopener"})

Built with:
-  Laravel
-  Bootstrap
-  MYSQL Database

This App currently works as a simple Running Tracker. Users download the app and they can track their runs which saves them as "activities" on their phone.


We want to build an  **Admin Side Website Application**  that is able to access the run tracking and map data from the **Run Tracker Mobile App**,
and display it, so we the admin can view all the running data from people using the **Run Tracker Mobile App.**


In terms of how we want to render the data, we think it might be easiest to display this data on a Web Page with a table showing all the current runs and when you click on a row you can see more information about their run.(Example of a possible design and layout below)

![example](https://github.com/702Padmin/Flyertap-Distributor/assets/57960180/ada4f1f5-0a70-4abc-b770-c1b1bba3a3ab)


### Items that must be completed:
:heavy_check_mark:  App must run on Android and IOS

:heavy_check_mark:  Ability to View all Distributor Running Data

:heavy_check_mark:  Ability to View details for each current run

:heavy_check_mark:  UI/UX Design for Admin Dashboard

:heavy_check_mark:  Mobile Responsivness

If possible we would also like to see this data in real time. For example, a user is currently running at this point in time, we would be able to see their current location on the map as well as the route they have taken.


<!--
This Mobile application will utilize preexisting software from a Running Tracker App. As of right now, the running tracker app has the ability to track users running activities, as well as a couple of other features such as step tracking, user sign-up system, and water intake tracking. We are mainly interested in utilizing the route tracking feature from the app so will be removing some of these existing features that are not needed as well as adding new ones to align with the goals of the app we wish to create.
-->




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



