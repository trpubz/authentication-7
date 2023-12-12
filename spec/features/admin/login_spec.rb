require 'rails_helper'

RSpec.describe 'admin login' do
  # As an admin user,
  # When I log in, I am taken to my admin dashboard page.
  describe "happy path" do
    it "logs in as admin and goes to dashboard" do
      admin = User.create!(username: "blah@net", password: "test", role: 2)

      visit login_path
      fill_in :username, with: admin.username
      fill_in :password, with: admin.password
      click_button "Log In"

      expect(current_path).to eq admin_dashboard_path
    end
  end
end