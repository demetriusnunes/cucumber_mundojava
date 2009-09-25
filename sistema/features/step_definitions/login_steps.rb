Dado /^que estou na tela de Login$/ do
  @container = dialog("Login")
end

Quando /^preencho o campo "([^\"]*)" com "([^\"]*)"$/ do |campo, valor|
  field = text_field(campo)
  field.text = valor
end

Quando /^aperto o botão "([^\"]*)"$/ do |botao|
  button = button(botao)
  button.push
end

Entao /^devo ver a tela Principal$/ do
  @container = frame("Principal")
  assert @container.visible?
end

Entao /^devo ver a mensagem "([^\"]*)"$/ do |mensagem|
  label = label(mensagem)
  assert label.visible?
end