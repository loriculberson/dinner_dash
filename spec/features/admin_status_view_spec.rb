require 'rails_helper'

RSpec.describe "the admin status view", type: :feature do
  before :each do
    @order = FactoryGirl.create(:order)
    #@user = FactoryGirl.create(:user)
    admin = FactoryGirl.create(:admin)
    visit login_path
    fill_in("session_email", with: admin.email)
    fill_in("session_password", with: admin.password)
    click_button 'Sign in'
  end

  it "displays the total number of orders" do
    admin = FactoryGirl.create(:admin)
    order = FactoryGirl.create(:order)
    order2 = FactoryGirl.create(:order)
    expect(Order.count).to eq(3)
  end

  it "displays the state of an order" do
    admin = FactoryGirl.create(:admin)
    order = FactoryGirl.create(:order, status_id: 4)
    status = FactoryGirl.create(:status, id: 4)
    expect(order.status.state).to eq("Ordered")
  end

  it "can update the status when the paid button is clicked" do
    click_link_or_button "Customer Orders"
    click_button "Paid"
    expect(current_path).to eq(admin_orders_path)
  end

  # it "displays order date and time" do
  #  within('table tr:nth-child(2)') do
  #     click_link_or_button( 'Details')
  #   end

end
