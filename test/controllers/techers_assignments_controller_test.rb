require 'test_helper'

class TechersAssignmentsControllerTest < ActionController::TestCase
  setup do
    @techers_assignment = techers_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techers_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techers_assignment" do
    assert_difference('TechersAssignment.count') do
      post :create, techers_assignment: { assignment_id: @techers_assignment.assignment_id, teacher_id: @techers_assignment.teacher_id }
    end

    assert_redirected_to techers_assignment_path(assigns(:techers_assignment))
  end

  test "should show techers_assignment" do
    get :show, id: @techers_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techers_assignment
    assert_response :success
  end

  test "should update techers_assignment" do
    patch :update, id: @techers_assignment, techers_assignment: { assignment_id: @techers_assignment.assignment_id, teacher_id: @techers_assignment.teacher_id }
    assert_redirected_to techers_assignment_path(assigns(:techers_assignment))
  end

  test "should destroy techers_assignment" do
    assert_difference('TechersAssignment.count', -1) do
      delete :destroy, id: @techers_assignment
    end

    assert_redirected_to techers_assignments_path
  end
end
