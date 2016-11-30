class CreateMuscles < ActiveRecord::Migration[5.0]
  def change
    create_table :muscles do |t|
      t.string :title
      t.string :photoUrl

      t.timestamps
    end
  end
end
