<?php session_start(); ?>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, maximum-scale=1, inital-scale=1">
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <title>Sale</title>
  <script src = "request_handler.js"> </script>
</head>

<body>
<?php if(!isset($_SESSION["login_user"])){ ?>
  <form method="post" action="login.php">  
    <table id="login_table">
      <tr>
        <td><input class="login_text" type="text" name="username" value="" placeholder="Username"/></td>
      </tr>
      <tr>
        <td><input class="login_text" type="password" name="password" placeholder="Password"/></td>
      </tr>
      <tr>
        <td><input id="login_button" class="my_button" type="submit" value="Log in"/></td>
      </tr>
    </table>
  </form>

<?php }else{ ?>
<table id="control_table">
  <tr align="right">
    <td> </td>
    <td>
      <form action="logout.php">
      Hi, <?php echo $_SESSION["login_user"]?>
      <input id="log_out_btn" class="my_button" type="submit" value="Logout">
      </form>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      Start Time: <input id="start_time" class="date_selector" type="datetime-local" name="start_time">
    </td>
  </tr>
    
  <tr>
    <td colspan="2">
      &nbsp End Time: <input id="end_time" class="date_selector" type="datetime-local" name="end_time">
    </td>
  </tr>

  <script type="text/javascript" charset="utf-8">
    // set date to 2015-04-29 for convenience
    var date = new Date('2015-04-29');
    var date_str = date.getFullYear() + '-' +
                   ('0' + (date.getMonth() + 1)).slice(-2) + '-' +
                   ('0' + date.getDate()).slice(-2) + 'T00:00:00';
    document.getElementById('start_time').value = date_str;

    date.setDate(date.getDate()+1);
    date_str = date.getFullYear() + '-' +
               ('0' + (date.getMonth() + 1)).slice(-2) + '-' +
               ('0' + date.getDate()).slice(-2) + 'T00:00:00';
    document.getElementById('end_time').value = date_str;
  </script>

  <tr>
    <td>
    <form action="javascript:sendRequest(1);" method="get" accept-charset="utf-8">
      <input class="my_button submit_button" type="submit" value="Show Order Data">
    </form>
    </td>

    <td>
    <form action="javascript:sendRequest(2);" method="get" accept-charset="utf-8">
      <input class="my_button submit_button" type="submit" value="Show Product Data">
    </form>
    </td>
  </tr>
</table>

<p id='test'></p>
<table id="result_table" cellspacing="5" cellpadding="5">
</table>

<?php } ?>

</body>
</html>
