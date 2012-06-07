require 'spec_helper'

describe "recettes/show" do
  before(:each) do
    @recette = assign(:recette, stub_model(Recette,
      :title => "Title",
      :source => "Source",
      :author => 1,
      :preparation_time => "Preparation Time",
      :marinade_time => "Marinade Time",
      :cooking_time => "Cooking Time",
      :portion => "Portion",
      :ingredient => "MyText",
      :instruction => "MyText",
      :note => "MyText",
      :tip => "MyText",
      :suggested_meal => "Suggested Meal",
      :suggested_wine => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Source/)
    rendered.should match(/1/)
    rendered.should match(/Preparation Time/)
    rendered.should match(/Marinade Time/)
    rendered.should match(/Cooking Time/)
    rendered.should match(/Portion/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Suggested Meal/)
    rendered.should match(/MyText/)
  end
end
