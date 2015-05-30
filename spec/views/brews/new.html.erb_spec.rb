require 'rails_helper'

RSpec.describe "brews/new", type: :view do
  before(:each) do
    assign(:brew, Brew.new(
      :type => "",
      :grams_coffee => "",
      :ounces_water => "",
      :duration => "",
      :duration_type => "MyString",
      :roast => nil,
      :description => "MyString",
      :rating => ""
    ))
  end

  it "renders new brew form" do
    render

    assert_select "form[action=?][method=?]", brews_path, "post" do

      assert_select "input#brew_type[name=?]", "brew[type]"

      assert_select "input#brew_grams_coffee[name=?]", "brew[grams_coffee]"

      assert_select "input#brew_ounces_water[name=?]", "brew[ounces_water]"

      assert_select "input#brew_duration[name=?]", "brew[duration]"

      assert_select "input#brew_duration_type[name=?]", "brew[duration_type]"

      assert_select "input#brew_roast_id[name=?]", "brew[roast_id]"

      assert_select "input#brew_description[name=?]", "brew[description]"

      assert_select "input#brew_rating[name=?]", "brew[rating]"
    end
  end
end
