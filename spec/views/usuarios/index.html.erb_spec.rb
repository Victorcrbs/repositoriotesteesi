require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        nome: "Nome",
        snome: "Snome",
        email: "Email",
        password: "Senha",
        fone: "Fone"
      ),
      Usuario.create!(
        nome: "Nome",
        snome: "Snome",
        email: "Email",
        password: "Senha",
        fone: "Fone"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Snome".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Senha".to_s, count: 2
    assert_select "tr>td", text: "Fone".to_s, count: 2
  end
end
