require 'rails_helper'

RSpec.describe "brands/new", type: :view do
  before(:each) do
    assign(:brand, Brand.new(
      :name => "MyString",
      :phone => "MyString",
      :website => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new brand form" do
    render

    assert_select "form[action=?][method=?]", brands_path, "post" do

      assert_select "input#brand_name[name=?]", "brand[name]"

      assert_select "input#brand_phone[name=?]", "brand[phone]"

      assert_select "input#brand_website[name=?]", "brand[website]"

      assert_select "input#brand_picture[name=?]", "brand[picture]"
    end
  end
end
