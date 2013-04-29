require 'spec_helper'

describe "board_whens/edit" do
  before(:each) do
    @board_when = assign(:board_when, stub_model(BoardWhen,
      :board => ""
    ))
  end

  it "renders the edit board_when form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", board_when_path(@board_when), "post" do
      assert_select "input#board_when_board[name=?]", "board_when[board]"
    end
  end
end
