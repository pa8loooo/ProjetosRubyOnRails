require "test_helper"

class EmprestimoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emprestimo_index_url
    assert_response :success
  end

  test "should get show" do
    get emprestimo_show_url
    assert_response :success
  end

  test "should get new" do
    get emprestimo_new_url
    assert_response :success
  end

  test "should get create" do
    get emprestimo_create_url
    assert_response :success
  end

  test "should get edit" do
    get emprestimo_edit_url
    assert_response :success
  end

  test "should get update" do
    get emprestimo_update_url
    assert_response :success
  end

  test "should get destroy" do
    get emprestimo_destroy_url
    assert_response :success
  end
end
