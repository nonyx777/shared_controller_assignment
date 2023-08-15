require 'rails_helper'

RSpec.describe "tod_os/new", type: :view do
  before(:each) do
    assign(:tod_o, TodO.new())
  end

  it "renders new tod_o form" do
    render

    assert_select "form[action=?][method=?]", tod_os_path, "post" do
    end
  end
end
