<!DOCTYPE html>
<html lang="en">
<head>
	<title>WeBid Administration back-end</title>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($this->_rootref['CHARSET'])) ? $this->_rootref['CHARSET'] : ''; ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="generator" content="WeBid">

	<link rel="stylesheet" media="screen,projection" type="text/css" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>includes/calendar.css">
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/style.css">

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/jquery.js"></script>
	<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/jquery-ui.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('a.new-window').click(function(){
				window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX=100,screenY=100,status=0,menubar=0,resizable=0,width=550,height=550");
				return false;
			});
			$(".selectall").click(function() {
				var checked_status = this.checked;
				var checkbox_name = this.value;
				$("input[name=\"" + checkbox_name + "[]\"]").each(function() {
					this.checked = checked_status;
				});
			});
		});
	</script>
	<script type="text/javascript">
		function window_open(url,title,width,height,x,y)
		{
			var window_= 'toolbar=0,location=0,directories=0,scrollbars=1,screenX='+x+',screenY='+y+',status=0,menubar=0,resizable=0,width='+width+',height='+height;
			open(url,title,window_);
		}
	</script>
</head>
<body id="<?php echo (isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : ''; ?>">
	<div class="container">
		<div class="row header">
			<div class="col-md-6"><?php echo (isset($this->_rootref['LOGO'])) ? $this->_rootref['LOGO'] : ''; ?></div>
			<div class="col-md-6 hidden-xs text-right">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-6"><small><?php echo ((isset($this->_rootref['L_559'])) ? $this->_rootref['L_559'] : ((isset($MSG['559'])) ? $MSG['559'] : '{ L_559 }')); ?>: <?php echo (isset($this->_rootref['LAST_LOGIN'])) ? $this->_rootref['LAST_LOGIN'] : ''; ?></small></div>
			<div class="col-md-6 text-muted text-right">
<?php $_langs_count = (isset($this->_tpldata['langs'])) ? sizeof($this->_tpldata['langs']) : 0;if ($_langs_count) {for ($_langs_i = 0; $_langs_i < $_langs_count; ++$_langs_i){$_langs_val = &$this->_tpldata['langs'][$_langs_i]; if (! $_langs_val['B_DEFAULT']) {  ?>
				<a href="index.php?lan=<?php echo $_langs_val['LANG']; ?>"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/flags/<?php echo $_langs_val['LANG']; ?>.gif"></a>
	<?php } }} ?>
				<small><?php echo ((isset($this->_rootref['L_592'])) ? $this->_rootref['L_592'] : ((isset($MSG['592'])) ? $MSG['592'] : '{ L_592 }')); ?> <?php echo (isset($this->_rootref['ADMIN_USER'])) ? $this->_rootref['ADMIN_USER'] : ''; ?> | <a href="editadminuser.php?id=<?php echo (isset($this->_rootref['ADMIN_ID'])) ? $this->_rootref['ADMIN_ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?></a> | <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>" target="_blank"><?php echo ((isset($this->_rootref['L_5001'])) ? $this->_rootref['L_5001'] : ((isset($MSG['5001'])) ? $MSG['5001'] : '{ L_5001 }')); ?></a> | <a href="logout.php"><?php echo ((isset($this->_rootref['L_245'])) ? $this->_rootref['L_245'] : ((isset($MSG['245'])) ? $MSG['245'] : '{ L_245 }')); ?></a><br /></small>
			</div>
		</div>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="headingnavbar">
						<span class="sr-only">Toggle Navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="headingnavbar">
					<ul class="nav navbar-nav">
						<li><a href="index.php" alt="<?php echo ((isset($this->_rootref['L_166'])) ? $this->_rootref['L_166'] : ((isset($MSG['166'])) ? $MSG['166'] : '{ L_166 }')); ?>"><?php echo ((isset($this->_rootref['L_166'])) ? $this->_rootref['L_166'] : ((isset($MSG['166'])) ? $MSG['166'] : '{ L_166 }')); ?></a></li>
						<li><a href="settings.php" alt="<?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>"><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?></a></li>
						<li><a href="fees.php" alt="<?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?></a></li>
						<li><a href="theme.php" alt="<?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?></a></li>
						<li><a href="managebanners.php" alt="<?php echo ((isset($this->_rootref['L_25_0011'])) ? $this->_rootref['L_25_0011'] : ((isset($MSG['25_0011'])) ? $MSG['25_0011'] : '{ L_25_0011 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0011'])) ? $this->_rootref['L_25_0011'] : ((isset($MSG['25_0011'])) ? $MSG['25_0011'] : '{ L_25_0011 }')); ?></a></li>
						<li><a href="listusers.php" alt="<?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?></a></li>
						<li><a href="listauctions.php" alt="<?php echo ((isset($this->_rootref['L_239'])) ? $this->_rootref['L_239'] : ((isset($MSG['239'])) ? $MSG['239'] : '{ L_239 }')); ?>"><?php echo ((isset($this->_rootref['L_239'])) ? $this->_rootref['L_239'] : ((isset($MSG['239'])) ? $MSG['239'] : '{ L_239 }')); ?></a></li>
						<li><a href="news.php" alt="<?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?></a></li>
						<li><a href="viewaccessstats.php" alt="<?php echo ((isset($this->_rootref['L_25_0023'])) ? $this->_rootref['L_25_0023'] : ((isset($MSG['25_0023'])) ? $MSG['25_0023'] : '{ L_25_0023 }')); ?>"><?php echo ((isset($this->_rootref['L_25_0023'])) ? $this->_rootref['L_25_0023'] : ((isset($MSG['25_0023'])) ? $MSG['25_0023'] : '{ L_25_0023 }')); ?></a></li>
						<li><a href="errorlog.php" alt="<?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>"><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?></a></li>
						<li><a href="help.php" alt="<?php echo ((isset($this->_rootref['L_148'])) ? $this->_rootref['L_148'] : ((isset($MSG['148'])) ? $MSG['148'] : '{ L_148 }')); ?>"><?php echo ((isset($this->_rootref['L_148'])) ? $this->_rootref['L_148'] : ((isset($MSG['148'])) ? $MSG['148'] : '{ L_148 }')); ?></a></li>
					</ul>
				</div>
			</div>
		</nav>
<?php $_alerts_count = (isset($this->_tpldata['alerts'])) ? sizeof($this->_tpldata['alerts']) : 0;if ($_alerts_count) {for ($_alerts_i = 0; $_alerts_i < $_alerts_count; ++$_alerts_i){$_alerts_val = &$this->_tpldata['alerts'][$_alerts_i]; ?>
		<div id="alerts">
			<div class="alert alert-<?php echo $_alerts_val['TYPE']; ?>"><?php echo $_alerts_val['MESSAGE']; ?></div>
		</div>
	<?php }} ?>