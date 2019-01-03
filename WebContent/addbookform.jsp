<script>
//Set timeout variables.
//var timoutWarning = 60000; // Display warning in 1 Mins.
var timoutNow = 120000; // Timeout in 1  mins.
var logoutUrl = 'index.jsp'; // URL to logout page.

//var warningTimer;
var timeoutTimer;

// Start timers.
 function StartTimers() {
	
    //warningTimer = setTimeout("IdleWarning()", timoutWarning);
    //timeoutTimer = setTimeout("IdleTimeout()", timoutNow);
	 timeoutTimer = setTimeout("IdleTimeout()", timoutNow);
} 

// Reset timers.
function ResetTimers() {
    //clearTimeout(warningTimer);
    clearTimeout(timeoutTimer);
    StartTimers();
    //$("#timeout").dialog('close');
} 

// Show idle timeout warning dialog.
function IdleWarning() {
	/* $("#timeout").dialog({
        modal: true
    }); */
   
    /* if(confirm("Do you want to continue?"))
    {
    	ResetTimers();	
    }
    else
    {
        //window.location = 'login.jsp';
    	IdleTimeout();
    } */
}

// Logout the user.
function IdleTimeout() {
	alert("Sorry inactive longtime please login again...")
    window.location.href = "LogoutAdmin"; 
	
}
</script>

<body onload="StartTimers();" onmousemove="ResetTimers();">
<h3>Add Book Form</h3>
  <form action="AddBook" method="post" style="width:300px">
  <div class="form-group">
    <label for="callno1">Callno</label>
    <input type="text" class="form-control" name="callno" id="callno1" placeholder="Callno"/>
  </div>
  <div class="form-group">
    <label for="name1">Name</label>
    <input type="text" class="form-control" name="name" id="name1" placeholder="Name"/>
  </div>
  <div class="form-group">
    <label for="author1">Author</label>
    <input type="text" class="form-control" name="author" id="author1" placeholder="Author"/>
  </div>
  <div class="form-group">
    <label for="publisher1">Publisher</label>
    <input type="text" class="form-control" name="publisher" id="publisher1" placeholder="Publisher"/>
  </div>
  <div class="form-group">
    <label for="quantity1">Quantity</label>
    <input type="number" class="form-control" name="quantity" id="quantity1" placeholder="Quantity"/>
  </div>
  <button type="submit" class="btn btn-primary">Save Book</button>
</form>
</body>
