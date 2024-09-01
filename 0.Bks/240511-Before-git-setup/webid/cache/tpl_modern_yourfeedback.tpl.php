<?php $this->_tpl_include('user_menu_header.tpl'); ?>

<div class="row">
	<div class="col-md-12">
		<div class="well well-sm">
			<h4><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <?php echo (isset($this->_rootref['USERNICK'])) ? $this->_rootref['USERNICK'] : ''; ?> (<?php echo (isset($this->_rootref['USERFB'])) ? $this->_rootref['USERFB'] : ''; ?>) <?php if ($this->_rootref['USER_FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo (isset($this->_rootref['USER_FB_ICON'])) ? $this->_rootref['USER_FB_ICON'] : ''; ?>" alt="<?php echo (isset($this->_rootref['USER_FB_ICON'])) ? $this->_rootref['USER_FB_ICON'] : ''; ?>" class="fbstar"><?php } ?></h4>
		</div>
	</div>
</div>
<div class="panel panel-default">
	<table class="table table-bordered table-condensed table-striped">
<?php $_fbs_count = (isset($this->_tpldata['fbs'])) ? sizeof($this->_tpldata['fbs']) : 0;if ($_fbs_count) {for ($_fbs_i = 0; $_fbs_i < $_fbs_count; ++$_fbs_i){$_fbs_val = &$this->_tpldata['fbs'][$_fbs_i]; ?>
		<tr <?php echo $_fbs_val['BGCOLOUR']; ?>>
			<td>
				<img src="<?php echo $_fbs_val['IMG']; ?>" align="middle" alt="">
			</td>
			<td>
				<b><a href="<?php echo $_fbs_val['USFLINK']; ?>"><?php echo $_fbs_val['USERNAME']; ?> (<?php echo $_fbs_val['USFEED']; ?>)</a></b> <?php if ($_fbs_val['FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo $_fbs_val['FB_ICON']; ?>" alt="<?php echo $_fbs_val['FB_ICON']; ?>" class="fbstar"><?php } ?>
				<span class="text-muted"><small>(<?php echo ((isset($this->_rootref['L_506'])) ? $this->_rootref['L_506'] : ((isset($MSG['506'])) ? $MSG['506'] : '{ L_506 }')); echo $_fbs_val['FBDATE']; ?> <?php echo ((isset($this->_rootref['L_25_0177'])) ? $this->_rootref['L_25_0177'] : ((isset($MSG['25_0177'])) ? $MSG['25_0177'] : '{ L_25_0177 }')); ?>
		<?php if ($_fbs_val['AUCTION_TITLE'] == ('')) {  ?>
				<?php echo ((isset($this->_rootref['L_113'])) ? $this->_rootref['L_113'] : ((isset($MSG['113'])) ? $MSG['113'] : '{ L_113 }')); echo $_fbs_val['AUCTION_ID']; ?>
		<?php } else { ?>
				<a href="item.php?id=<?php echo $_fbs_val['AUCTION_ID']; ?>"><?php echo $_fbs_val['AUCTION_TITLE']; ?></a>
		<?php } ?>
				)</small></span>
				<br>
				<b><?php echo ((isset($this->_rootref['L_504'])) ? $this->_rootref['L_504'] : ((isset($MSG['504'])) ? $MSG['504'] : '{ L_504 }')); ?>: </b><?php echo $_fbs_val['FEEDBACK']; ?>
			</td>
		</tr>
<?php }} ?>
	</table>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td align="center">
			<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?></span></small>
			<nav>
				<ul class="pagination">
					<br>
					<li><?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?></li>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
					<li><?php echo $_pages_val['PAGE']; ?></li>
<?php }} ?>
					<li><?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?></li>
				</ul>
			</nav>
		</td>
	</tr>
</table>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>