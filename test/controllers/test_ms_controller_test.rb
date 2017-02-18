require 'test_helper'

class TestMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_m = test_ms(:one)
  end

  test "should get index" do
    get test_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_test_m_url
    assert_response :success
  end

  test "should create test_m" do
    assert_difference('TestM.count') do
      post test_ms_url, params: { test_m: { comment: @test_m.comment, title: @test_m.title } }
    end

    assert_redirected_to test_m_url(TestM.last)
  end

  test "should show test_m" do
    get test_m_url(@test_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_m_url(@test_m)
    assert_response :success
  end

  test "should update test_m" do
    patch test_m_url(@test_m), params: { test_m: { comment: @test_m.comment, title: @test_m.title } }
    assert_redirected_to test_m_url(@test_m)
  end

  test "should destroy test_m" do
    assert_difference('TestM.count', -1) do
      delete test_m_url(@test_m)
    end

    assert_redirected_to test_ms_url
  end
end
