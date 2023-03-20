from datetime import datetime
from datetime import date
import serial.tools.list_ports
import mysql
import mysql.connector as bd
# para conseguir utilizar mysql, rodar estes dois comandos no DOS:
# pip install mysql
# pip install mysql-connector

#antes de executar este codigo, sera necessario criar a tabela, instrucoes no ambiente conhecer.

conexao = bd.connect(host='127.0.0.1', database = "indewatt", user = 'root', password = '')
# na linha acima, em host, utilizar o IP do servidor, em database, user e password usar "grupo01",
# "grupo02", conforme a tabela de grupos. 

ports = serial.tools.list_ports.comports()
serialInst = serial.Serial()

portList = []

for onePort in ports:
    portList.append(str(onePort))
    print(str(onePort))

val = input("select Port: COM")

for x in range(0,len(portList)):
    if portList[x].startswith("COM" + str(val)):
        portVar = "COM" + str(val)
        print(portList[x])

serialInst.baudreate = 9600
serialInst.port = portVar
serialInst.open()

while True:
    if serialInst.in_waiting:
        packet = serialInst.readline() # packet recebe valor serial
        now = datetime.now().time()# now recebe tempo
        data = date.today()# data recebe o dia atual
        print("Today = ", data)
        print("Current Time = ", now)
        print("Sensor Value = ",packet.decode('utf'))
        sql = "INSERT INTO dados_sensor (Data, Hora, Sensor) VALUES ('"+str(data)+"', '"+str(now)+"', '"+str(packet.decode('utf'))+"')"
        cursor = conexao.cursor()
        cursor.execute(sql)
        conexao.commit()

        
        
