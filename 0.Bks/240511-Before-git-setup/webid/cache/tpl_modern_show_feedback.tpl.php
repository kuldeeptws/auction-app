<div class="row">
	<div class="col-md-12">
		<div class="col-md-12 well">
			<legend><?php echo ((isset($this->_rootref['L_208'])) ? $this->_rootref['L_208'] : ((isset($MSG['208'])) ? $MSG['208'] : '{ L_208 }')); ?></legend>
			<div class="col-md-12 grid-margin-btm-md">
				<a class="btn btn-default btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo (isset($this->_rootref['AUCT_ID'])) ? $this->_rootref['AUCT_ID'] : ''; ?>"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span><?php echo ((isset($this->_rootref['L_138'])) ? $this->_rootref['L_138'] : ((isset($MSG['138'])) ? $MSG['138'] : '{ L_138 }')); ?></a>
				<a class="btn btn-default btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>profile.php?user_id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_505'])) ? $this->_rootref['L_505'] : ((isset($MSG['505'])) ? $MSG['505'] : '{ L_505 }')); ?></a>
			</div>
			<div class="col-md-12">
				<div class="alert alert-info" role="alert"><?php echo ((isset($this->_rootref['L_185'])) ? $this->_rootref['L_185'] : ((isset($MSG['185'])) ? $MSG['185'] : '{ L_185 }')); echo (isset($this->_rootref['USERNICK'])) ? $this->_rootref['USERNICK'] : ''; ?> (<?php echo (isset($this->_rootref['USERFB'])) ? $this->_rootref['USERFB'] : ''; ?>) <?php if ($this->_rootref['USER_FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo (isset($this->_rootref['USER_FB_ICON'])) ? $this->_rootref['USER_FB_ICON'] : ''; ?>" alt="<?php echo (isset($this->_rootref['USER_FB_ICON'])) ? $this->_rootref['USER_FB_ICON'] : ''; ?>" class="fbstar"><?php } ?></div>
				<div class="panel panel-default visible-xs">
					<div class="panel-body">
						<legend><?php echo ((isset($this->_rootref['L_503'])) ? $this->_rootref['L_503'] : ((isset($MSG['503'])) ? $MSG['503'] : '{ L_503 }')); ?></legend>
						<div class="row">
<?php $_fbs_count = (isset($this->_tpldata['fbs'])) ? sizeof($this->_tpldata['fbs']) : 0;if ($_fbs_count) {for ($_fbs_i = 0; $_fbs_i < $_fbs_count; ++$_fbs_i){$_fbs_val = &$this->_tpldata['fbs'][$_fbs_i]; ?>
							<div class="col-md-6 col-sm-6">
								<a href="<?php echo $_fbs_val['USFLINK']; ?>"><?php echo $_fbs_val['USERNAME']; ?></a> (<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>feedback.php?id=<?php echo $_fbs_val['USERID']; ?>&faction=show"><?php echo $_fbs_val['USFEED']; ?></a>) <?php if ($_fbs_val['FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo $_fbs_val['FB_ICON']; ?>" alt="<?php echo $_fbs_val['FB_ICON']; ?>" class="fbstar"><?php } ?>
							</div>
							<div class="col-md-6 col-sm-6">
								<small><?php echo $_fbs_val['FBDATE']; ?></small>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-12">
								<img src="<?php echo $_fbs_val['IMG']; ?>" align="middle" alt=""> <?php echo $_fbs_val['FEEDBACK']; ?><hr>
							</div>
<?php }} ?>
						</div>
					</div>
				</div>
				<table class="table hidden-xs">
					<tr class="titTable2">
						<td width="5%">&nbsp;</td>
						<td width="40%"><?php echo ((isset($this->_rootref['L_503'])) ? $this->_rootref['L_503'] : ((isset($MSG['503'])) ? $MSG['503'] : '{ L_503 }')); ?></td>
						<td width="15%"><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?></td>
						<td width="15%"><?php echo ((isset($this->_rootref['L_259'])) ? $this->_rootref['L_259'] : ((isset($MSG['259'])) ? $MSG['259'] : '{ L_259 }')); ?></td>
						<td width="15%"><?php echo ((isset($this->_rootref['L_314'])) ? $this->_rootref['L_314'] : ((isset($MSG['314'])) ? $MSG['314'] : '{ L_314 }')); ?></td>
					</tr>
<?php $_fbs_count = (isset($this->_tpldata['fbs'])) ? sizeof($this->_tpldata['fbs']) : 0;if ($_fbs_count) {for ($_fbs_i = 0; $_fbs_i < $_fbs_count; ++$_fbs_i){$_fbs_val = &$this->_tpldata['fbs'][$_fbs_i]; ?>
					<tr <?php echo $_fbs_val['BGCOLOUR']; ?>>
						<td>
							<img src="<?php echo $_fbs_val['IMG']; ?>" align="middle" alt="">
						</td>
						<td>
							<?php echo $_fbs_val['FEEDBACK']; ?>
						</td>
						<td>
							<a href="<?php echo $_fbs_val['USFLINK']; ?>"><?php echo $_fbs_val['USERNAME']; ?></a> (<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>feedback.php?id=<?php echo $_fbs_val['USERID']; ?>&faction=show"><?php echo $_fbs_val['USFEED']; ?></a>) <?php if ($_fbs_val['FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo $_fbs_val['FB_ICON']; ?>" alt="<?php echo $_fbs_val['FB_ICON']; ?>" class="fbstar"><?php } ?>
						</td>
						<td>
							<?php echo $_fbs_val['AUCTIONURL']; ?>
						</td>
						<td>
							<?php echo $_fbs_val['FBDATE']; ?>
						</td>
					</tr>
<?php }} ?>
				</table>
				<div class="text-center"> <?php echo (isset($this->_rootref['PAGENATION'])) ? $this->_rootref['PAGENATION'] : ''; ?></div>
			</div>
		</div>
	</div>
</div>