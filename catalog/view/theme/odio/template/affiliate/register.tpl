<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
  <h1><?php echo $heading_title; ?></h1>
  <p><?php echo $text_account_already; ?></p>
  <p><?php echo $text_signup; ?></p>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content">
	<div class="left">
      <h2><?php echo $text_your_details; ?></h2>
      <table class="form">
        <tr>
          <td><?php echo $entry_firstname; ?><span class="required">*</span></td>
          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" /></td>
        </tr>
		<?php if ($error_firstname) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_firstname; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_lastname; ?><span class="required">*</span></td>
          <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" /></td>
        </tr>
		<?php if ($error_lastname) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_lastname; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_email; ?><span class="required">*</span></td>
          <td><input type="text" name="email" value="<?php echo $email; ?>" /></td>
        </tr>
		<?php if ($error_email) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_email; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_telephone; ?><span class="required">*</span></td>
          <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" /></td>
        </tr>
		<?php if ($error_telephone) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_telephone; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_fax; ?></td>
          <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_company; ?></td>
          <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_website; ?></td>
          <td><input type="text" name="website" value="<?php echo $website; ?>" /></td>
        </tr>
      </table>
    </div>
    <div class="right">
      <h2><?php echo $text_your_address; ?></h2>
      <table class="form">
        <tr>
          <td><?php echo $entry_address_1; ?><span class="required">*</span></td>
          <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" /></td>
        </tr>
		<?php if ($error_address_1) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_address_1; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_address_2; ?></td>
          <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_city; ?><span class="required">*</span></td>
          <td><input type="text" name="city" value="<?php echo $city; ?>" /></td>
        </tr>
		<?php if ($error_city) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_city; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_postcode; ?><span id="postcode-required" class="required">*</span></td>
          <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
        </tr>
		<?php if ($error_postcode) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_postcode; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_country; ?><span class="required">*</span></td>
          <td><select name="country_id">
              <option value="false"><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </td>
        </tr>
		<?php if ($error_country) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_country; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_zone; ?><span class="required">*</span></td>
          <td><select name="zone_id"></select></td>
        </tr>
		<?php if ($error_zone) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_zone; ?></span></td>
        </tr>
		<?php } ?>
      </table>
    </div>
	</div>
	<div class="content">
    <div class="left">
      <h2><?php echo $text_payment; ?></h2>
      <table class="form">
        <tr>
          <td><?php echo $entry_tax; ?></td>
          <td><input type="text" name="tax" value="<?php echo $tax; ?>" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_payment; ?></td>
          <td><?php if ($payment == 'cheque') { ?>
            <input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
            <?php } else { ?>
            <input type="radio" name="payment" value="cheque" id="cheque" />
            <?php } ?>
            <label for="cheque"><?php echo $text_cheque; ?>&nbsp;&nbsp;&nbsp;</label>
            <?php if ($payment == 'paypal') { ?>
            <input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
            <?php } else { ?>
            <input type="radio" name="payment" value="paypal" id="paypal" />
            <?php } ?>
            <label for="paypal"><?php echo $text_paypal; ?>&nbsp;&nbsp;&nbsp;</label>
            <?php if ($payment == 'bank') { ?>
            <input type="radio" name="payment" value="bank" id="bank" checked="checked" />
            <?php } else { ?>
            <input type="radio" name="payment" value="bank" id="bank" />
            <?php } ?>
            <label for="bank"><?php echo $text_bank; ?></label></td>
        </tr>
        <tbody id="payment-cheque" class="payment">
          <tr>
            <td><?php echo $entry_cheque; ?></td>
            <td><input type="text" name="cheque" value="<?php echo $cheque; ?>" /></td>
          </tr>
        </tbody>
        <tbody class="payment" id="payment-paypal">
          <tr>
            <td><?php echo $entry_paypal; ?></td>
            <td><input type="text" name="paypal" value="<?php echo $paypal; ?>" /></td>
          </tr>
        </tbody>
        <tbody id="payment-bank" class="payment">
          <tr>
            <td><?php echo $entry_bank_name; ?></td>
            <td><input type="text" name="bank_name" value="<?php echo $bank_name; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_bank_branch_number; ?></td>
            <td><input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_bank_swift_code; ?></td>
            <td><input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_bank_account_name; ?></td>
            <td><input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_bank_account_number; ?></td>
            <td><input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" /></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="right">
      <h2><?php echo $text_your_password; ?></h2>
      <table class="form">
        <tr>
          <td><?php echo $entry_password; ?><span class="required">*</span></td>
          <td><input type="password" name="password" value="<?php echo $password; ?>" /></td>
        </tr>
		<?php if ($error_password) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_password; ?></span></td>
        </tr>
		<?php } ?>
        <tr>
          <td><?php echo $entry_confirm; ?><span class="required">*</span></td>
          <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" /></td>
        </tr>
		<?php if ($error_confirm) { ?>
        <tr>
          <td colspan="2"><span class="error"><?php echo $error_confirm; ?></span></td>
        </tr>
		<?php } ?>
      </table>
    </div>
	</div>
    <?php if ($text_agree) { ?>
    <div class="buttons clearafter">
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="icon-forward-white button" />
      </div>
      <p>
      <?php if ($agree) { ?>
      <input type="checkbox" name="agree" value="1" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="agree" value="1" />
      <?php } ?>
      <?php echo $text_agree; ?>
      </p>
    </div>
    <?php } else { ?>
    <div class="buttons clearafter">
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="icon-forward-white button" />
      </div>
    </div>
    <?php } ?>
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=affiliate/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').before('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>