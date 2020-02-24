class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name
      t.integer :point_value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
