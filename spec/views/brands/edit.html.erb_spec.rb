require 'rails_helper'

RSpec.describe "brands/edit", type: :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :name => "MyString",
      :phone => "MyString",
      :website => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit brand form" do
    render

    assert_select "form[action=?][method=?]", brand_path(@brand), "post" do

      assert_select "input#brand_name[name=?]", "brand[name]"

      assert_select "input#brand_phone[name=?]", "brand[phone]"

      assert_select "input#brand_website[name=?]", "brand[website]"

      assert_select "input#brand_picture[name=?]", "brand[picture]"
    end
  end
end
