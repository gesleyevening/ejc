require 'test_helper'

class FinanceirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financeiro = financeiros(:one)
  end

  test "should get index" do
    get financeiros_url
    assert_response :success
  end

  test "should get new" do
    get new_financeiro_url
    assert_response :success
  end

  test "should create financeiro" do
    assert_difference('Financeiro.count') do
      post financeiros_url, params: { financeiro: { descricao: @financeiro.descricao, dta_lancamento: @financeiro.dta_lancamento, tipo_financeiro_id: @financeiro.tipo_financeiro_id, valor: @financeiro.valor } }
    end

    assert_redirected_to financeiro_url(Financeiro.last)
  end

  test "should show financeiro" do
    get financeiro_url(@financeiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_financeiro_url(@financeiro)
    assert_response :success
  end

  test "should update financeiro" do
    patch financeiro_url(@financeiro), params: { financeiro: { descricao: @financeiro.descricao, dta_lancamento: @financeiro.dta_lancamento, tipo_financeiro_id: @financeiro.tipo_financeiro_id, valor: @financeiro.valor } }
    assert_redirected_to financeiro_url(@financeiro)
  end

  test "should destroy financeiro" do
    assert_difference('Financeiro.count', -1) do
      delete financeiro_url(@financeiro)
    end

    assert_redirected_to financeiros_url
  end
end
