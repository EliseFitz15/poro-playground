require "rails_helper"

feature "adds a product" do
  scenario "adds valid information" do
    visit new_poro_path

    fill_in "PORO Name", with: "Cal"
    fill_in "PORO Owner", with: "Jarvis"
    fill_in "Description", with: "Calculates things for us"

    attach_file "Add PORO Photo", "#{Rails.root}/spec/support/images/photo.jpg"
    click_on "Add PORO"

    expect(page).to have_content "Cal"
    expect(page).to have_content "Jarvis"
    expect(page).to have_content "Calculates things for us"

    expect(page).to have_css("img[src*='photo.jpg']")
  end
end
