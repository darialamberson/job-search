require 'test_helper'

class ExternalLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_link = external_links(:one)
  end

  test "should get index" do
    get external_links_url, as: :json
    assert_response :success
  end

  test "should create external_link" do
    assert_difference('ExternalLink.count') do
      post external_links_url, params: { external_link: { description: @external_link.description, listing_id: @external_link.listing_id, url: @external_link.url } }, as: :json
    end

    assert_response 201
  end

  test "should show external_link" do
    get external_link_url(@external_link), as: :json
    assert_response :success
  end

  test "should update external_link" do
    patch external_link_url(@external_link), params: { external_link: { description: @external_link.description, listing_id: @external_link.listing_id, url: @external_link.url } }, as: :json
    assert_response 200
  end

  test "should destroy external_link" do
    assert_difference('ExternalLink.count', -1) do
      delete external_link_url(@external_link), as: :json
    end

    assert_response 204
  end
end
