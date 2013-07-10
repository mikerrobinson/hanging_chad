require 'spec_helper'

describe "polls/edit" do
  before(:each) do
    @poll = assign(:poll, stub_model(Poll,
      :title => "MyString",
      :question => "MyString"
    ))
  end

  it "renders the edit poll form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", poll_path(@poll), "post" do
      assert_select "input#poll_title[name=?]", "poll[title]"
      assert_select "input#poll_question[name=?]", "poll[question]"
    end
  end
end
