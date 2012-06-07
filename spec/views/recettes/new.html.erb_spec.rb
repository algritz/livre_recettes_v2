require 'spec_helper'

describe "recettes/new" do
  before(:each) do
    assign(:recette, stub_model(Recette,
      :title => "MyString",
      :source => "MyString",
      :author => 1,
      :preparation_time => "MyString",
      :marinade_time => "MyString",
      :cooking_time => "MyString",
      :portion => "MyString",
      :ingredient => "MyText",
      :instruction => "MyText",
      :note => "MyText",
      :tip => "MyText",
      :suggested_meal => "MyString",
      :suggested_wine => "MyText"
    ).as_new_record)
  end

  it "renders new recette form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recettes_path, :method => "post" do
      assert_select "input#recette_title", :name => "recette[title]"
      assert_select "input#recette_source", :name => "recette[source]"
      assert_select "input#recette_author", :name => "recette[author]"
      assert_select "input#recette_preparation_time", :name => "recette[preparation_time]"
      assert_select "input#recette_marinade_time", :name => "recette[marinade_time]"
      assert_select "input#recette_cooking_time", :name => "recette[cooking_time]"
      assert_select "input#recette_portion", :name => "recette[portion]"
      assert_select "textarea#recette_ingredient", :name => "recette[ingredient]"
      assert_select "textarea#recette_instruction", :name => "recette[instruction]"
      assert_select "textarea#recette_note", :name => "recette[note]"
      assert_select "textarea#recette_tip", :name => "recette[tip]"
      assert_select "input#recette_suggested_meal", :name => "recette[suggested_meal]"
      assert_select "textarea#recette_suggested_wine", :name => "recette[suggested_wine]"
    end
  end
end
