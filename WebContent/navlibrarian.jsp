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
<nav class="navbar navbar-inverse">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">eLibrary</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="AddBookForm">Add Book</a></li>
        <li><a href="ViewBook">View Book</a></li>
        <li><a href="IssueBookForm">Issue Book</a></li>
        <li><a href="ViewIssuedBook">View Issued Book</a></li>
        <li><a href="ReturnBookForm">Return Book</a></li>
        <li><a href="LogoutLibrarian">Logout</a></li>
       </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>