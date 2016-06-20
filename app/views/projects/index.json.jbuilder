json.array!(@projects) do |project|
  json.extract! project, :id, :name, :point_of_contact, :phone_number, :email, :min_number_of_volunteers, :max_number_of_volunteers, :project_description, :location, :age_limit, :mission_statement, :intensity_level, :additional_directions
  json.url project_url(project, format: :json)
end
