
# Displaying Has Many Through Rails Lab

## Objectives

1. Construct a bi-directional has many through.
2. Query for associations via the belongs_to, has_many, and has_many through associations.
3. Iterate over associations in a view and display associated data for a primary instance.
4. Identify the join model in a has many through.

## Overview

The poor doctors at Seattle Grace Hospital are so overworked, they're having trouble keeping track of their patients appointments! Let's help them (and practice our associations) by building a some associations and displaying the data.

![greys-anatomy](http://57.media.tumblr.com/cbcd8f29790e720e4cea60f44cb2c6b9/tumblr_mrbut3kX1g1r6kab2o1_500.gif)

## Instructions

First, fork and clone this lab. <em>Before anything</em>, note that when you generate models, controllers, etc, be sure to include this option, so that it skips tests (which we already have): `--no-test-framework`

You'll need to create all of the migrations, models, routes, controllers, and views for this lab.

## Instructions

1. Create migrations and models for doctor, patient, and appointment. Because this is for a hospital, a doctor can have many patients, but a patient also has many doctors. Patients and doctors both have many appointments. Our `appointments` table should have a column called `appointment_datetime` to represent the date and time the appointment will take place. ( When you display this datetime, make sure it's in a human readable format. The tests will be expecting "January 12, 2016 at 3:00")

2. Create a Doctor's index page which displays each doctor's name, a link to their show page, and a count of their patients.

3. Create a Doctor's show page which displays the doctor's name, department, and each appointments date, time, patient name and a link to that patient's show page.

4. Create a Patient's show page which lists each appointments date and time and a link to the corresponding doctor's show page.

5. Create a Patient's index page which displays a link to each patient's show page and the total number of appointments they have.

6. Create an appointment's show page which shows the date, time, patient and doctor for that particular appointment. Note that there should NOT be an appointments index page - we don't want to have all of the appointments on display here.  

We've provided a seeds file so you can have some data to play around with - run `rake db:seed` once your migrations and models are complete.

<a href='https://learn.co/lessons/displaying-has-many-through-rails-lab' data-visibility='hidden'>View this lesson on Learn.co</a>
