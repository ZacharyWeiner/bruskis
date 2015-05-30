require 'rails_helper'

RSpec.describe "roasts/index", type: :view do
  before(:each) do
    assign(:roasts, [
      Roast.create!(
        :name => "Name",
        :type => "Type",
        :description => "Description",
        :picture => "Picture",
        :brand => nil
      ),
      Roast.create!(
        :name => "Name",
        :type => "Type",
        :description => "Description",
        :picture => "Picture",
        :brand => nil
      )
    ])
  end

  it "renders a list of roasts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
