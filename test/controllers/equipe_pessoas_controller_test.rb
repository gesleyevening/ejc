require 'test_helper'

class EquipePessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipe_pessoa = equipe_pessoas(:one)
  end

  test "should get index" do
    get equipe_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_equipe_pessoa_url
    assert_response :success
  end

  test "should create equipe_pessoa" do
    assert_difference('EquipePessoa.count') do
      post equipe_pessoas_url, params: { equipe_pessoa: { equipe_id: @equipe_pessoa.equipe_id, pessoa_id: @equipe_pessoa.pessoa_id } }
    end

    assert_redirected_to equipe_pessoa_url(EquipePessoa.last)
  end

  test "should show equipe_pessoa" do
    get equipe_pessoa_url(@equipe_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipe_pessoa_url(@equipe_pessoa)
    assert_response :success
  end

  test "should update equipe_pessoa" do
    patch equipe_pessoa_url(@equipe_pessoa), params: { equipe_pessoa: { equipe_id: @equipe_pessoa.equipe_id, pessoa_id: @equipe_pessoa.pessoa_id } }
    assert_redirected_to equipe_pessoa_url(@equipe_pessoa)
  end

  test "should destroy equipe_pessoa" do
    assert_difference('EquipePessoa.count', -1) do
      delete equipe_pessoa_url(@equipe_pessoa)
    end

    assert_redirected_to equipe_pessoas_url
  end
end
