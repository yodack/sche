require 'spec_helper'

describe "BoardWhens" do
  describe "GET /board_whens" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get board_whens_path
      response.status.should be(200)
    end
  end
end
