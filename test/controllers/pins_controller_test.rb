require 'test_helper'

class PinsControllerTest < ActionController::TestCase
  setup do
    @pin = pins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pin" do
    assert_difference('Pin.count') do
      post :create, pin: { approval_status: @pin.approval_status, author: @pin.author, author_notes: @pin.author_notes, content_platform: @pin.content_platform, content_type: @pin.content_type, description: @pin.description, editor_notes: @pin.editor_notes, image: @pin.image, keyword_checklist: @pin.keyword_checklist, social_snippet: @pin.social_snippet, title: @pin.title, url: @pin.url, user_id: @pin.user_id }
    end

    assert_redirected_to pin_path(assigns(:pin))
  end

  test "should show pin" do
    get :show, id: @pin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pin
    assert_response :success
  end

  test "should update pin" do
    patch :update, id: @pin, pin: { approval_status: @pin.approval_status, author: @pin.author, author_notes: @pin.author_notes, content_platform: @pin.content_platform, content_type: @pin.content_type, description: @pin.description, editor_notes: @pin.editor_notes, image: @pin.image, keyword_checklist: @pin.keyword_checklist, social_snippet: @pin.social_snippet, title: @pin.title, url: @pin.url, user_id: @pin.user_id }
    assert_redirected_to pin_path(assigns(:pin))
  end

  test "should destroy pin" do
    assert_difference('Pin.count', -1) do
      delete :destroy, id: @pin
    end

    assert_redirected_to pins_path
  end
end
