class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.references :project, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
