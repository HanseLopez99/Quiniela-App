class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :description

      t.timestamps
    end
  end
end
