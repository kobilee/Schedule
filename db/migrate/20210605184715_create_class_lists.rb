class CreateClassLists < ActiveRecord::Migration[6.1]
  def change
    create_table :class_lists do |t|
      t.string :course
      t.string :class_type
      t.string :short_name
      t.string :instructor
      t.string :day
      t.time :start_time
      t.integer :class_length
      t.boolean :section
      t.string :location
      t.integer :course_cap
      t.boolean :view_in_schedule
      t.boolean :in_schedule

      t.timestamps
    end
  end
end
