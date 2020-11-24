<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a  href="<?php echo base_url();?>">

				<img alt="<?php echo $userdata[0]['s_name'];?>" style="padding-left:10px" height="50px" src="<?php echo base_url().'images/'.$userdata[0]['s_logo'];?>"/> <!--class="navbar-brand"-->
				
				</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!--li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                     
                        
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Mohamed Syam</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Please Finish your tasks before 10 am , Mohamed Syam</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    </.dropdown-messages-->
                <!--/li-->
                <!-- /.dropdown -->
                
                <!-- /.dropdown -->
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> <?php echo $userdata[0]['u_name'];?></a>
                        </li>
						 
                        <li class="divider"></li>
						<!--li><a href="<?php echo base_url();?>MyAccount1"><i class="glyphicon glyphicon-cog"></i>  My Account</a-->
                        <li><a href="<?php echo base_url();?>logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                       
						<?php if($priv[0]['p_gift_redeem']==1):?>
						<li>
                            <a href="<?php echo base_url();?>Gift"><i class="fa fa fa-gift"></i> Gift Cards<span class="fa arrow"></span></a>
                            </li>
						<?php endif;?>
						<?php if($priv[0]['p_gift_generation']==1):?>
						<li>
                            <a href="<?php echo base_url();?>GenerateCards"><i class="fa fa fa-gift"></i> Generate Gift Cards<span class="fa arrow"></span></a>
                            </li>
						<?php endif;?>

						<?php if($priv[0]['p_gift_download']==1):?>
						<li>
                            <a href="<?php echo base_url();?>GenerateCards/DownloadCards"><i class="fa fa fa-gift"></i> Download Cards<span class="fa arrow"></span></a>
                            </li>
						<?php endif;?>

						<?php if($priv[0]['p_partners']==1):?>
						<li>
                            <a href="<?php echo base_url();?>Partners"><i class="fa fa fa-gift"></i> Partners<span class="fa arrow"></span></a>
                            </li>
						<?php endif;?>

						<?php if($priv[0]['p_gift_report']==1):?>
						<li>
                            <a href="<?php echo base_url();?>GiftDashboard"><i class="fa fa fa-gift"></i> Gift Card Report<span class="fa arrow"></span></a>
                            </li>
						<?php endif;?>
						<?php if($priv[0]['p_add_user']+$priv[0]['p_edit_user']+$priv[0]['p_privilages']+$priv[0]['p_departments']+$priv[0]['p_general']!==0):?>
						  
						<li>
                            <a href="#"><i class="	glyphicon glyphicon-cog"></i>System Settings<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
							<?php if($priv[0]['p_add_user']==1):?>
								<li>
                                    <a  href="<?php echo base_url();?>AddUser">Create user</a>
                                </li>
								<?php endif;?>
								<?php if($priv[0]['p_edit_user']==1):?>
                                <li>
                                    <a  href="<?php echo base_url();?>EditUser">Edit user</a>
                                </li>
								<?php endif;?>
								<?php if($priv[0]['p_privilages']==1):?>
								<li>
                                    <a  href="<?php echo base_url();?>Privileges">Privileges</a>
                                </li>
								<?php endif;?>
								<?php if($priv[0]['p_departments']==1):?>
								<li>
                                    <a  href="<?php echo base_url();?>Departments">Departments</a>
                                </li>
								<?php endif;?>
								<?php if($priv[0]['p_general']==1):?>
								<li>
                                    <a  href="<?php echo base_url();?>GeneralSettings">General settings</a>
                                </li>
								<?php endif;?>
								
								
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
						<?php endif;?>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
