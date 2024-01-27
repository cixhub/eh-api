require 'test_helper'

class Api::V1::EventInvitationsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_v1_event_invitations_index_url
    assert_response :success
  end

  test 'should get show' do
    get api_v1_event_invitations_show_url
    assert_response :success
  end

  test 'should get create' do
    get api_v1_event_invitations_create_url
    assert_response :success
  end

  test 'should get update' do
    get api_v1_event_invitations_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get api_v1_event_invitations_destroy_url
    assert_response :success
  end
end
