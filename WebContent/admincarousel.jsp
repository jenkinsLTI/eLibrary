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
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/admin1.jpg" alt="baby 1" >
      </div>

      <div class="item">
        <img src="images/admin2.jpg" alt="baby 2" >
      </div>
    
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div><!-- corousel end -->

</div>
</body>