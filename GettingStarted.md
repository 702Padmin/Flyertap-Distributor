# Flyertap Distributor App
To start work on the project, download and setup the dev Repository on to you computer if you have not already.
Instuctions for installation can be found on the Readme on the main repo.

# Deliverables
Complete tasks below. (Check off completed items)

### Database Setup
- [ ] Change **Mobile App** database from SQLite to MySQL
(Login to Cpanel using credentials below to get access to database.)
Username: admflyertap
Passowrd: RRR(jvf+y7OZ 
Login URL: https://adm.flyertap.com/cpanel
- Login and go to phpMyAdmin and use the admflyertap_db database to store all Mobile App data. Make whatever changes needed to complete task.
- This database is a mySQL Laravel Based databsse, if any modification need to be made to the database, you can use the terminal found on the CPanel to make changes or laravel files can be directly accessed via File Manager under the public_html folder

### Mobile App Registration
- [ ] Add a Login/Sign Up System  for the **Mobile App**. All User data must be saved to the newly connected MySQL database.

the following will be required fields for registration (this data must be saved to the database): 
- [ ] First Name
- [ ] Last Name
- [ ] Email Address
- [ ] Phone
- [ ] Birthdate
- [ ] Location (Street Address, City, State, Zip) 
- [ ] Driver's License or ID Number
- [ ] Picture of Driver's License
- [ ] Profile Picture
- [ ] What days are you available? (Any, Options: Mon - Sunday)
- [ ] What amount of work are you looking for? (Full-time, Part-time, Gig Work)
- [ ] When are you available to start work?
- [ ] Add a short description of yourself
- [ ] Have you been convicted of or pleaded no contest to a felony?
- [ ] If yes, please explain
- [ ] I would like to be considered for other gig work 

### Mobile App Login
- [ ] For the login process, we want to do a simple login that requires the following to log in credentials:
- registered email
- verification code that is sent to their email
- No password required 

### Mobile App Run tracking Photo Feature
- [ ] When you start a run, we want to add the ability for users to take photos during their runs, we need this feature to verify people are doing their job during their runs.

- [ ] Once the user stops the timer and completes the run we want users to be prompted to fill out a form with the following questions:
- [ ] What Campaign did you complete?
- [ ] Which Zipcode did you distribute for?
- [ ] Additional Notes (for example any issues experienced)
- [ ] A Final Picture (Optional. This will be so we can verify they completed the flyer distribution.)

All the pictures they upload, as well as questions they answered, must be saved to the database and attached to their corresponding run activity.

#Completion
Upon completion of this milestone, we will review work and provide feedback before proceeding to the next milestone.

### Items that must be completed:
:heavy_check_mark:  **Mobile App** must have a fully fleshed out Register/Login System.

:heavy_check_mark:  **Mobile App** must allow users to take pictures during their runs.

:heavy_check_mark:  **Mobile App** must allow users to fill out a form at the end of their run. 

:heavy_check_mark:  **Mobile App** must run on Android and IOS

:heavy_check_mark:  The **Mobile App** must be Uploaded to Android and IOS Playstore once going live.

:heavy_check_mark:  Proper Code Documentation
