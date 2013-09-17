require 'spec_helper'

feature "Creating tracking states" do
  before do
    visit new_comment_path
  end

  scenario "Creating a comment" do
    fill_in "comment_text", :with => "Added a comment!"
    click_button "create-comment"
    page.should have_content("Comment has been created.")
  end
  
  scenario "Creating States" do
    fill_in "comment_text", :with => "This is a comment"
    select "open", :from => "State"
    click_button "create_comment"
    page.should have_content("Comment has been created.")
    within(".state") do
      page.should have_content("open")
    end  
  end 
end
