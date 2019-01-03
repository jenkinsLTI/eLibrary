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
<h3>Issue Book Form</h3>
  <form action="IssueBook" method="post" style="width:300px">
  <div class="form-group">
    <label for="callno1">Book Callno</label>
    <input type="text" class="form-control" name="callno" id="callno1" placeholder="Callno"/>
  </div>
  <div class="form-group">
    <label for="id1">Student Id</label>
    <input type="text" class="form-control" name="studentid" id="id1" placeholder="Student Id"/>
  </div>
  <div class="form-group">
    <label for="name1">Student Name</label>
    <input type="text" class="form-control" name="studentname" id="name1" placeholder="Student Name"/>
  </div>
  <div class="form-group">
    <label for="mobile1">Student Mobile</label>
    <input type="number" class="form-control" name="studentmobile" id="mobile1" placeholder="Student Mobile"/>
  </div>
  <button type="submit" class="btn btn-primary">Issue Book</button>
</form>
</body>