<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo (isset($this->_rootref['TYPENAME'])) ? $this->_rootref['TYPENAME'] : ''; ?>&nbsp;&gt;&gt;&nbsp;<?php echo (isset($this->_rootref['PAGENAME'])) ? $this->_rootref['PAGENAME'] : ''; ?></h4>
				<form name="conf" action="" method="post" enctype="multipart/form-data">
					<div class="panel panel-default">
<?php $_block_count = (isset($this->_tpldata['block'])) ? sizeof($this->_tpldata['block']) : 0;if ($_block_count) {for ($_block_i = 0; $_block_i < $_block_count; ++$_block_i){$_block_val = &$this->_tpldata['block'][$_block_i]; if ($_block_val['B_HEADER']) {  ?>
						<div class="panel-heading"><b><?php echo $_block_val['TITLE']; ?></b></div>
	<?php } else { ?>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><?php echo $_block_val['TITLE']; ?></div>
								<div class="col-md-9">
									<?php echo $_block_val['DESCRIPTION']; ?>
		<?php if ($_block_val['TYPE'] == ('yesno')) {  ?>
									<input type="radio" name="<?php echo $_block_val['NAME']; ?>" value="y"<?php if ($_block_val['DEFAULT'] == ('y')) {  ?> checked<?php } ?>> <?php echo $_block_val['TAGLINE1']; ?>
									<input type="radio" name="<?php echo $_block_val['NAME']; ?>" value="n"<?php if ($_block_val['DEFAULT'] == ('n')) {  ?> checked<?php } ?>> <?php echo $_block_val['TAGLINE2']; ?>
		<?php } else if ($_block_val['TYPE'] == ('text')) {  ?>
									<input type="text" name="<?php echo $_block_val['NAME']; ?>" value="<?php echo $_block_val['DEFAULT']; ?>" size="50" maxlength="255">
		<?php } else { ?>
									<?php echo $_block_val['TYPE']; ?>
		<?php } ?>
								</div>
							</div>
						</div>
	<?php } }} ?>
						<button type="button" class="btn btn-default" onclick="showDialog();return false;"><?php echo ((isset($this->_rootref['L_1137'])) ? $this->_rootref['L_1137'] : ((isset($MSG['1137'])) ? $MSG['1137'] : '{ L_1137 }')); ?></button>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act" class="centre"><?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?></button>
				</form>
			</div>
		</div>
		<div id="dialog-modal" title="<?php echo ((isset($this->_rootref['L_1134'])) ? $this->_rootref['L_1134'] : ((isset($MSG['1134'])) ? $MSG['1134'] : '{ L_1134 }')); ?>" style="display: none;">
			<div class="rounded-top rounded-bottom">
				Mail details currently saved and used during this test:<br><br>
				Mail Protocol = <?php echo (isset($this->_rootref['MAIL_PROTOCOL'])) ? $this->_rootref['MAIL_PROTOCOL'] : ''; ?><br>
				Smtp Authentication = <?php echo (isset($this->_rootref['SMTP_AUTH'])) ? $this->_rootref['SMTP_AUTH'] : ''; ?><br>
				Smtp Security = <?php echo (isset($this->_rootref['SMTP_SEC'])) ? $this->_rootref['SMTP_SEC'] : ''; ?><br>
				Smtp Port = <?php echo (isset($this->_rootref['SMTP_PORT'])) ? $this->_rootref['SMTP_PORT'] : ''; ?><br>
				Smtp Username = <?php echo (isset($this->_rootref['SMTP_USER'])) ? $this->_rootref['SMTP_USER'] : ''; ?><br>
				Smtp Password = <?php echo (isset($this->_rootref['SMTP_PASS'])) ? $this->_rootref['SMTP_PASS'] : ''; ?><br>
				Smtp Host = <?php echo (isset($this->_rootref['SMTP_HOST'])) ? $this->_rootref['SMTP_HOST'] : ''; ?><br>
				Alert Emails = <?php echo (isset($this->_rootref['ALERT_EMAILS'])) ? $this->_rootref['ALERT_EMAILS'] : ''; ?><br>
				Don't forget to save any changes to take effect <button class="btn btn-primary" onclick="$('form[name=conf]').submit();">Save changes</button>
			</div>
			<?php echo ((isset($this->_rootref['L_1135'])) ? $this->_rootref['L_1135'] : ((isset($MSG['1135'])) ? $MSG['1135'] : '{ L_1135 }')); ?>
			<div class="test_m">hi</div>
			<div class="form-style" id="contact_form">
				<p><button class="test_button" onclick="showDialog();" style="button"><?php echo ((isset($this->_rootref['L_1136'])) ? $this->_rootref['L_1136'] : ((isset($MSG['1136'])) ? $MSG['1136'] : '{ L_1136 }')); ?></button></p>
				<div id="contact_results"></div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				$(document).on('click', '.test_button',  function(e) {
					e.preventDefault();
					if ($('#text_testmail').val() == '')
					{
						alert('Empty messages cause errors!');
					}
					post_data = {
						'user_name'     : '<?php echo ((isset($this->_rootref['L_1139'])) ? $this->_rootref['L_1139'] : ((isset($MSG['1139'])) ? $MSG['1139'] : '{ L_1139 }')); ?>',
						'user_email'    : '<?php echo (isset($this->_rootref['ADMIN_EMAIL'])) ? $this->_rootref['ADMIN_EMAIL'] : ''; ?>',
						'subject'       : '<?php echo ((isset($this->_rootref['L_1138'])) ? $this->_rootref['L_1138'] : ((isset($MSG['1138'])) ? $MSG['1138'] : '{ L_1138 }')); ?>',
						'message'       : $('#text_testmail').val(),
						'csrftoken'     : $('input[name=csrftoken]').val()
					};
					//Ajax post data to server
					$.post('emailsettings.php?test_email', post_data, function(response) {
						//load json data from server and output message
						if(response.type == 'error')
						{
							output = '<div class="error-box">'+response.text+'</div>';
						}
						else
						{
							output = '<div class="success-box">'+response.text+'</div>';
						}
						$("#contact_form #contact_results").hide().html(output).slideDown();
					}, 'json');
				});
			});
			function showDialog()
			{
				$("#dialog-modal").dialog(
				{
					width: 600,
					height: 500,
					buttons: {
					"<?php echo ((isset($this->_rootref['L_1140'])) ? $this->_rootref['L_1140'] : ((isset($MSG['1140'])) ? $MSG['1140'] : '{ L_1140 }')); ?>": function() {
							$(this).dialog("close");
						}
					},
					open: function(event, ui)
					{
							var textarea = $('<input type="textarea" id="text_testmail" name="text_testmail" style="height: 50px; width:90%;">');
							$('.test_m').html(textarea);
					}
				});
			}
			
			$(document).ready(function() {
				if ($('select[name=mail_protocol] option:selected').val() == 2)
				{
					$('.smtp').parent().parent().show();
					$('.non_smtp').parent().parent().hide();
				}
				else
				{
					$('.smtp').parent().parent().hide();
					$('.non_smtp').parent().parent().show();
				}
				if ($('select[name=mail_protocol] option:selected').val() == 0)
				{
					$('.para').parent().parent().show();
				}
				else
				{
					$('.para').parent().parent().hide();
				}
			
				$('select[name=mail_protocol]').on('change', function() {
					//alert('changid');
					if ($(this).val() == 2)
					{
						$('.smtp').parent().parent().show(300);
						$('.non_smtp').parent().parent().hide();
					}
					else
					{
						$('.smtp').parent().parent().hide();
						$('.non_smtp').parent().parent().show(300);
					}
					if ($(this).val() == 0)
					{
						$('.para').parent().parent().show(300);
					}
					else
					{
						$('.para').parent().parent().hide();
					}
				});
			});
		</script>