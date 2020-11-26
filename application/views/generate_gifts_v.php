<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mohamed Syam">

    <title>Generate Cards| <?php echo $userdata[0]['s_name'];?></title>
	<link rel="icon" href="<?php echo base_url();?>tg.ico" type="image/gif" sizes="16x16">
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url();?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url();?>vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url();?>dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url();?>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	 <script src="<?php echo base_url();?>js/jquery.min.js.download"></script>

    <script src="<?php echo base_url();?>js/0a3b9034e109d88d72f83c9e6c9d13b7.js.download"></script>

    <link rel="stylesheet" href="<?php echo base_url();?>css/bootstrap-select.min.css" />

</head>

<body >

    <div id="wrapper">

        <!-- Navigation -->
        <?php include_once('nav_v.php');?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid" >
                <div class="row">
				<?php echo form_open_multipart('GenerateCards/Generate');?>
                    <div class="col-lg-12">
                        <h1 class="page-header">Generate Gift Cards</h1>
						<div class="panel panel-default">
                <div class="panel-heading">Please select the partner and the quantities</div>
							<?php if(!empty(validation_errors())):?>
							<div class="alert alert-warning">
								<strong>Warning!</strong> <?php echo validation_errors(); ?>
							</div>
							<?php endif;?>

                <div class="panel-body">
				
                 <div class="form-group">
				 
				  <label  class="col-lg-2">Partner</label>
					<div class="col-lg-3">
					  <select class="selectpicker" data-show-subtext="true" data-live-search="true" required name="partner"  >
                        <?php
                        if (count($partners)>=1) {
                            echo '<option disabled selected></option>';
                            foreach ($partners as $u):
                                echo "<option   value ='$u->gp_id'>" . $u->gp_name . "</option>";
                            endforeach;
                        }
                        ?>
						
                    </select>
					</div>
					<br>
					<br>
					<label  class="col-lg-2">Discount Type</label>
					<div class="col-lg-2">
					  <input type="text" class="form-control"  required name="name">
					  
					</div>
					<br>
					<br>
					<label  class="col-lg-2">Number of cards</label>
					<div class="col-lg-2">
					  <input type="text" maxlength="4" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" class="form-control"  name="qty">
					  
					</div>
					
					
					<br>
					<br>
					<div class="col-lg-5">
					  <button type="submit" name="generate"  class="btn btn-primary center-block">Generate</button>
					  
					</div>
<br>
<br>
<br>
					 <div class="col-lg-5">

						 <input type="file" accept=".csv" name="file" class="form-control-file">
						 <br>
						 <button type="submit" name="upload" class="btn btn-primary center-block">Upload</button>
					 </div>


				</div>
                </div>
                </div>
				
            </div>
			<?php echo form_close();?>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->






<script src="<?php echo base_url();?>js/bootstrap-select.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url();?>js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?php echo base_url();?>js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url();?>js/startmin.js"></script>


</body>

</html>
