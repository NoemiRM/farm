require 'test_helper'

class GrowerFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grower_field = grower_fields(:one)
  end

  test "should get index" do
    get grower_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_grower_field_url
    assert_response :success
  end

  test "should create grower_field" do
    assert_difference('GrowerField.count') do
      post grower_fields_url, params: { grower_field: { assign_date: @grower_field.assign_date, field_id: @grower_field.field_id, grower_id: @grower_field.grower_id } }
    end

    assert_redirected_to grower_field_url(GrowerField.last)
  end

  test "should show grower_field" do
    get grower_field_url(@grower_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_grower_field_url(@grower_field)
    assert_response :success
  end

  test "should update grower_field" do
    patch grower_field_url(@grower_field), params: { grower_field: { assign_date: @grower_field.assign_date, field_id: @grower_field.field_id, grower_id: @grower_field.grower_id } }
    assert_redirected_to grower_field_url(@grower_field)
  end

  test "should destroy grower_field" do
    assert_difference('GrowerField.count', -1) do
      delete grower_field_url(@grower_field)
    end

    assert_redirected_to grower_fields_url
  end
end
