
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

First, fork and clone this lab. <em>Before anything</em>, note that when you generate models, controllers, etc, be sure to include this option, so that it skips tests (which we already have): `--no-test-framework`

You'll need to create all of the migrations, models, routes, controllers, and views. Because this is for a hospital, a doctor can have many patients, but a patient also has many doctors. Patients and doctors both have many appointments. Our `appointments` table should have a column called `appointment_datetime`. We've provided a seeds file so you can have some data to play around with - run `rake db:seed` once your migrations and models are complete. 

<a href='https://learn.co/lessons/displaying-has-many-through-rails-lab' data-visibility='hidden'>View this lesson on Learn.co</a>
