//Leitura de distância com o sensor HC-SR04
#include Ultrasonic ultrassom(7,6); // define o nome do sensor(ultrassom)
//e onde esta ligado o trig(8) e o echo(7) respectivamente

long distancia;

// Esta função "setup" roda uma vez quando a placa e ligada ou resetada
void setup() {
Serial.begin(9600); //Habilita Comunicação Serial a uma taxa de 9600 bauds.

pinMode(10, OUTPUT);
pinMode(12, OUTPUT);
}

// Função que se repete infinitamente quando a placa é ligada
void loop()
{
  distancia = ultrassom.Ranging(CM);// ultrassom.Ranging(CM) retorna a distancia em
  // centímetros(CM) ou polegadas(INC)
  Serial.println(distancia); //imprime o valor da variável distancia
  delay(1000);

  if (distancia <= 10) {
    digitalWrite(10, HIGH);
    digitalWrite(12, LOW);
  } else {
    digitalWrite(12, HIGH);
    digitalWrite(10, LOW);
  }
  delay(5000);
}