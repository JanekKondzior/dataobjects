<?php
if(isset($_POST['members'])){

$query="select * from customer";

$result=mysqli_query($conn,$query);

$rowCount = mysqli_num_rows($result);

for($i=0;$i<$rowCount;$i++){
    $members[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

mysqli_free_result($result);

mysqli_close($conn);

foreach($members as $member) :

    echo $member['FirstName'];
    echo " ";
    echo $member['LastName'];

endforeach;
}
?>