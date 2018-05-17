require 'test_helper'

class ContasAPagarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contas_a_pagar = contas_a_pagars(:one)
  end

  test "should get index" do
    get contas_a_pagars_url
    assert_response :success
  end

  test "should get new" do
    get new_contas_a_pagar_url
    assert_response :success
  end

  test "should create contas_a_pagar" do
    assert_difference('ContasAPagar.count') do
      post contas_a_pagars_url, params: { contas_a_pagar: { data_lancamento: @contas_a_pagar.data_lancamento, descricao: @contas_a_pagar.descricao, valor: @contas_a_pagar.valor } }
    end

    assert_redirected_to contas_a_pagar_url(ContasAPagar.last)
  end

  test "should show contas_a_pagar" do
    get contas_a_pagar_url(@contas_a_pagar)
    assert_response :success
  end

  test "should get edit" do
    get edit_contas_a_pagar_url(@contas_a_pagar)
    assert_response :success
  end

  test "should update contas_a_pagar" do
    patch contas_a_pagar_url(@contas_a_pagar), params: { contas_a_pagar: { data_lancamento: @contas_a_pagar.data_lancamento, descricao: @contas_a_pagar.descricao, valor: @contas_a_pagar.valor } }
    assert_redirected_to contas_a_pagar_url(@contas_a_pagar)
  end

  test "should destroy contas_a_pagar" do
    assert_difference('ContasAPagar.count', -1) do
      delete contas_a_pagar_url(@contas_a_pagar)
    end

    assert_redirected_to contas_a_pagars_url
  end
end
