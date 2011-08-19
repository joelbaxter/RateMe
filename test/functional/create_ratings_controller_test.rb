require 'test_helper'

class CreateRatingsControllerTest < ActionController::TestCase
  setup do
    @create_rating = create_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_rating" do
    assert_difference('CreateRating.count') do
      post :create, :create_rating => @create_rating.attributes
    end

    assert_redirected_to create_rating_path(assigns(:create_rating))
  end

  test "should show create_rating" do
    get :show, :id => @create_rating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @create_rating.to_param
    assert_response :success
  end

  test "should update create_rating" do
    put :update, :id => @create_rating.to_param, :create_rating => @create_rating.attributes
    assert_redirected_to create_rating_path(assigns(:create_rating))
  end

  test "should destroy create_rating" do
    assert_difference('CreateRating.count', -1) do
      delete :destroy, :id => @create_rating.to_param
    end

    assert_redirected_to create_ratings_path
  end
end
