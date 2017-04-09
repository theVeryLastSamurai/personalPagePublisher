<?php
    //$page is recieved from the page that included this page
    echo"
        <div class='side-menu sidebar-inverse'>
            <nav class='navbar navbar-default' role='navigation'>
                <div class='side-menu-container'>
                    <div class='navbar-header'>
                        <a class='navbar-brand' href='#'>
                            <div class='icon icon-iasbs'></div>
                            <div class='title'>IASBS PPP Admin</div>
                        </a>
                        <button type='button' class='navbar-expand-toggle pull-right visible-xs'>
                            <i class='fa fa-times icon'></i>
                        </button>
                    </div>
                    <ul class='nav navbar-nav'>
                        <li ".( ($page=="admin.php")? "class='active'" : "" ).">
                            <a href='".( ($page=="admin.php")? "#" : "admin.php" )."'>
                                <span class='icon fa fa-desktop'></span><span class='title'>Manage Users</span>
                            </a>
                        </li>
                        <li ".( ($page=="admin2.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="admin2.php")? "#" : "admin2.php" )."'>
                                <span class='icon fa fa-user'></span><span class='title'>Manage Admins</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>";
?>