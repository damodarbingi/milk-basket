<%
	if(session.getAttribute("cemail")==null){
		response.sendRedirect("customer.jsp");
	}
%>




<header role="banner">
    <nav class="navbar navbar-expand-lg  bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand " href="welcomecustomer.jsp">MILKBASKET</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05"
          aria-controls="navbarsExample05" aria-expanded="false" a

  ria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

   
        <div class="collapse navbar-collapse" id="navbarsExample05">
          <ul class="navbar-nav pl-md-5 ml-auto">
            
            </li>
            <li class="nav-item">
              <a class="nav-link" href="dailyneedspage.jsp">Daily Needs</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="customer.jsp" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Orders</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="myorders.jsp">My Orders</a>
                <a class="dropdown-item" href="viewdailyorders.jsp">My Daily Orders</a>
              </div>
            <li class="nav-item">
              <a class="nav-link" href="customerviewdairy.jsp">View Dairy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="customerviewcartprocess.jsp">View Cart</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="welcomecustomer.jsp" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Profile</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="customerprofileprocess.jsp">My Profile</a>
                <a class="dropdown-item" href="customerprofilephoto.jsp">Profile Photo</a>
                <a class="dropdown-item" href="customercppage.jsp">Change Password</a>
                <a class="dropdown-item" href="customerlogoutprocess.jsp">Logout</a>
              </div>
            </li>


        </div>
      </div>
    </nav>
  </header>