class CreateCoursePeriodRelationships < ActiveRecord::Migration
  def change
    create_table :course_period_relationships do |t|
      t.integer  :course_id
      t.integer  :period_id

      t.timestamps null: false
    end
  end
end
