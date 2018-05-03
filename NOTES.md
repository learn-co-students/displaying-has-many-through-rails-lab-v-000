1.	Construct a bi-directional has many through.
2.	Query for associations via the belongs_to, has_many, and has_many through associations.
3.	Iterate over associations in a view and display associated data for a primary instance.
4.	Identify the join model in a has many through.


You'll need to create all of the migrations, models, routes, controllers, and views for this lab.
--no-test-framework flag when you generate 

1.	Create migrations and models for 
	[x] doctor
		has_many :appointments
		has_many :patients, through: :appointments
	[x] patient
		has_many :appointments
		has_many :doctors, through: :appointments
	[x] appointment
		belongs_to doctors
		belongs_to patients

	[x]	appointment_datetime (string?) displays "May 15, 2018 at 3:00"

2. 	Create a Doctor#index page that 
	 [x] displays each doctor's name
	 [x]	a link to their show page
	 [x]	a count of their patients

3.	Create a Doctor#show page that 
	 [x]	displays the doctor's name
	 [x]	department
	 [x]	appointments with each appointment's 
		[x]	date
		[x]	time
		[x]	patient name (linking to the patient's show page)


4.	Create a Patient#show page that 
	 [x]	lists the date and time for each of their appointments 
	 [x]	links to the corresponding doctor's show page


5.	Create a Patient#index page that 
	 []	displays a link to each patient's show page 
	 [x] displays the total number of appointments they have

6.	Create an Appointment#show page that 
	[x]	shows the date
	[x]	time
	[x]	patient
	[x]	doctor for that particular appointment
	[x]	Note that there should NOT be an Appointment#index page
