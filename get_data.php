<?php

header("Content-Type: text/html;charset=utf-8");

$con = mysql_connect("localhost","********","*********");
if (!$con) {
    die('Could not connect: ' . mysql_error());
}
mysql_query("SET NAMES 'UTF8'");
mysql_select_db("phpmyadmin", $con);

$type = $_GET["type"];

if ($type == 1) {
    $sql = "SELECT order_id FROM dm_order WHERE date_paid >='".
           $_GET["start"]. "'and date_paid <='". $_GET["end"]. "'";
    // echo $sql;
    $result = mysql_query($sql);

    while($row = mysql_fetch_assoc($result)){
        $row['cash'] = get_amount($row['order_id'], '-1000');
        $row['credit'] = get_amount($row['order_id'], '-1001');
        $row['eftpos'] = get_amount($row['order_id'], '-1002');
        $row['amount'] = $row['cash'] + $row['credit'] + $row['eftpos'];
        // echo json_encode($row);
        $rows[] = $row;
    }
    echo json_encode($rows);

} else {

    $sql = "SELECT product_id, name, quantity, total FROM dm_order_product ".
           "WHERE date_added >='". $_GET["start"].
           "'and date_added <='". $_GET["end"]. "'";
    // echo $sql;
    $result = mysql_query($sql);

    $id_array = array();
    while($row = mysql_fetch_assoc($result)){
        // echo json_encode($row);
        if(in_array($row['product_id'], $id_array)){
            $index = array_search($row['product_id'], $id_array);
            $rows[$index]['quantity'] += $row['quantity'];
            $rows[$index]['total'] += $row['total'];
        } else {
            $id_array[] = $row['product_id'];
            $rows[] = $row;
        }
    }
    echo json_encode($rows);
}

mysql_close($con);

function get_amount($id, $model){
    $sql = "SELECT total FROM dm_order_checkout WHERE order_id=".
           $id. " AND model=". $model;
    // echo $sql;
    $tmp_result = mysql_query($sql);
    $amount = 0;
    while ($tmp_r = mysql_fetch_assoc($tmp_result)) {
        $amount += $tmp_r['total'];
    }
    return $amount;
}

?>
