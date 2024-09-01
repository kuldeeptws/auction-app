<div class="row">
	<div class="col-md-12">
		<div class="col-md-12 well">
			<legend><?php echo ((isset($this->_rootref['L_206'])) ? $this->_rootref['L_206'] : ((isset($MSG['206'])) ? $MSG['206'] : '{ L_206 }')); ?></legend>
<?php if ($this->_rootref['B_VIEW']) {  ?>
			<div class="col-md-12 grid-padding">
<?php if ($this->_rootref['B_AUCID']) {  ?>
				<a class="btn btn-default btn-xs grid-margin-btm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo (isset($this->_rootref['AUCTION_ID'])) ? $this->_rootref['AUCTION_ID'] : ''; ?>"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span><?php echo ((isset($this->_rootref['L_138'])) ? $this->_rootref['L_138'] : ((isset($MSG['138'])) ? $MSG['138'] : '{ L_138 }')); ?></a>
<?php } ?>
				<a class="btn btn-success btn-xs grid-margin-btm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>active_auctions.php?user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_213'])) ? $this->_rootref['L_213'] : ((isset($MSG['213'])) ? $MSG['213'] : '{ L_213 }')); ?></a>
				<a class="btn btn-danger btn-xs grid-margin-btm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>closed_auctions.php?user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_214'])) ? $this->_rootref['L_214'] : ((isset($MSG['214'])) ? $MSG['214'] : '{ L_214 }')); ?></a>
<?php if ($this->_rootref['B_CONTACT']) {  ?>
				<a class="btn btn-info btn-xs grid-margin-btm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>email_request.php?user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>&amp;username=<?php echo (isset($this->_rootref['USER'])) ? $this->_rootref['USER'] : ''; ?>&amp;auction_id=<?php echo (isset($this->_rootref['AUCTION_ID'])) ? $this->_rootref['AUCTION_ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_210'])) ? $this->_rootref['L_210'] : ((isset($MSG['210'])) ? $MSG['210'] : '{ L_210 }')); echo (isset($this->_rootref['USER'])) ? $this->_rootref['USER'] : ''; ?></a>
<?php } ?>
				<a class="btn btn-warning btn-xs grid-margin-btm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>feedback.php?id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>&amp;faction=show"><?php echo ((isset($this->_rootref['L_208'])) ? $this->_rootref['L_208'] : ((isset($MSG['208'])) ? $MSG['208'] : '{ L_208 }')); ?></a>
			</div>
			<div class="col-md-6">
				<h4><span style="margin-right: 10px;" class="glyphicon glyphicon-user" aria-hidden="true"></span><?php echo (isset($this->_rootref['USER'])) ? $this->_rootref['USER'] : ''; ?> (<?php echo (isset($this->_rootref['SUM_FB'])) ? $this->_rootref['SUM_FB'] : ''; ?>) <?php if ($this->_rootref['FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo (isset($this->_rootref['FB_ICON'])) ? $this->_rootref['FB_ICON'] : ''; ?>" alt="<?php echo (isset($this->_rootref['FB_ICON'])) ? $this->_rootref['FB_ICON'] : ''; ?>" class="fbstar"><?php } ?></h4><br>
				<ul class="list-unstyled">
					<li><?php echo ((isset($this->_rootref['L_209'])) ? $this->_rootref['L_209'] : ((isset($MSG['209'])) ? $MSG['209'] : '{ L_209 }')); ?> <b><?php echo (isset($this->_rootref['REGSINCE'])) ? $this->_rootref['REGSINCE'] : ''; ?></b><br></li>
					<li><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?> <b><?php echo (isset($this->_rootref['COUNTRY'])) ? $this->_rootref['COUNTRY'] : ''; ?></b><br></li>
					<li><?php echo ((isset($this->_rootref['L_502'])) ? $this->_rootref['L_502'] : ((isset($MSG['502'])) ? $MSG['502'] : '{ L_502 }')); ?> <b><?php echo (isset($this->_rootref['NUM_FB'])) ? $this->_rootref['NUM_FB'] : ''; ?></b><br></li>
					<li><?php echo (isset($this->_rootref['FB_POS'])) ? $this->_rootref['FB_POS'] : ''; ?></li>
					<li><?php echo (isset($this->_rootref['FB_NEUT'])) ? $this->_rootref['FB_NEUT'] : ''; ?></li>
					<li><?php echo (isset($this->_rootref['FB_NEG'])) ? $this->_rootref['FB_NEG'] : ''; ?></li>
				</ul><br>
			</div>
			<div class="col-md-6">
				<h4><?php echo ((isset($this->_rootref['L_385'])) ? $this->_rootref['L_385'] : ((isset($MSG['385'])) ? $MSG['385'] : '{ L_385 }')); ?></h4>
				<table class="table table-bordered">
					<tr>
						<td width="40%">&nbsp;</td>
						<td align="center" width="20%"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/positive.png"></td>
						<td align="center" width="20%"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/neutral.png"></td>
						<td align="center" width="20%"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/negative.png"></td>
					</tr>
					<tr valign="top">
						<td colspan="4" bgcolor="#eeeeee"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/transparent.gif" width="1" height="5"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_386'])) ? $this->_rootref['L_386'] : ((isset($MSG['386'])) ? $MSG['386'] : '{ L_386 }')); ?></td>
						<td align="center" style="color:#009933"><?php echo (isset($this->_rootref['FB_LASTMONTH_POS'])) ? $this->_rootref['FB_LASTMONTH_POS'] : ''; ?></td>
						<td align="center"><?php echo (isset($this->_rootref['FB_LASTMONTH_NEUT'])) ? $this->_rootref['FB_LASTMONTH_NEUT'] : ''; ?></td>
						<td align="center" style="color:#FF0000"><?php echo (isset($this->_rootref['FB_LASTMONTH_NEG'])) ? $this->_rootref['FB_LASTMONTH_NEG'] : ''; ?></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_387'])) ? $this->_rootref['L_387'] : ((isset($MSG['387'])) ? $MSG['387'] : '{ L_387 }')); ?></td>
						<td align="center" style="color:#009933"><?php echo (isset($this->_rootref['FB_LAST3MONTH_POS'])) ? $this->_rootref['FB_LAST3MONTH_POS'] : ''; ?></td>
						<td align="center"><?php echo (isset($this->_rootref['FB_LAST3MONTH_NEUT'])) ? $this->_rootref['FB_LAST3MONTH_NEUT'] : ''; ?></td>
						<td align="center" style="color:#FF0000"><?php echo (isset($this->_rootref['FB_LAST3MONTH_NEG'])) ? $this->_rootref['FB_LAST3MONTH_NEG'] : ''; ?></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_388'])) ? $this->_rootref['L_388'] : ((isset($MSG['388'])) ? $MSG['388'] : '{ L_388 }')); ?></td>
						<td align="center" style="color:#009933"><?php echo (isset($this->_rootref['FB_LASTYEAR_POS'])) ? $this->_rootref['FB_LASTYEAR_POS'] : ''; ?></td>
						<td align="center"><?php echo (isset($this->_rootref['FB_LASTYEAR_NEUT'])) ? $this->_rootref['FB_LASTYEAR_NEUT'] : ''; ?></td>
						<td align="center" style="color:#FF0000"><?php echo (isset($this->_rootref['FB_LASTYEAR_NEG'])) ? $this->_rootref['FB_LASTYEAR_NEG'] : ''; ?></td>
					</tr>
					<tr valign="top">
						<td colspan="4" bgcolor="#eeeeee"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/transparent.gif" width="1" height="5"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_389'])) ? $this->_rootref['L_389'] : ((isset($MSG['389'])) ? $MSG['389'] : '{ L_389 }')); ?></td>
						<td align="center" style="color:#009933"><?php echo (isset($this->_rootref['FB_SELLER_POS'])) ? $this->_rootref['FB_SELLER_POS'] : ''; ?></td>
						<td align="center"><?php echo (isset($this->_rootref['FB_SELLER_NEUT'])) ? $this->_rootref['FB_SELLER_NEUT'] : ''; ?></td>
						<td align="center" style="color:#FF0000"><?php echo (isset($this->_rootref['FB_SELLER_NEG'])) ? $this->_rootref['FB_SELLER_NEG'] : ''; ?></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_390'])) ? $this->_rootref['L_390'] : ((isset($MSG['390'])) ? $MSG['390'] : '{ L_390 }')); ?></td>
						<td align="center" style="color:#009933"><?php echo (isset($this->_rootref['FB_BUYER_POS'])) ? $this->_rootref['FB_BUYER_POS'] : ''; ?></td>
						<td align="center"><?php echo (isset($this->_rootref['FB_BUYER_NEUT'])) ? $this->_rootref['FB_BUYER_NEUT'] : ''; ?></td>
						<td align="center" style="color:#FF0000"><?php echo (isset($this->_rootref['FB_BUYER_NEG'])) ? $this->_rootref['FB_BUYER_NEG'] : ''; ?></td>
					</tr>
				</table>
			</div>
<?php } else { ?>
			<div class="padding">
				<?php echo (isset($this->_rootref['MSG'])) ? $this->_rootref['MSG'] : ''; ?>
			</div>
<?php } ?>
		</div>
	</div>
</div>