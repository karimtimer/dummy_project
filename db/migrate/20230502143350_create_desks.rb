class CreateDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :desks do |t|
      t.string :type
      t.integer :number
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
