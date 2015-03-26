require 'rails_helper'

RSpec.describe "the admins order view", type: :feature do
  before :each do
    @admin = FactoryGirl.create(:admin)
    @status = FactoryGirl.create(:status)
    @user = FactoryGirl.create(:user)
    @item = FactoryGirl.create(:item, id:1 )
    @item2 = FactoryGirl.create(:item2, id:2 )
    @order = FactoryGirl.create(:order, user_id: @user.id, status_id: @status.id)
    @order_item = FactoryGirl.create(:order_item, item_id: @item.id, order_id: @order.id)
    visit login_path
    fill_in("session_email", with: @admin.email)
    fill_in("session_password", with: @admin.password)
    click_button 'Sign in'
    click_link_or_button "List Orders"
  end

  it "displays all the orders on the admin orders index page" do
    expect(page).to have_content("Admin Orders")
  end

  it "shows each orders indivdual information" do
    within('table tr:nth-child(2)') do
      click_link_or_button("Details")
    end
      expect(page).to have_content("Details for Order ID:")
  end

  it "displays the order status" do
    expect(page).to have_content("Status")
  end

  it "displays order date and time" do
   within('table tr:nth-child(2)') do
      click_link_or_button( 'Details')
    end
      expect(page).to have_content("Date")
  end

end
