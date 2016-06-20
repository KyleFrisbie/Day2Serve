json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :project_id, :first_name, :last_name, :email, :phone_number
  json.url volunteer_url(volunteer, format: :json)
end
