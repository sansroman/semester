class CreateHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :healths do |t|
      t.string :target
      t.string :exercise
      t.date :birthday
      t.integer :weight
      t.integer :height
      t.integer :step
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
