require 'rails_helper'

RSpec.describe "brews/show", type: :view do
  before(:each) do
    @brew = assign(:brew, Brew.create!(
      :type => "Type",
      :grams_coffee => "",
      :ounces_water => "",
      :duration => "",
      :duration_type => "Duration Type",
      :roast => nil,
      :description => "Description",
      :rating => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Duration Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
