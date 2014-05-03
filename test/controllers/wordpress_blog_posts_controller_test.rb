require 'test_helper'

class WordpressBlogPostsControllerTest < ActionController::TestCase
  setup do
    @wordpress_blog_post = wordpress_blog_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wordpress_blog_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wordpress_blog_post" do
    assert_difference('WordpressBlogPost.count') do
      post :create, wordpress_blog_post: { approval_status: @wordpress_blog_post.approval_status, author: @wordpress_blog_post.author, author_notes: @wordpress_blog_post.author_notes, blog_post: @wordpress_blog_post.blog_post, content_platform: @wordpress_blog_post.content_platform, content_type: @wordpress_blog_post.content_type, editor_notes: @wordpress_blog_post.editor_notes, featured_image: @wordpress_blog_post.featured_image, keyword_checklist: @wordpress_blog_post.keyword_checklist, social_snippet: @wordpress_blog_post.social_snippet, user_id: @wordpress_blog_post.user_id }
    end

    assert_redirected_to wordpress_blog_post_path(assigns(:wordpress_blog_post))
  end

  test "should show wordpress_blog_post" do
    get :show, id: @wordpress_blog_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wordpress_blog_post
    assert_response :success
  end

  test "should update wordpress_blog_post" do
    patch :update, id: @wordpress_blog_post, wordpress_blog_post: { approval_status: @wordpress_blog_post.approval_status, author: @wordpress_blog_post.author, author_notes: @wordpress_blog_post.author_notes, blog_post: @wordpress_blog_post.blog_post, content_platform: @wordpress_blog_post.content_platform, content_type: @wordpress_blog_post.content_type, editor_notes: @wordpress_blog_post.editor_notes, featured_image: @wordpress_blog_post.featured_image, keyword_checklist: @wordpress_blog_post.keyword_checklist, social_snippet: @wordpress_blog_post.social_snippet, user_id: @wordpress_blog_post.user_id }
    assert_redirected_to wordpress_blog_post_path(assigns(:wordpress_blog_post))
  end

  test "should destroy wordpress_blog_post" do
    assert_difference('WordpressBlogPost.count', -1) do
      delete :destroy, id: @wordpress_blog_post
    end

    assert_redirected_to wordpress_blog_posts_path
  end
end
