require 'spec_helper'

describe "recettes/index" do
  before(:each) do
    assign(:recettes, [
      stub_model(Recette,
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
      ),
      stub_model(Recette,
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
      )
    ])
  end

  it "renders a list of recettes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Preparation Time".to_s, :count => 2
    assert_select "tr>td", :text => "Marinade Time".to_s, :count => 2
    assert_select "tr>td", :text => "Cooking Time".to_s, :count => 2
    assert_select "tr>td", :text => "Portion".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Suggested Meal".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
