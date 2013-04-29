require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule,
        :user => "",
        :board_when => "",
        :free => false
      ),
      stub_model(Schedule,
        :user => "",
        :board_when => "",
        :free => false
      )
    ])
  end

  it "renders a list of schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
