<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>


<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <div class="profile-sidebar">
            <div class="profile-usertitle">
                <?php
$uid=$_SESSION['detsuid'];
$ret=mysqli_query($con,"select FullName from tbluser where ID='$uid'");
$row=mysqli_fetch_array($ret);
$name=$row['FullName'];

?>
                <div class="profile-usertitle-name"><?php echo $name; ?></div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="divider"></div>
        
        <ul class="nav menu">
            <li class="active"><a href="dashboard.php"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
            
            
           
            <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
                <em class="fa fa-navicon">&nbsp;</em>Food Expenses <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-1">
                    <li><a class="" href="add-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                    </a></li>
                    <li><a class="" href="manage-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                    </a></li>
                    
                </ul>

            </li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-2">
                    <em class="fa fa-navicon">&nbsp;</em>Rent Expenses <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-2">
                    <li><a class="" href="rent-add-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                        </a></li>
                    <li><a class="" href="rent-manage-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                        </a></li>

                </ul>

            </li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-3">
                    <em class="fa fa-navicon">&nbsp;</em>Transportation Expenses <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-3">
                    <li><a class="" href="transport-add-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                        </a></li>
                    <li><a class="" href="transport-manage-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                        </a></li>

                </ul>

            </li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-4">
                    <em class="fa fa-navicon">&nbsp;</em>Lifestyle Expenses <span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-4">
                    <li><a class="" href="life-add-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                        </a></li>
                    <li><a class="" href="life-manage-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                        </a></li>

                </ul>

            </li>
            <li class="parent "><a data-toggle="collapse" href="#sub-item-5">
                    <em class="fa fa-navicon">&nbsp;</em>Other Expenses <span data-toggle="collapse" href="#sub-item-5" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-5">
                    <li><a class="" href="other-add-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                        </a></li>
                    <li><a class="" href="other-manage-expense.php">
                            <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                        </a></li>

                </ul>

            </li>
             <li><a href="change-password.php"><em class="fa fa-clone">&nbsp;</em> Change Password</a></li>
<li><a href="logout.php"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>

        </ul>
    </div>