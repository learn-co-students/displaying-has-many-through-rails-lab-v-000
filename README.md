
# Displaying Has Many Through Rails Lab

## Objectives

1. construct a bi-directional has many through.
2. query for associations via the belongs_to, has_many, and has_many through associations.
3. iterate over associations in a view and display associated data for a primary instance.
4. identify the join model in a has many through.

## Notes

domain:
patients have many doctors through appointments
doctors have many patients through appointments

patients have names
doctors have names
appointments belong to patients and doctors and have a "appointment_datetime" field.

we'll give them nothing in this lab, they'll have to generate the migrations, models, routes, controllers, and views (we can suggest they use a resource generator). we can give them a seed file that if the correct models exist, they can run so they can have some development data without having to build the new/create stuff.

patients#index shows a list of all patients with a count of the appointments they have.
patients#show should list all the appointments and the doctor of the appointment
doctors#index shows a list of all doctors with a count of their unique patients (this would be testing their ability to group or collect or count the appointments of a doctor by patient_id which might be hard but we can include exposition to hint at this)
doctors#show shows a list of all the appointments of a doctor and the patient for the appointment.
appointment#show should the patient and doctor info

there shouldn't be an appointment#index action (let's make sure they can control how much of a resource is exposed)
