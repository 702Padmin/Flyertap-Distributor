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

<br><br>

## Project Scope
This Project consists of 2 Applications

### 1.) Flyertap Distributor Mobile App
This App currently works as a simple Running Tracker. Users download the app and they can track their runs which saves them as "activities" on their phone. (This Github repository is for the Mobile App)

Built with:
-  Flutter SDK: 3.7.11 -channel stable
-  Dart SDK: 2.19.6
-  SQLite Database
<br>

### 2.) Flyertap Admin Web App
As of right now, the Web Application is just a template of a CRM. (this can be viewed [here](https://adm.flyertap.com/))

Built with:
-  Laravel
-  Bootstrap
-  MYSQL Database


## Project Tasks

### Database Setup
We want to build a **Web App**  that is able to access the run tracking and map data from the **Mobile App**
and display it on the **Web App**. We just need to set up both the **Mobile App** and **Web App** to run on the SAME database. We want to use the current MySQL Database the **Web App** is using to accomplish this, but we are also open to recommendations.

### Mobile App Registration
We want to add a Login/Sign Up System  for the **Mobile App**. All User data must be saved to the database.

the following will be required fields for registration (this data must be saved to the database): 
-  First Name
-  Last Name
-  Email Address
-  Phone
-  Birthdate
-  Location (Street Address, City, State, Zip) 
-  Driver's License or ID Number
-  Picture of Driver's License
-  Profile Picture
-  What days are you available? (Any, Options: Mon - Sunday)
-  What amount of work are you looking for? (Full-time, Part-time, Gig Work)
-  When are you available to start work?
-  Add a short description of yourself
-  Have you been convicted of or pleaded no contest to a felony?
-  If yes, please explain
-  I would like to be considered for other gig work 

### Mobile App Login
For the login process, we want to do a simple login that requires the following to log in credentials:
- registered email
- verification code that is sent to their email
- No password required 

### Mobile App Run tracking Photo Feature
Part of the Mobile App that will require modification will be the runner tracker process. When you start a run, we want to add the ability for users to take photos during their runs, we need this feature to verify people are doing their job during their runs.

Once the user stops the timer and completes the run we want users to be prompted to fill out a form with the following questions:
- What Campaign did you complete?
- Which Zipcode did you distribute for?
- Additional Notes (for example any issues experienced)
- A Final Picture (Optional. This will be so we can verify they completed the flyer distribution.)

All the pictures they upload, as well as questions they answered, must be saved to the database and attached to their corresponding run activity.


### Admin Web App
Once both the Web App and Mobile App are connected to the same database. We want to create a simple UI for viewing all users and their running data on the **Admin App**. As I mentioned before we have a Web App that's set up and as of right now is only a template with the only functionality being a login.

The Pages will consist of:
- Dashboard Page (overview of all users and current runs)
- Users Page (Ability to View Users in a data format as well as the option to edit their information. We should also have a single user page where, we can click to view all thier info and thier runs.)
- Tasks Page (Ability to view all user runs. Which will include data such as the map and path taken, date, the user making the run, a title for the run, etc. We should also have a single task page where we can click to view all of its info.)

![example](https://github.com/702Padmin/Flyertap-Distributor/assets/57960180/ada4f1f5-0a70-4abc-b770-c1b1bba3a3ab)
-->

### Items that must be completed:
:heavy_check_mark:  **Mobile App** must have a fully fleshed out Register/Login System.

:heavy_check_mark:  **Mobile App** must allow users to take pictures during their runs.

:heavy_check_mark:  **Mobile App** must allow users to fill out a form at the end of their run. 

:heavy_check_mark:  The **Web App** and **Mobile App** must push their data to the same database (Preferably MySQL).

:heavy_check_mark:  The **Web App** should be able to access all user data including the running & map data.

:heavy_check_mark:  UI/UX Design for **Web App**, we need to be able to query all recorded on the mobile app to display.

:heavy_check_mark:  Mobile Responsiveness for the **Web App**

:heavy_check_mark:  **Mobile App** must run on Android and IOS

:heavy_check_mark:  The **Mobile App** must be Uploaded to Android and IOS Playstore once going live.

:heavy_check_mark:  Proper Code Documentation


### Bonus Features (optional)
If it is possible we would also like to see users running data in real time. For example, if a user is currently running at this point in time, we would be able to see their current location on the map as well as the route they have taken.



<!--
## Jobs
The App Home Feed shows all the jobs available to them. These jobs will show up on their feed depending on what service areas they choose. For example, if they choose las vegas they will only see las vegas jobs on the feed. From the feed, they should be able to view job details such as:
-  Area
-  Pay
-  Flyer Amount
-  Description
-  Flyer Pickup location

These Jobs will be pulled from the database based on whatever service areas the users have selected and will be created on a Web Application so you will not need to develop anything for create these jobs you simply pull whatever jobs are available. I will create an API endpoint (with documentation) for requesting jobs so you can pull the data and display them on the app. 

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



# Next Steps
Continue to [Getting Started](https://github.com/702Padmin/Flyertap-Distributor/blob/dev/GettingStarted.md)
