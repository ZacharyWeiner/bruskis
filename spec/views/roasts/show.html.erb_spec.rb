require 'rails_helper'

RSpec.describe "roasts/show", type: :view do
  before(:each) do
    @roast = assign(:roast, Roast.create!(
      :name => "Name",
      :type => "Type",
      :description => "Description",
      :picture => "Picture",
      :brand => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(//)
  end
end
