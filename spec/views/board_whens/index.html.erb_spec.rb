require 'spec_helper'

describe "board_whens/index" do
  before(:each) do
    assign(:board_whens, [
      stub_model(BoardWhen,
        :board => ""
      ),
      stub_model(BoardWhen,
        :board => ""
      )
    ])
  end

  it "renders a list of board_whens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
