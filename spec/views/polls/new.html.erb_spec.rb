require 'spec_helper'

describe "polls/new" do
  before(:each) do
    assign(:poll, stub_model(Poll,
      :title => "MyString",
      :question => "MyString"
    ).as_new_record)
  end

  it "renders new poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", polls_path, "post" do
      assert_select "input#poll_title[name=?]", "poll[title]"
      assert_select "input#poll_question[name=?]", "poll[question]"
    end
  end
end
