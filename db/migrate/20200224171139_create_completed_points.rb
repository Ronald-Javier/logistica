class CreateCompletedPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_points do |t|
      t.references :point, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :point_status, default: false

      t.timestamps
    end
  end
end
