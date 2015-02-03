<%-- 
    Document   : body_header.jsp
    Created on : 30-Jan-2015, 14:42:25
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
              <li class="active"><a href="/ensaGal/about">About</a></li>
			  <li class="divider-vertical"></li>
              <form class="navbar-search pull-left" action="" />
                <input type="text" class="search-query span2" placeholder="Search" required="" />
              </form>
			  <li class="divider-vertical"></li>
            </ul>
            <ul class="nav pull-right">
            <li class="divider-vertical"></li>
            <li class="gravatar"><a href="/ensaGal/profile"></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">${user.name}<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/ensaGal/account_setting"><i class="icon-user"></i> Account Setting</a></li>
                <li class="divider"></li>
                <li><a href="/ensaGal/signin"><i class="icon-off"></i> Sign out</a></li>
              </ul>
            </li>
            <li class="divider-vertical"></li>
          </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>