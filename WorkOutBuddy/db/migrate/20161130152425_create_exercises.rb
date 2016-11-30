class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :workout
      t.string :photoUrl
      t.text :description
      t.string :video

      t.timestamps
    end
  end
end
