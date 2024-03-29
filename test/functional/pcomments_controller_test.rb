require 'test_helper'

class PcommentsControllerTest < ActionController::TestCase
  setup do
    @pcomment = pcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pcomment" do
    assert_difference('Pcomment.count') do
      post :create, pcomment: { author: @pcomment.author, authorid: @pcomment.authorid, authorprovider: @pcomment.authorprovider, content: @pcomment.content, createdat: @pcomment.createdat, post_id: @pcomment.post_id }
    end

    assert_redirected_to pcomment_path(assigns(:pcomment))
  end

  test "should show pcomment" do
    get :show, id: @pcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pcomment
    assert_response :success
  end

  test "should update pcomment" do
    put :update, id: @pcomment, pcomment: { author: @pcomment.author, authorid: @pcomment.authorid, authorprovider: @pcomment.authorprovider, content: @pcomment.content, createdat: @pcomment.createdat, post_id: @pcomment.post_id }
    assert_redirected_to pcomment_path(assigns(:pcomment))
  end

  test "should destroy pcomment" do
    assert_difference('Pcomment.count', -1) do
      delete :destroy, id: @pcomment
    end

    assert_redirected_to pcomments_path
  end
end
