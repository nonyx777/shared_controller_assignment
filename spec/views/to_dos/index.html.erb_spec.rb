require 'rails_helper'

RSpec.describe "to_dos/index", type: :view do
  before(:each) do
    assign(:to_dos, [
      ToDo.create!(),
      ToDo.create!()
    ])
  end

  it "renders a list of to_dos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
