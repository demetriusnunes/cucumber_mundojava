import org.netbeans.jemmy.operators.JFrameOperator
import org.netbeans.jemmy.operators.JDialogOperator
import org.netbeans.jemmy.operators.JLabelOperator
import org.netbeans.jemmy.operators.JTextFieldOperator
import org.netbeans.jemmy.util.NameComponentChooser
import org.netbeans.jemmy.operators.JButtonOperator
import 'sistema.Login'

Dado /^que estou na tela de Login$/ do
  @container = JDialogOperator.new("Login")
end

Quando /^preencho o campo "([^\"]*)" com "([^\"]*)"$/ do |campo, valor|
  label = JLabelOperator.new(@container, campo)
  field = JTextFieldOperator.new(label.label_for)
  field.text = valor
end

Quando /^aperto o botão "([^\"]*)"$/ do |botao|
  button = JButtonOperator.new(@container, botao)
  button.push
end

Entao /^devo ver a tela Principal$/ do
  @container = JFrameOperator.new("Principal")
  assert @container.visible?
end

Entao /^devo ver a mensagem "([^\"]*)"$/ do |mensagem|
  label = JLabelOperator.new(@container, mensagem)
  assert label.visible?
end