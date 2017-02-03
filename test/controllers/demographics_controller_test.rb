require 'test_helper'

class DemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demographic = demographics(:one)
  end

  test "should get index" do
    get demographics_url, as: :json
    assert_response :success
  end

  test "should create demographic" do
    assert_difference('Demographic.count') do
      post demographics_url, params: { demographic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show demographic" do
    get demographic_url(@demographic), as: :json
    assert_response :success
  end

  test "should update demographic" do
    patch demographic_url(@demographic), params: { demographic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy demographic" do
    assert_difference('Demographic.count', -1) do
      delete demographic_url(@demographic), as: :json
    end

    assert_response 204
  end
end
