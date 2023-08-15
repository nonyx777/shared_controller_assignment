require 'rails_helper'

RSpec.describe "to_dos/edit", type: :view do
  let(:to_do) {
    ToDo.create!()
  }

  before(:each) do
    assign(:to_do, to_do)
  end

  it "renders the edit to_do form" do
    render

    assert_select "form[action=?][method=?]", to_do_path(to_do), "post" do
    end
  end
end
