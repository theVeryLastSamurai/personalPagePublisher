<?php
    //$page is recieved from the page that included this page
    $submenu_flag=($page=="groupmeetings.php") || ($page=="participatedactivities.php") || ($page=="beyondscience.php");
    $label="";
    if($submenu_flag)
        if($page=="groupmeetings.php")
            $label="Group Meetings";
        else if($page=="participatedactivities.php")
            $label="Participated Activities";
        else
            $label="Beyond Science";

    echo"
        <div class='side-menu sidebar-inverse'>
            <nav class='navbar navbar-default' role='navigation'>
                <div class='side-menu-container'>
                    <div class='navbar-header'>
                        <a class='navbar-brand' href='#'>
                            <div class='icon icon-iasbs'></div>
                            <div class='title'>IASBS PPP</div>
                        </a>
                        <button type='button' class='navbar-expand-toggle pull-right visible-xs'>
                            <i class='fa fa-times icon'></i>
                        </button>
                    </div>
                    <ul class='nav navbar-nav'>
                        <li ".( ($page=="index.php")? "class='active'" : "" ).">
                            <a href='".( ($page=="index.php")? "#" : "index.php" )."'>
                                <span class='icon fa fa-desktop'></span><span class='title'>Website Review</span>
                            </a>
                        </li>
                        <li ".( ($page=="homepage.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="homepage.php")? "#" : "homepage.php" )."'>
                                <span class='icon fa fa-home'></span><span class='title'>Home Page</span>
                            </a>
                        </li>
                        <li ".( ($page=="research.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="research.php")? "#" : "research.php" )."'>
                                <span class='icon fa fa-puzzle-piece'></span><span class='title'>Research</span>
                            </a>
                        </li>
                        <li ".( ($page=="publications.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="publications.php")? "#" : "publications.php" )."'>
                                <span class='icon fa fa-newspaper-o'></span><span class='title'>Publications</span>
                            </a>
                        </li>
                        <li ".( ($page=="teachings.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="teachings.php")? "#" : "teachings.php" )."'>
                                <span class='icon fa fa-graduation-cap'></span><span class='title'>Teachings</span>
                            </a>
                        </li>
                        <li ".( ($page=="people.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="people.php")? "#" : "people.php" )."'>
                                <span class='icon fa fa-users'></span><span class='title'>People</span>
                            </a>
                        </li>
                        <li class='panel panel-default dropdown  ".($submenu_flag? "active" : "" )."' >
                            <a data-toggle='collapse' href='#dropdown-element'>
                                <span class='icon fa fa-university'></span><span class='title'>Events ".($submenu_flag?"( ".$label." )":"")."</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id='dropdown-element' class='panel-collapse collapse'>
                                <div class='panel-body'>
                                    <ul class='nav navbar-nav'>
                                        <li ".( ($page=="groupmeetings.php")? "class='active'" : "" ).">
                                            <a href='".( ($page=="groupmeetings.php")? "#" : "groupmeetings.php" )."'>Group Meetings</a>
                                        </li>
                                        <li ".( ($page=="participatedactivities.php")? "class='active'" : "" ).">
                                            <a href='".( ($page=="participatedactivities.php")? "#" : "participatedactivities.php" )."'>Participated Activities</a>
                                        </li>
                                        <li ".( ($page=="beyondscience.php")? "class='active'" : "" ).">
                                            <a href='".( ($page=="beyondscience.php")? "#" : "beyondscience.php" )."'>Beyond Science</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li ".( ($page=="contactme.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="contactme.php")? "#" : "contactme.php" )."'>
                                <span class='icon fa fa-phone'></span><span class='title'>Contact Me</span>
                            </a>
                        </li>
                        <li ".( ($page=="download.php")? "class='active'" : "" )." >
                            <a href='".( ($page=="download.php")? "#" : "download.php" )."'>
                                <span class='icon fa fa-download'></span><span class='title'>Preview / Download</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>";
?>