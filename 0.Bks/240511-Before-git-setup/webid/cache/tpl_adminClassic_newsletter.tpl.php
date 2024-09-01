<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_607'])) ? $this->_rootref['L_607'] : ((isset($MSG['607'])) ? $MSG['607'] : '{ L_607 }')); ?></h4>
				<form name="conf" action="" method="post">
<?php if ($this->_rootref['B_PREVIEW']) {  ?>
					<div class="main-box jumbo-box">
						<h1><?php echo (isset($this->_rootref['SUBJECT'])) ? $this->_rootref['SUBJECT'] : ''; ?></h1>
						<?php echo (isset($this->_rootref['PREVIEW'])) ? $this->_rootref['PREVIEW'] : ''; ?>
					</div>
<?php } ?>
					<table width="98%" cellpadding="2" align="center" class="blank">
						<tr valign="top">
							<td width="175"><?php echo ((isset($this->_rootref['L_5299'])) ? $this->_rootref['L_5299'] : ((isset($MSG['5299'])) ? $MSG['5299'] : '{ L_5299 }')); ?></td>
							<td style="padding:3px;">
								<?php echo (isset($this->_rootref['SELECTBOX'])) ? $this->_rootref['SELECTBOX'] : ''; ?>
							</td>
						</tr>
						<tr valign="top">
							<td width="175"><?php echo ((isset($this->_rootref['L_332'])) ? $this->_rootref['L_332'] : ((isset($MSG['332'])) ? $MSG['332'] : '{ L_332 }')); ?></td>
							<td style="padding:3px;">
								<input type="text" name="subject" value="<?php echo (isset($this->_rootref['SUBJECT'])) ? $this->_rootref['SUBJECT'] : ''; ?>" size="50" maxlength="255">
							</td>
						</tr>
						<tr valign="top">
							<td width="175"><?php echo ((isset($this->_rootref['L_605'])) ? $this->_rootref['L_605'] : ((isset($MSG['605'])) ? $MSG['605'] : '{ L_605 }')); ?></td>
							<td style="padding:3px;">
								<?php echo (isset($this->_rootref['EDITOR'])) ? $this->_rootref['EDITOR'] : ''; ?>
							</td>
						</tr>
					</table>
<?php if ($this->_rootref['B_PREVIEW']) {  ?>
					<span class="smallspan"><?php echo ((isset($this->_rootref['L_606'])) ? $this->_rootref['L_606'] : ((isset($MSG['606'])) ? $MSG['606'] : '{ L_606 }')); ?></span>
					<input type="hidden" name="action" value="submit">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_398'])) ? $this->_rootref['L_398'] : ((isset($MSG['398'])) ? $MSG['398'] : '{ L_398 }')); ?>">
<?php } else { ?>
					<input type="hidden" name="action" value="preview">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_25_0224'])) ? $this->_rootref['L_25_0224'] : ((isset($MSG['25_0224'])) ? $MSG['25_0224'] : '{ L_25_0224 }')); ?>">
<?php } ?>
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				</form>
			</div>
		</div>