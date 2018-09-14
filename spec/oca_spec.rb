require "./lib/oca.rb"
describe "Casos Oca" do

	it "Dificultad en posicion 4" do
		juego= Juego.new
		juego.mueve 4
		expect(juego.dificultad_mensaje).to eq("retrocede 2 posiciones")
		expect(juego.posicion).to eq(2)
	end
	it "Dificultad en posicion 7" do
		juego= Juego.new
		juego.mueve 7
		expect(juego.dificultad_mensaje).to eq("retrocede 1 posiciones")
		expect(juego.posicion).to eq(6)
	end

end


