var myRequest;
var table_header = "";

function sendRequest(type) {
  myRequest = new XMLHttpRequest();
  // alert(new Date(document.getElementById('start_time').value).toISOString().replace('T', ' ').slice(0, 19));
  // alert(document.getElementById('start_time').value);
  var url = "get_data.php?type=" + type + 
            "&start=" + document.getElementById('start_time').value.replace('T', ' ') +
            "&end=" + document.getElementById('end_time').value.replace('T', ' ');
  // alert(url);
  if (type === 1) {
    table_header = "<tr>" +
                   "<th> Order_id </th>" + 
                   "<th> Amount </th>" + 
                   "<th> CASH </th>" + 
                   "<th> EFTPOS </th>" + 
                   "<th> CREDIT CARD </th>" + 
                   "</tr>";
    myRequest.onreadystatechange = showSaleDataResult;
  } else {
    table_header = "<tr>" +
                   "<th> Id </th>" + 
                   "<th> Name </th>" + 
                   "<th> Total Number </th>" + 
                   "<th> Price Amount </th>" + 
                   "</tr>";
    myRequest.onreadystatechange = showProductDataResult;
  }
  myRequest.open("GET", url, true);
  myRequest.send();
}

function showSaleDataResult() {
  // document.getElementById('test').innerHTML = myRequest.responseText;
  if (myRequest.readyState == 4) {
    var text = "";
    var data = JSON.parse(myRequest.responseText);
    var t_a = 0, t_c = 0, t_e = 0, t_cr = 0;
    for (var i = 0, len = data.length; i < len; i++) {
      text += "<tr>" + 
              "<td>" + data[i].order_id + "</td>" + 
              "<td>" + data[i].amount + "</td>" + 
              "<td>" + data[i].cash + "</td>" + 
              "<td>" + data[i].eftpos + "</td>" + 
              "<td>" + data[i].credit + "</td>" + 
              "</tr>";
      t_a += data[i].amount;
      t_c += data[i].cash;
      t_e += data[i].eftpos;
      t_cr += data[i].credit;
    }
    text = "<tr style='color: #16A085;'>" +
           "<td>" + 'TOTAL' + "</td>" + 
           "<td>" + Math.round(t_a * 10) / 10 + "</td>" + 
           "<td>" + Math.round(t_c * 10) / 10 + "</td>" + 
           "<td>" + Math.round(t_e * 10) / 10 + "</td>" + 
           "<td>" + Math.round(t_cr * 10) / 10 + "</td>" + 
           "</tr>" + text;
    document.getElementById('result_table').innerHTML = table_header + text;
  }
}

function showProductDataResult() {
  if (myRequest.readyState == 4) {
    var text = "";
    var data = JSON.parse(myRequest.responseText);
    // console.log(data.length);
    data.sort(function(a, b){
      return b.total - a.total;
    });
    for (var i = 0, len = data.length; i < len; i++) {
      text += "<tr>" +
              "<td>" + data[i].product_id + "</td>" +
              "<td>" + data[i].name + "</td>" +
              "<td>" + data[i].quantity + "</td>" +
              "<td>" + Math.round(data[i].total * 100) / 100 + "</td>" +
              "</tr>";
    }
    document.getElementById('result_table').innerHTML = table_header + text;
  }
}
