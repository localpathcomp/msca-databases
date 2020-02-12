php -r '
$conn = new mysqli("localhost","root","","test");
if ($conn->connect_errno) {
printf("Connect failed: %s\n", $conn->connect_error);
    exit();
}
$stmt = $conn->prepare("SELECT * FROM people");
$stmt->execute();
$result = $stmt->get_result();
while($row = $result->fetch_assoc()) :
echo $row["fname"];
endwhile;
'