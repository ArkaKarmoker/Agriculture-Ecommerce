<script src="https://www.paypal.com/sdk/js?client-id=ARQgo8RT9Rp9FOrkeJ3pRo2zyPq-7CEWLjRtnItYnrIPkabwQ2x11ofZddQHOFEE60EK7VQ6lBs4H_MS&currency=USD"></script>

<div class="content py-3">
    <div class="card card-outline card-primary shadow rounded-0">
        <div class="card-header">
            <div class="h5 card-title">Checkout</div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-8">
                    <form action="" id="checkout-form">
                        <div class="form-group">
                            <label for="delivery_address" class="control-label">Delivery Address</label>
                            <textarea name="delivery_address" id="delivery_address" rows="4" class="form-control rounded-0" required><?= $_settings->userdata('address') ?></textarea>
                        </div>
                        <div class="form-group text-right">
                            <!-- PayPal Button container -->
                            <div id="paypal-button-container"></div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="row" id="summary">
                        <div class="col-12 border">
                            <h2 class="text-center"><b>Summary</b></h2>
                        </div>
                        <?php
                        $gtotal = 0;
                        $vendors = $conn->query("SELECT * FROM `vendor_list` where id in (SELECT vendor_id from product_list where id in (SELECT product_id FROM `cart_list` where client_id ='{$_settings->userdata('id')}')) order by `shop_name` asc");
                        while($vrow=$vendors->fetch_assoc()):
                            $vtotal = $conn->query("SELECT sum(c.quantity * p.price) FROM `cart_list` c inner join product_list p on c.product_id = p.id where c.client_id = '{$_settings->userdata('id')}' and p.vendor_id = '{$vrow['id']}'")->fetch_array()[0];
                            $vtotal = $vtotal > 0 ? $vtotal : 0;
                            $gtotal += $vtotal;
                            ?>
                            <div class="col-12 border item">
                                <b class="text-muted"><small><?= $vrow['code']." - ".$vrow['shop_name'] ?></small></b>
                                <div class="text-right"><b><?= format_num($vtotal) ?></b> tk</div>
                            </div>
                        <?php endwhile; ?>
                        <div class="col-12 border">
                            <b class="text-muted">Grand Total</b>
                            <div class="text-right h3" id="total"><b><?= format_num($gtotal) ?> tk</b></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Initialize PayPal button
    paypal.Buttons({
        createOrder: function(data, actions) {
            // Set up the transaction with total value from PHP
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '<?= $gtotal ?>' // Use PHP to insert the total amount
                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            // After payment is approved
            return actions.order.capture().then(function(details) {
                // Show a success message to the user
                alert_toast("Payment completed by " + details.payer.name.given_name,'success');

                // Submit the form programmatically after payment
                $('#checkout-form').submit();
            });
        },
        onError: function(err) {
            console.error(err);
            alert_toast("An error occurred with PayPal payment. Please try again.", 'error');
        }
    }).render('#paypal-button-container'); // Display PayPal button in this container

    // Override form submission to check if order items exist and handle errors
    $('#checkout-form').submit(function(e){
        e.preventDefault(); // Prevent default submission
        var _this = $(this);

        if (_this[0].checkValidity() == false) {
            _this[0].reportValidity();
            return false;
        }

        if ($('#summary .item').length <= 0) {
            alert_toast("There is no order listed in the cart yet.", 'error');
            return false;
        }

        $('.pop_msg').remove();
        var el = $('<div>');
        el.addClass("alert alert-danger pop_msg");
        el.hide();
        start_loader();

        $.ajax({
            url: _base_url_ + 'classes/Master.php?f=place_order',
            method: 'POST',
            data: _this.serialize(),
            dataType: 'json',
            error: err => {
                console.error(err);
                alert_toast("An error occurred.", 'error');
                end_loader();
            },
            success: function(resp) {
                if (resp.status == 'success') {
                    location.replace('./?page=products');
                } else if (!!resp.msg) {
                    el.text(resp.msg);
                    _this.prepend(el);
                    el.show('slow');
                    $('html, body').scrollTop(0);
                } else {
                    el.text("An error occurred.");
                    _this.prepend(el);
                    el.show('slow');
                    $('html, body').scrollTop(0);
                }
                end_loader();
            }
        });
    });
</script>
