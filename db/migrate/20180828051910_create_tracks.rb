class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :day
      t.integer :mouth
      t.integer :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
