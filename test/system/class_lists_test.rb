require "application_system_test_case"

class ClassListsTest < ApplicationSystemTestCase
  setup do
    @class_list = class_lists(:one)
  end

  test "visiting the index" do
    visit class_lists_url
    assert_selector "h1", text: "Class Lists"
  end

  test "creating a Class list" do
    visit class_lists_url
    click_on "New Class List"

    fill_in "Class length", with: @class_list.class_length
    fill_in "Class type", with: @class_list.class_type
    fill_in "Course", with: @class_list.course
    fill_in "Course cap", with: @class_list.course_cap
    fill_in "Day", with: @class_list.day
    check "In schedule" if @class_list.in_schedule
    fill_in "Instructor", with: @class_list.instructor
    fill_in "Location", with: @class_list.location
    check "Section" if @class_list.section
    fill_in "Short name", with: @class_list.short_name
    fill_in "Start time", with: @class_list.start_time
    check "View in schedule" if @class_list.view_in_schedule
    click_on "Create Class list"

    assert_text "Class list was successfully created"
    click_on "Back"
  end

  test "updating a Class list" do
    visit class_lists_url
    click_on "Edit", match: :first

    fill_in "Class length", with: @class_list.class_length
    fill_in "Class type", with: @class_list.class_type
    fill_in "Course", with: @class_list.course
    fill_in "Course cap", with: @class_list.course_cap
    fill_in "Day", with: @class_list.day
    check "In schedule" if @class_list.in_schedule
    fill_in "Instructor", with: @class_list.instructor
    fill_in "Location", with: @class_list.location
    check "Section" if @class_list.section
    fill_in "Short name", with: @class_list.short_name
    fill_in "Start time", with: @class_list.start_time
    check "View in schedule" if @class_list.view_in_schedule
    click_on "Update Class list"

    assert_text "Class list was successfully updated"
    click_on "Back"
  end

  test "destroying a Class list" do
    visit class_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class list was successfully destroyed"
  end
end
