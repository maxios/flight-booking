require "test_helper"

class AeroplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aeroplane = aeroplanes(:one)
  end

  test "should get index" do
    get aeroplanes_url, as: :json
    assert_response :success
  end

  test "should create aeroplane" do
    assert_difference('Aeroplane.count') do
      post aeroplanes_url, params: { aeroplane: { config: @aeroplane.config, name: @aeroplane.name } }, as: :json
    end

    assert_response 201
  end

  test "should show aeroplane" do
    get aeroplane_url(@aeroplane), as: :json
    assert_response :success
  end

  test "should update aeroplane" do
    patch aeroplane_url(@aeroplane), params: { aeroplane: { config: @aeroplane.config, name: @aeroplane.name } }, as: :json
    assert_response 200
  end

  test "should destroy aeroplane" do
    assert_difference('Aeroplane.count', -1) do
      delete aeroplane_url(@aeroplane), as: :json
    end

    assert_response 204
  end
end
