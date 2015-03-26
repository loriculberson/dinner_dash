require 'rails_helper'

describe "the default users order view", type: :feature do

  before :each do
    @status = FactoryGirl.create(:status)
    @item = FactoryGirl.create(:item, id:1 )
    @item2 = FactoryGirl.create(:item2, id:2 )
    @order = FactoryGirl.create(:order, status: @status, id: 1)
    @order_item = FactoryGirl.create(:order_item, item_id: @item.id, order_id: @order.id)
    visit login_path
    fill_in("session_email", with: "paullorijgu@gmail.com")
    fill_in("session_password", with: "gu")
    click_button 'Sign in'
    visit orders_path
  end

  it "displays all the orders on the index page" do
    expect(page).to have_content("My Orders")
  end

  it "displays links for each individual order if there are orders" do
    expect(page).to have_content("Details")
  end

  it "shows each orders indivdual information" do
    within('table tr:nth-child(2)') do
      click_link_or_button("Details")
    end
      expect(page).to have_content("Details for Order ID:")
  end

  it "displays the order status" do
    expect(page).to have_content(@order.order_status)
  end

  it "displays order date" do
    click_link_or_button( 'Details')
    expect(page).to have_content(@order.date)
  end
end
