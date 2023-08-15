require 'rails_helper'

RSpec.describe "tod_os/edit", type: :view do
  let(:tod_o) {
    TodO.create!()
  }

  before(:each) do
    assign(:tod_o, tod_o)
  end

  it "renders the edit tod_o form" do
    render

    assert_select "form[action=?][method=?]", tod_o_path(tod_o), "post" do
    end
  end
end
