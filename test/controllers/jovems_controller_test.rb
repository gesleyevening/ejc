require 'test_helper'

class JovemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jovem = jovems(:one)
  end

  test "should get index" do
    get jovems_url
    assert_response :success
  end

  test "should get new" do
    get new_jovem_url
    assert_response :success
  end

  test "should create jovem" do
    assert_difference('Jovem.count') do
      post jovems_url, params: { jovem: { ano_inicio: @jovem.ano_inicio, celular: @jovem.celular, data_nascimento: @jovem.data_nascimento, email: @jovem.email, endereco: @jovem.endereco, nome: @jovem.nome, observacao: @jovem.observacao, telefone: @jovem.telefone } }
    end

    assert_redirected_to jovem_url(Jovem.last)
  end

  test "should show jovem" do
    get jovem_url(@jovem)
    assert_response :success
  end

  test "should get edit" do
    get edit_jovem_url(@jovem)
    assert_response :success
  end

  test "should update jovem" do
    patch jovem_url(@jovem), params: { jovem: { ano_inicio: @jovem.ano_inicio, celular: @jovem.celular, data_nascimento: @jovem.data_nascimento, email: @jovem.email, endereco: @jovem.endereco, nome: @jovem.nome, observacao: @jovem.observacao, telefone: @jovem.telefone } }
    assert_redirected_to jovem_url(@jovem)
  end

  test "should destroy jovem" do
    assert_difference('Jovem.count', -1) do
      delete jovem_url(@jovem)
    end

    assert_redirected_to jovems_url
  end
end
