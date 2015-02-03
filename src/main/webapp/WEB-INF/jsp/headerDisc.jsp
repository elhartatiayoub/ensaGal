<%-- 
    Document   : headerDisc.jsp
    Created on : 30-Jan-2015, 18:19:29
    Author     : Sara
--%>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/ensaGal/index"><img src="/ensaGal/resources/img/logo.png" /></a>
          <div class="nav-collapse">
            <ul class="nav">
			  <li class="divider-vertical"></li>
              <li><a href="/ensaGal/about">About</a></li>
			  <li class="divider-vertical"></li>
              <form class="navbar-search pull-left" action="" />
                <input type="text" class="search-query span2" placeholder="Search" required="" />
              </form>
			  <li class="divider-vertical"></li>
			  
            </ul>
            <ul class="nav pull-right">
            <li class="divider-vertical"></li>
            <li class="active"><a href="/ensaGal/signin"><i class="icon-lock"></i> Sign in</a></li>
            <li class="divider-vertical"></li>
            <li><a href="/ensaGal/signup"><i class="icon-edit"></i> Sign up</a></li>
            <li class="divider-vertical"></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
            <li class="divider-vertical"></li>
          </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
