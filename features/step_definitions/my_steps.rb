Given(/^Visitar el inicio$/) do
  visit '/'
end

Then(/^Verifico boton de "(.*?)"$/) do |jugada|
  last_response.body.should =~ /#{jugada}/m
end

Then(/^Posicion "(.*?)"$/) do |arg1|
  text="0"
  last_response.body.should =~ /#{text}/m
end

When /^tiro el dado$/ do
  click_link("jugada")
end

Then(/^suma (\d+) posicion$/) do |arg1|
  text="1"
  last_response.body.should =~ /#{text}/m
end

Then(/^verifica que se termina el juego$/) do  
  text="Llegada"
  last_response.body.should =~ /#{text}/m
end


Then(/^Veo mensaje de penalidad "(.*?)"$/) do |text|
	text="retrocede"
	last_response.body.should =~ /#{text}/m

end

