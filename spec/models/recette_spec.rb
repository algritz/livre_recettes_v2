require 'spec_helper'

describe Recette do
 it "Should have a title" do
   go "index"
   response.should have_selector("title")
 end
end
