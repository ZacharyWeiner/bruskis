require 'rails_helper'

RSpec.describe "roasts/new", type: :view do
  before(:each) do
    assign(:roast, Roast.new(
      :name => "MyString",
      :type => "",
      :description => "MyString",
      :picture => "MyString",
      :brand => nil
    ))
  end

  it "renders new roast form" do
    render

    assert_select "form[action=?][method=?]", roasts_path, "post" do

      assert_select "input#roast_name[name=?]", "roast[name]"

      assert_select "input#roast_type[name=?]", "roast[type]"

      assert_select "input#roast_description[name=?]", "roast[description]"

      assert_select "input#roast_picture[name=?]", "roast[picture]"

      assert_select "input#roast_brand_id[name=?]", "roast[brand_id]"
    end
  end
end
