require "./lib/oca.rb"
describe "Casos Oca" do

	it "Dificultad en posicion 4" do
		juego= Juego.new
		juego.proximo_dado 4
		juego.mueve
#		expect(juego.dificultad).to eq("retrocede 2 posiciones")
		expect(juego.posicion).to eq(2)
	end
	it "Dificultad en posicion 7" do
		juego= Juego.new
		juego.proximo_dado 7
		juego.mueve
		expect(juego.dificultad).to eq("retrocede 1 posición")
		expect(juego.posicion).to eq(6)
	end


	it "Dificultad en posicion 8" do
		juego= Juego.new
		juego.proximo_dado 8
		juego.mueve
		expect(juego.dificultad).to eq("retrocede 6 posición")
		expect(juego.posicion).to eq(2)
	end

	it "Dado no puede moverse en unidades mayores a 6 ni menores a 1" do
		juego= Juego.new
		juego.gira_dado
		expect(juego.gira_dado).to be <= 6
		expect(juego.gira_dado).to be >= 1
	end

	it "Controlar el dado desde afuera" do
		juego= Juego.new
		juego.proximo_dado 5
		juego.mueve
		expect(juego.posicion).to eq(5)
	end

end


