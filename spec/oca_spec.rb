require "./lib/oca.rb"
describe "Casos Oca" do

	it "Dificultad en posicion 4" do
		juego= Juego.new
		juego.mueve 4
		expect(juego.dificultad_mensaje).to eq("retrocede 2 posiciones")
		expect(juego.posicion).to eq(2)
	end

end


