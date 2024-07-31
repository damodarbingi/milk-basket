<%
	if(session.getAttribute("adminemail")==null){
		response.sendRedirect("admin.jsp");
	}
%>


<header role="banner">
    <nav class="navbar navbar-expand-lg  bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand " href="welcomeadmin.jsp">MILKBASKET</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05"
          aria-controls="navbarsExample05" aria-expanded="false" a

  ria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

   
        <div class="collapse navbar-collapse" id="navbarsExample05">
          <ul class="navbar-nav pl-md-5 ml-auto">
            <li class="nav-item">
              <a class="nav-link " href="welcomeadmin.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="viewcontactprocess.jsp">View Contact</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="welcomeadmin.jsp" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Users</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="viewcustomers.jsp">View Customers</a>
                <a class="dropdown-item" href="viewdairy.jsp">View Dairy</a>
                <!-- <a class="dropdown-item" href="#">View Product</a> -->
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="welcomeadmin.jsp" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Notification</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="adminaddnotificationpage.jsp">Add Notification</a>
                <a class="dropdown-item" href="adminviewnotificationprocess.jsp">View Notification</a>
              </div>
            </li>

            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="welcomeadmin.jsp" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Profile</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="admincppage.jsp">Change Password</a>
                <a class="dropdown-item" href="adminlogoutprocess.jsp">logout</a>
                
              </div>
            </li>

        </div>
      </div>
    </nav>
  </header>