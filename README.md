
# Displaying Has Many Through Rails Lab

## Objectives

1. construct a bi-directional has many through.
2. query for associations via the belongs_to, has_many, and has_many through associations.
3. iterate over associations in a view and display associated data for a primary instance.
4. identify the join model in a has many through.

## Overview

The poor doctors at Seattle Grace Hospital are so overworked, they're having trouble keeping track of their patients appointments! Let's help them (and practice our associatoins) by building a some associations and displaying the data.

![greys-anatomy](http://57.media.tumblr.com/cbcd8f29790e720e4cea60f44cb2c6b9/tumblr_mrbut3kX1g1r6kab2o1_500.gif)

## Instructions

First, fork and clone this lab. You'll need to create all of the migrations, models, routes, controllers, and views. Because this is for a hospital, a doctor can have many patients, but a patient also has many doctors. Patients and doctors both have many appointments. Our `appointments` table should have a column called `appointment_datetime`

<em>Before anything</em>, note that when you generate models, controllers, etc, be sure to include this option, so that it skips tests (which we already have): `--no-test-framework`




## Notes

we'll give them nothing in this lab, they'll have to generate the migrations, models, routes, controllers, and views (we can suggest they use a resource generator). we can give them a seed file that if the correct models exist, they can run so they can have some development data without having to build the new/create stuff.

patients#index shows a list of all patients with a count of the appointments they have.

patients#show should list all the appointments and the doctor of the appointment

doctors#index shows a list of all doctors with a count of their unique patients (this would be testing their ability to group or collect or count the appointments of a doctor by patient_id which might be hard but we can include exposition to hint at this)

doctors#show shows a list of all the appointments of a doctor and the patient for the appointment.

appointment#show should the patient and doctor info

there shouldn't be an appointment#index action (let's make sure they can control how much of a resource is exposed)

<a href='https://learn.co/lessons/displaying-has-many-through-rails-lab' data-visibility='hidden'>View this lesson on Learn.co</a>
