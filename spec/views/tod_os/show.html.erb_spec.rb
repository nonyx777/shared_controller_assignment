require 'rails_helper'

RSpec.describe "tod_os/show", type: :view do
  before(:each) do
    assign(:tod_o, TodO.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
