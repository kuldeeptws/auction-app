<!DOCTYPE html>
<html lang="en">
<head>
	<title>WeBid Administration back-end</title>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($this->_rootref['CHARSET'])) ? $this->_rootref['CHARSET'] : ''; ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="generator" content="WeBid">

	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/jquery.lightbox.css" media="screen">

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/js/bootstrap.min.js"></script>

	<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/jquery.js"></script>
</head>
<body id="<?php echo (isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : ''; ?>">
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">&nbsp;</div>
			<div class="col-md-4 well">
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
				<div class="alert alert-danger" role="alert"><b><?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?></b></div>
<?php } ?>
				<form action="" method="post">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<div class="row">
						<div class="col-md-12"><?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?></div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-12 text-center">
<?php if ($this->_rootref['TYPE'] == (1)) {  ?>
							<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
							<button class="btn btn-primary" type="submit" name="action" value="Yes"><?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?></button>
							<button class="btn btn-primary" type="submit" name="action" value="No"><?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?></button>
<?php } else if ($this->_rootref['TYPE'] == (2)) {  ?>
							<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
							<input type="hidden" name="user" value="<?php echo (isset($this->_rootref['USERID'])) ? $this->_rootref['USERID'] : ''; ?>">
							<button class="btn btn-primary" type="submit" name="action" value="Yes"><?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?></button>
							<button class="btn btn-primary" type="submit" name="action" value="No"><?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?></button>
<?php } ?>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-4">&nbsp;</div>
		</div>