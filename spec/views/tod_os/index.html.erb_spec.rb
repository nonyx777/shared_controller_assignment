require 'rails_helper'

RSpec.describe "tod_os/index", type: :view do
  before(:each) do
    assign(:tod_os, [
      TodO.create!(),
      TodO.create!()
    ])
  end

  it "renders a list of tod_os" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
