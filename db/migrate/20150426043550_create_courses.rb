class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer  :year,                 null: false
      t.integer  :term,                 null: false
      t.string   :organization_code,    null: false
      t.string   :department_code
      t.string   :grade_code

      t.string   :lecturer_name,        null: false
      t.string   :name,                 null: false   # course name
      t.string   :english_name                        # course english name
      t.text     :description
      t.text     :english_description
      t.string   :code                                # course code

      t.string   :serial_number                       # optional identifier
      t.string   :url                                 # raw course data url
      t.string   :website_url                         # lecturer offer teaching website url
      t.boolean  :required,             default: false, null: false
      t.boolean  :full_semester,        default: false, null: false

      t.string   :book_isbn
      t.string   :unconfirmed_book_name

      t.datetime :confirmed_at

      t.timestamps null: false
    end
  end
end
