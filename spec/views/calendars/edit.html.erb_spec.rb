require 'spec_helper'

describe "calendars/edit" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar,
      :holiday => false
    ))
  end

  it "renders the edit calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendar_path(@calendar), "post" do
      assert_select "input#calendar_holiday[name=?]", "calendar[holiday]"
    end
  end
end
