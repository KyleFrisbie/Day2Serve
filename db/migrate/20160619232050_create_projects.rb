class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :point_of_contact
      t.string :phone_number
      t.string :email
      t.integer :min_number_of_volunteers
      t.integer :max_number_of_volunteers
      t.text :project_description
      t.string :location
      t.integer :age_limit
      t.text :mission_statement
      t.integer :intensity_level
      t.text :additional_directions

      t.timestamps null: false
    end
  end
end
