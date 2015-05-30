require 'rails_helper'

RSpec.describe "brews/edit", type: :view do
  before(:each) do
    @brew = assign(:brew, Brew.create!(
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

  it "renders the edit brew form" do
    render

    assert_select "form[action=?][method=?]", brew_path(@brew), "post" do

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
