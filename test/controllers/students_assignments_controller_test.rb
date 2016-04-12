require 'test_helper'

class StudentsAssignmentsControllerTest < ActionController::TestCase
  setup do
    @students_assignment = students_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create students_assignment" do
    assert_difference('StudentsAssignment.count') do
      post :create, students_assignment: { assignment_id: @students_assignment.assignment_id, student_id: @students_assignment.student_id }
    end

    assert_redirected_to students_assignment_path(assigns(:students_assignment))
  end

  test "should show students_assignment" do
    get :show, id: @students_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @students_assignment
    assert_response :success
  end

  test "should update students_assignment" do
    patch :update, id: @students_assignment, students_assignment: { assignment_id: @students_assignment.assignment_id, student_id: @students_assignment.student_id }
    assert_redirected_to students_assignment_path(assigns(:students_assignment))
  end

  test "should destroy students_assignment" do
    assert_difference('StudentsAssignment.count', -1) do
      delete :destroy, id: @students_assignment
    end

    assert_redirected_to students_assignments_path
  end
end
