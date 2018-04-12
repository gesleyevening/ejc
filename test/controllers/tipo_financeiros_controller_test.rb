require 'test_helper'

class TipoFinanceirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_financeiro = tipo_financeiros(:one)
  end

  test "should get index" do
    get tipo_financeiros_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_financeiro_url
    assert_response :success
  end

  test "should create tipo_financeiro" do
    assert_difference('TipoFinanceiro.count') do
      post tipo_financeiros_url, params: { tipo_financeiro: { des_tipo_financeiro: @tipo_financeiro.des_tipo_financeiro } }
    end

    assert_redirected_to tipo_financeiro_url(TipoFinanceiro.last)
  end

  test "should show tipo_financeiro" do
    get tipo_financeiro_url(@tipo_financeiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_financeiro_url(@tipo_financeiro)
    assert_response :success
  end

  test "should update tipo_financeiro" do
    patch tipo_financeiro_url(@tipo_financeiro), params: { tipo_financeiro: { des_tipo_financeiro: @tipo_financeiro.des_tipo_financeiro } }
    assert_redirected_to tipo_financeiro_url(@tipo_financeiro)
  end

  test "should destroy tipo_financeiro" do
    assert_difference('TipoFinanceiro.count', -1) do
      delete tipo_financeiro_url(@tipo_financeiro)
    end

    assert_redirected_to tipo_financeiros_url
  end
end
