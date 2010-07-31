require 'test_helper'

class PostsTest < ActiveSupport::IntegrationCase
  test "I can create a post" do
    visit "/blog"
    click_link "Add new post"
    fill_in "Title", :with => "My first post"
    fill_in "Body", :with => "Content goes here..."
    click_button "Create"

    assert page.has_content?("My first post")
    assert page.has_content?("Content goes here...")
  end
end
