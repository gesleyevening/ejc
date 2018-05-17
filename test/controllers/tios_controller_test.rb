require 'test_helper'

class TiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tio = tios(:one)
  end

  test "should get index" do
    get tios_url
    assert_response :success
  end

  test "should get new" do
    get new_tio_url
    assert_response :success
  end

  test "should create tio" do
    assert_difference('Tio.count') do
      post tios_url, params: { tio: { ano_inicio: @tio.ano_inicio, celular: @tio.celular, data_nascimento: @tio.data_nascimento, email: @tio.email, endereco: @tio.endereco, nome: @tio.nome, observacao: @tio.observacao, telefone: @tio.telefone } }
    end

    assert_redirected_to tio_url(Tio.last)
  end

  test "should show tio" do
    get tio_url(@tio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tio_url(@tio)
    assert_response :success
  end

  test "should update tio" do
    patch tio_url(@tio), params: { tio: { ano_inicio: @tio.ano_inicio, celular: @tio.celular, data_nascimento: @tio.data_nascimento, email: @tio.email, endereco: @tio.endereco, nome: @tio.nome, observacao: @tio.observacao, telefone: @tio.telefone } }
    assert_redirected_to tio_url(@tio)
  end

  test "should destroy tio" do
    assert_difference('Tio.count', -1) do
      delete tio_url(@tio)
    end

    assert_redirected_to tios_url
  end
end
