require 'spec_helper'

describe "schedules/new" do
  before(:each) do
    assign(:schedule, stub_model(Schedule,
      :user => "",
      :board_when => "",
      :free => false
    ).as_new_record)
  end

  it "renders new schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", schedules_path, "post" do
      assert_select "input#schedule_user[name=?]", "schedule[user]"
      assert_select "input#schedule_board_when[name=?]", "schedule[board_when]"
      assert_select "input#schedule_free[name=?]", "schedule[free]"
    end
  end
end
