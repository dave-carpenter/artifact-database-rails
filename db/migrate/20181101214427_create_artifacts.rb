class CreateArtifacts < ActiveRecord::Migration[5.1]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :description
      t.string :department
      t.string :default_location
      t.string :current_location
      t.date :return_date

      t.timestamps
    end
  end
end
