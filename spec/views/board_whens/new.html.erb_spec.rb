require 'spec_helper'

describe "board_whens/new" do
  before(:each) do
    assign(:board_when, stub_model(BoardWhen,
      :board => ""
    ).as_new_record)
  end

  it "renders new board_when form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", board_whens_path, "post" do
      assert_select "input#board_when_board[name=?]", "board_when[board]"
    end
  end
end
