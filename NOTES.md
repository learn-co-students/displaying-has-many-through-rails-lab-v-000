<h2><%= @ patient.name %></h2>
<p>
  <% @ patient.appointments.each do |appointment| %>
  <% appointment.appointment_datetime %>
    <%= link_to appointment.doctor.name, patient_path(appointment.doctor) %>
  <% end %>
