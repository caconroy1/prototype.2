require 'test_helper'

class InstagramImagesControllerTest < ActionController::TestCase
  setup do
    @instagram_image = instagram_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instagram_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instagram_image" do
    assert_difference('InstagramImage.count') do
      post :create, instagram_image: { approval_status: @instagram_image.approval_status, associated_text: @instagram_image.associated_text, author: @instagram_image.author, author_notes: @instagram_image.author_notes, content_platform: @instagram_image.content_platform, content_type: @instagram_image.content_type, editor_notes: @instagram_image.editor_notes, image: @instagram_image.image, keyword_checklist: @instagram_image.keyword_checklist, social_snippet: @instagram_image.social_snippet, title: @instagram_image.title, user_id: @instagram_image.user_id }
    end

    assert_redirected_to instagram_image_path(assigns(:instagram_image))
  end

  test "should show instagram_image" do
    get :show, id: @instagram_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instagram_image
    assert_response :success
  end

  test "should update instagram_image" do
    patch :update, id: @instagram_image, instagram_image: { approval_status: @instagram_image.approval_status, associated_text: @instagram_image.associated_text, author: @instagram_image.author, author_notes: @instagram_image.author_notes, content_platform: @instagram_image.content_platform, content_type: @instagram_image.content_type, editor_notes: @instagram_image.editor_notes, image: @instagram_image.image, keyword_checklist: @instagram_image.keyword_checklist, social_snippet: @instagram_image.social_snippet, title: @instagram_image.title, user_id: @instagram_image.user_id }
    assert_redirected_to instagram_image_path(assigns(:instagram_image))
  end

  test "should destroy instagram_image" do
    assert_difference('InstagramImage.count', -1) do
      delete :destroy, id: @instagram_image
    end

    assert_redirected_to instagram_images_path
  end
end
