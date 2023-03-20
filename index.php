<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Indewatt</title>
</head>

<body>
  <center>
    <img src="./logo.png" width=40%></img>
    <h1>INDEWATT - Um sistema de controle e saída de estacionamento</h1>
  </center>

  <?php
  //Código retirado de: https://www.w3schools.com/php/php_mysql_select.asp
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "indewatt";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  //comando select na ordem decrescente pelo id
  $sql = "SELECT * FROM dados_sensor order by Data, Hora";
  $result = $conn->query($sql);

  $count = "SELECT Data, count(Data) as Quantidade FROM dados_sensor GROUP BY Data order by Data";
  $countresult = $conn->query($count);

  if ($result->num_rows > 0) {
    echo '<h1>Resumo</h1>';
    while ($report = $countresult->fetch_assoc()) {
      echo '<pre>';
      echo "Data: " . $report["Data"] . "\t\t Quantidade: " . $report["Quantidade"] . "<br>";
      echo '</pre>';
    }

    // output data of each row
    echo '<h1>Dados coletados</h1>';
    while ($row = $result->fetch_assoc()) {
      echo '<pre>';
      echo "Data: " . $row["Data"] . "\t Hora: " . $row["Hora"] . "\t\t Movimento detectado " . "\t\t Distancia: " . $row["Sensor"] . "<br>";
      echo '</pre>';
    }
  } else {
    echo "Ainda não fora identificados registros";
  }

  $conn->close();
  ?><br>

</body>

</html>