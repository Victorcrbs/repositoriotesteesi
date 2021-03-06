require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      nome: "Nome",
      snome: "Snome",
      email: "Email@email",
      password: "password",
      fone: "Fone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Snome/)
    expect(rendered).to match(/Email@email/)
    expect(rendered).to match(/Fone/)
  end
end
