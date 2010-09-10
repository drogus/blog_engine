require 'test_helper'

class PostsIntegrationTest < ActiveSupport::IntegrationCase
  test "I can see blog posts on blog's root page" do
    Factory.create(:post, :title => "Awesome!", :body => "All work and no fun makes Jack a dull boy")

    visit blog.root_path
    assert page.has_content?("Awesome!")
    assert page.has_content?("All work and no fun makes Jack a dull boy")
  end

  test "I can create a post" do
    visit blog.root_path
    click_link "Add new post"
    fill_in "Title", :with => "My first post"
    fill_in "Body", :with => "Content goes here..."
    click_button "Create"

    assert page.has_content?("My first post")
    assert page.has_content?("Content goes here...")
  end
end
