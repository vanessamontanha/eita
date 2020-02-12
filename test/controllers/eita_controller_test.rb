require 'test_helper'

class EitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eitum = eita(:one)
  end

  test "should get index" do
    get eita_url
    assert_response :success
  end

  test "should get new" do
    get new_eitum_url
    assert_response :success
  end

  test "should create eitum" do
    assert_difference('Eitum.count') do
      post eita_url, params: { eitum: { description: @eitum.description, title: @eitum.title } }
    end

    assert_redirected_to eitum_url(Eitum.last)
  end

  test "should show eitum" do
    get eitum_url(@eitum)
    assert_response :success
  end

  test "should get edit" do
    get edit_eitum_url(@eitum)
    assert_response :success
  end

  test "should update eitum" do
    patch eitum_url(@eitum), params: { eitum: { description: @eitum.description, title: @eitum.title } }
    assert_redirected_to eitum_url(@eitum)
  end

  test "should destroy eitum" do
    assert_difference('Eitum.count', -1) do
      delete eitum_url(@eitum)
    end

    assert_redirected_to eita_url
  end
end
