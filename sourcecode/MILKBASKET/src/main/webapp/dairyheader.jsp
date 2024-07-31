<%
	if(session.getAttribute("demail")==null){
		response.sendRedirect("dairypage.jsp");
	}
%>



<header role="banner">
    <nav class="navbar navbar-expand-lg  bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand " href="welcomedairy.jsp">MILKBASKET</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05"
          aria-controls="navbarsExample05" aria-expanded="false" a

          ria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

   
        <div class="collapse navbar-collapse" id="navbarsExample05">
          <ul class="navbar-nav pl-md-5 ml-auto">
            <li class="nav-item">
              <a class="nav-link " href="welcomedairy.jsp">Home</a>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle"  id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Product</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="addproductpage.jsp">Add Product</a>
                <a class="dropdown-item" href="dairyviewproduct.jsp">View Product</a>
                <a class="dropdown-item" href="dairyviewcustomerorder.jsp">View Customer Order</a>
                <a class="dropdown-item" href="dairyviewreview.jsp">View Rewiews</a>
              </div>
            </li><li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle"  id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">profile</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="dairyprofileprocess.jsp">My Profile</a>
                <a class="dropdown-item" href="dairyprofilephoto.jsp">Profile Photo</a>
                <a class="dropdown-item" href="dairycppage.jsp">Change Password</a>
                <a class="dropdown-item" href="dairylogoutprocess.jsp">Logout</a>
              </div>
            </li>
          </ul>


        </div>
      </div>
    </nav>
  </header>