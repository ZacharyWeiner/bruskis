require 'rails_helper'

RSpec.describe "brands/index", type: :view do
  before(:each) do
    assign(:brands, [
      Brand.create!(
        :name => "Name",
        :phone => "Phone",
        :website => "Website",
        :picture => "Picture"
      ),
      Brand.create!(
        :name => "Name",
        :phone => "Phone",
        :website => "Website",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of brands" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
