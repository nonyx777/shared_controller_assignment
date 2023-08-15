require 'rails_helper'

RSpec.describe "to_dos/new", type: :view do
  before(:each) do
    assign(:to_do, ToDo.new())
  end

  it "renders new to_do form" do
    render

    assert_select "form[action=?][method=?]", to_dos_path, "post" do
    end
  end
end
