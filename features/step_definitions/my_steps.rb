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

