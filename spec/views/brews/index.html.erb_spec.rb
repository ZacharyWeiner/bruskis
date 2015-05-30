require 'rails_helper'

RSpec.describe "brews/index", type: :view do
  before(:each) do
    assign(:brews, [
      Brew.create!(
        :type => "Type",
        :grams_coffee => "",
        :ounces_water => "",
        :duration => "",
        :duration_type => "Duration Type",
        :roast => nil,
        :description => "Description",
        :rating => ""
      ),
      Brew.create!(
        :type => "Type",
        :grams_coffee => "",
        :ounces_water => "",
        :duration => "",
        :duration_type => "Duration Type",
        :roast => nil,
        :description => "Description",
        :rating => ""
      )
    ])
  end

  it "renders a list of brews" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Duration Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
