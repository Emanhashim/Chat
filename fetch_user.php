<?php

//fetch_user.php

include('database_connection.php');

session_start();

$query = "
SELECT * FROM login 
WHERE user_id != '".$_SESSION['user_id']."' 
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$output = '

<table  width="50%" class="table table-bordered table-striped" >
<div class="dropdown">
<tr>
		<th>
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" 
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> User Name
		</button></td>
		<th>
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" 
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Status
		</button></td>
		<th>
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" 
		data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Action
		</button></td>
	</tr>
';

foreach($result as $row)
{
	$status = '';
	$current_timestamp = strtotime(date("Y-m-d H:i:s") . '- 10 second');
	$current_timestamp = date('Y-m-d H:i:s', $current_timestamp);
	$user_last_activity = fetch_user_last_activity($row['user_id'], $connect);
	if($user_last_activity > $current_timestamp)
	{
		$status = '<span class="label label-success">Online</span>';
	}
	else
	{
		$status = '<span class="label label-danger">Offline</span>';
	}
	$output .= '
	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	<tr>
	<a class="dropdown-item"><td>'.$row['username'].' '.count_unseen_message($row['user_id'], $_SESSION['user_id'], $connect).' '.fetch_is_type_status($row['user_id'], $connect).'</td></a>
	<a class="dropdown-item"><td>'.$status.'</td></a>
	<a class="dropdown-item"><td><button type="button" class="btn btn-info btn-xs start_chat" data-touserid="'.$row['user_id'].'" data-tousername="'.$row['username'].'">Start Chat</button></td></a>
	</tr>
	</div>
	';
}

$output .= '</table>';

echo $output;

?>