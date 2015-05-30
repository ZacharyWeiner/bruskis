require 'rails_helper'

RSpec.describe "brands/show", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :name => "Name",
      :phone => "Phone",
      :website => "Website",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Picture/)
  end
end
