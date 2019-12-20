# Displaying Has Many Through Rails Lab

## Objectives

1. Construct a bi-directional has many through.
2. Query for associations via the belongs_to, has_many, and has_many through associations.
3. Iterate over associations in a view and display associated data for a primary instance.
4. Identify the join model in a has many through.

## Overview

The poor doctors at Seattle Grace Hospital are so overworked that they're having trouble keeping track of their patients' appointments! Let's help them (and practice our associations) by building some associations and displaying the data.

![greys-anatomy](http://57.media.tumblr.com/cbcd8f29790e720e4cea60f44cb2c6b9/tumblr_mrbut3kX1g1r6kab2o1_500.gif)

## Instructions

First, fork and clone this lab.

You'll need to create all of the migrations, models, controllers, and views for this lab.

***NOTE***: As with much of our Rails curriculum, remember to always use the `--no-test-framework` flag when you generate models, controllers, etc. That way, the Rails generators will not create additional tests on top of the test suite that already comes with the lesson. E.g., `rails g model User username:string email:string --no-test-framework`.

***Additional note about routes and generators***: We've written the routes for you in the `config/routes.rb` file, so be sure to use the `--skip-routes` flag. This prevents the Rails generators from adding any unnecessary routes. You can use however many flags you need in the generators, so something like `rails g model Post title:string content:text --no-test-framework --skip-routes` is perfectly valid. (If you want to see what other flags and options are available, you can run commands such as `rails g --help` and `rails g model --help`.)

1. Create migrations and models for doctor, patient, and appointment. Because this is for a hospital, a doctor can have many patients, but a patient can also have many doctors. Patients and doctors both have many appointments. Our `appointments` table should have a column called `appointment_datetime` to represent the date and time the appointment will take place. (When you display this datetime, make sure it's in a human readable format. The tests will be expecting "January 12, 2016 at 3:00".)

2. Create a `Doctor#show` page that displays the doctor's name, department, and appointments, with each appointment's date, time, and patient name (linking to the patient's show page).

3. Create a `Patient#show` page that lists the date and time for each of their appointments and links to the corresponding doctor's show page.

4. Create a `Patient#index` page that displays a link to each patient's show page and the total number of appointments they have.

5. Create an `Appointment#show` page that shows the date, time, patient, and doctor for that particular appointment. Note that there should NOT be an `Appointment#index` page –– we don't want to have all of the appointments on display for anyone to see.

We've provided a seed file so you can have some data to play around with –– run `rake db:seed` once your migrations and models are complete.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/displaying-has-many-through-rails-lab' title='Displaying Has Many Through Rails Lab'>Displaying Has Many Through Rails Lab</a> on Learn.co and start learning to code for free.</p>
