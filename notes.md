rails g resource Doctor name:string department:string --no-test-framework
- has many patients
- has many appointments

rails g resource Patient name:string age:integer --no-test-framework
- belongs to doctor
- has many appointments

rails g resource Appointment datetime:DateTime patient:belongs_to doctor:belongs_to --no-test-framework
------------------------------------

Post = Doctor
  - has many appointments
  - *has many* patients, via appointments

Comment (join table) = Appointment
  - belongs to doctor
  - belongs to patient

User = Patient
  - *has many* belongs to doctors via Appointments

### Displaying appointments on Our doctors

Now that our association is set up, let's display some data. First, let's set up our `doctor#show` page to display all of the appointments on a particular doctor. We'll include the name of the patient who created the appointment as well as a link to their show page.
