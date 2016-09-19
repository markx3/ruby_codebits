require 'test_helper'

class CodebitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codebit = codebits(:one)
  end

  test "should get index" do
    get codebits_url
    assert_response :success
  end

  test "should get new" do
    get new_codebit_url
    assert_response :success
  end

  test "should create codebit" do
    assert_difference('Codebit.count') do
      post codebits_url, params: { codebit: { code: @codebit.code, language: @codebit.language, name: @codebit.name } }
    end

    assert_redirected_to codebit_url(Codebit.last)
  end

  test "should show codebit" do
    get codebit_url(@codebit)
    assert_response :success
  end

  test "should get edit" do
    get edit_codebit_url(@codebit)
    assert_response :success
  end

  test "should update codebit" do
    patch codebit_url(@codebit), params: { codebit: { code: @codebit.code, language: @codebit.language, name: @codebit.name } }
    assert_redirected_to codebit_url(@codebit)
  end

  test "should destroy codebit" do
    assert_difference('Codebit.count', -1) do
      delete codebit_url(@codebit)
    end

    assert_redirected_to codebits_url
  end
end
