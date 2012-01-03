require 'test_helper'

class NoteImagesControllerTest < ActionController::TestCase
  setup do
    @note_image = note_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:note_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note_image" do
    assert_difference('NoteImage.count') do
      post :create, note_image: @note_image.attributes
    end

    assert_redirected_to note_image_path(assigns(:note_image))
  end

  test "should show note_image" do
    get :show, id: @note_image.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note_image.to_param
    assert_response :success
  end

  test "should update note_image" do
    put :update, id: @note_image.to_param, note_image: @note_image.attributes
    assert_redirected_to note_image_path(assigns(:note_image))
  end

  test "should destroy note_image" do
    assert_difference('NoteImage.count', -1) do
      delete :destroy, id: @note_image.to_param
    end

    assert_redirected_to note_images_path
  end
end
