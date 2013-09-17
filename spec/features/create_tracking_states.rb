require 'spec_helper'

feature "Creating tracking states" do
  before do
    visit comments_path
  end

  scenario "Creating a comment" do
    fill_in "comment_text", :with => "Added a comment!"
    click_button "create-comment"
    page.should have_content("Comment has been created.")
      within("#comments") do
        page.should have_content("Added a comment!")
      end
  end
  scenario "Creating an invalid comment" do
      click_button "create-comment"
      page.should have_content("Comment has not been created.")
  end 
end
