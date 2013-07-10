require 'spec_helper'

describe "polls/index" do
  before(:each) do
    assign(:polls, [
      stub_model(Poll,
        :title => "Title",
        :question => "Question"
      ),
      stub_model(Poll,
        :title => "Title",
        :question => "Question"
      )
    ])
  end

  it "renders a list of polls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Question".to_s, :count => 2
  end
end
