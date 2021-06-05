require "test_helper"

class ClassListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_list = class_lists(:one)
  end

  test "should get index" do
    get class_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_class_list_url
    assert_response :success
  end

  test "should create class_list" do
    assert_difference('ClassList.count') do
      post class_lists_url, params: { class_list: { class_length: @class_list.class_length, class_type: @class_list.class_type, course: @class_list.course, course_cap: @class_list.course_cap, day: @class_list.day, in_schedule: @class_list.in_schedule, instructor: @class_list.instructor, location: @class_list.location, section: @class_list.section, short_name: @class_list.short_name, start_time: @class_list.start_time, view_in_schedule: @class_list.view_in_schedule } }
    end

    assert_redirected_to class_list_url(ClassList.last)
  end

  test "should show class_list" do
    get class_list_url(@class_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_list_url(@class_list)
    assert_response :success
  end

  test "should update class_list" do
    patch class_list_url(@class_list), params: { class_list: { class_length: @class_list.class_length, class_type: @class_list.class_type, course: @class_list.course, course_cap: @class_list.course_cap, day: @class_list.day, in_schedule: @class_list.in_schedule, instructor: @class_list.instructor, location: @class_list.location, section: @class_list.section, short_name: @class_list.short_name, start_time: @class_list.start_time, view_in_schedule: @class_list.view_in_schedule } }
    assert_redirected_to class_list_url(@class_list)
  end

  test "should destroy class_list" do
    assert_difference('ClassList.count', -1) do
      delete class_list_url(@class_list)
    end

    assert_redirected_to class_lists_url
  end
end
