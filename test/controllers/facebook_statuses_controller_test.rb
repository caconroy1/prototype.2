require 'test_helper'

class FacebookStatusesControllerTest < ActionController::TestCase
  setup do
    @facebook_status = facebook_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facebook_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facebook_status" do
    assert_difference('FacebookStatus.count') do
      post :create, facebook_status: { approval_status: @facebook_status.approval_status, author: @facebook_status.author, author_notes: @facebook_status.author_notes, content_platform: @facebook_status.content_platform, content_type: @facebook_status.content_type, editor_notes: @facebook_status.editor_notes, facebook_status: @facebook_status.facebook_status, keyword_checklist: @facebook_status.keyword_checklist, title: @facebook_status.title, user_id: @facebook_status.user_id }
    end

    assert_redirected_to facebook_status_path(assigns(:facebook_status))
  end

  test "should show facebook_status" do
    get :show, id: @facebook_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facebook_status
    assert_response :success
  end

  test "should update facebook_status" do
    patch :update, id: @facebook_status, facebook_status: { approval_status: @facebook_status.approval_status, author: @facebook_status.author, author_notes: @facebook_status.author_notes, content_platform: @facebook_status.content_platform, content_type: @facebook_status.content_type, editor_notes: @facebook_status.editor_notes, facebook_status: @facebook_status.facebook_status, keyword_checklist: @facebook_status.keyword_checklist, title: @facebook_status.title, user_id: @facebook_status.user_id }
    assert_redirected_to facebook_status_path(assigns(:facebook_status))
  end

  test "should destroy facebook_status" do
    assert_difference('FacebookStatus.count', -1) do
      delete :destroy, id: @facebook_status
    end

    assert_redirected_to facebook_statuses_path
  end
end
