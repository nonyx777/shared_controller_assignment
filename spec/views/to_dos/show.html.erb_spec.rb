require 'rails_helper'

RSpec.describe "to_dos/show", type: :view do
  before(:each) do
    assign(:to_do, ToDo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
