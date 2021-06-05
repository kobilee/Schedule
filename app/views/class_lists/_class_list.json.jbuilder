json.extract! class_list, :id, :course, :class_type, :short_name, :instructor, :day, :start_time, :class_length, :section, :location, :course_cap, :view_in_schedule, :in_schedule, :created_at, :updated_at
json.url class_list_url(class_list, format: :json)
