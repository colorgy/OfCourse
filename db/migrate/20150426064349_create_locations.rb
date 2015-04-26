class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      # 上課地點
      t.integer   :course_period_relationship_id
      t.string    :name

      t.float     :latitude
      t.float     :longitude

      t.timestamps null: false
    end
  end
end
