class Exercise < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises,
    :muscle_id,
    :integer
  end
end
