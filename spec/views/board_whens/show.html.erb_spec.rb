require 'spec_helper'

describe "board_whens/show" do
  before(:each) do
    @board_when = assign(:board_when, stub_model(BoardWhen,
      :board => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
