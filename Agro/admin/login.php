<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<?php require_once('inc/header.php') ?>
<body class="hold-transition login-page">
<script>
    start_loader()
</script>
<style>
    body {
        width: calc(100%);
        height: calc(100%);
        background-image: url('<?= validate_image($_settings->info('cover')) ?>');
        background-repeat: no-repeat;
        background-size: cover;
    }

    #logo-img {
        width: 15em;
        height: 15em;
        object-fit: scale-down;
        object-position: center center;
    }

    #system_name {
        color: #fff;
        text-shadow: 3px 3px 3px #000;
    }
</style>
<center><img src="<?= validate_image($_settings->info('logo')) ?>" alt="System Logo"
             class="img-thumbnail rounded-circle" id="logo-img"></center>
<h1 class="text-center" id="system_name"><?= $_settings->info('name') ?></h1>
<div class="clear-fix my-2"></div>
<div class="login-box">

    <!-- /.login-logo -->
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <a href="./" class="h1"><b>Admin Login</b></a>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Sign in to start your session</p>

            <form id="login-frm" action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" name="username" autofocus placeholder="Username">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row align-item-end">
                    <div class="col-8">
                        <a href="<?= base_url ?>">Back to Site</a>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <!-- /.social-auth-links -->

            <!-- <p class="mb-1">
              <a href="forgot-password.html">I forgot my password</a>
            </p> -->

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<script>
    $(document).ready(function () {
        end_loader();

        // Check if the admin email cookie exists and set it if found
        const emailCookie = getCookie('admin_email');
        if (emailCookie) {
            $('input[name="username"]').val(emailCookie);  // Prefill the username with the saved email
        }

        // Handle form submission to save email cookie
        $('#login-frm').submit(function (e) {
            e.preventDefault();  // Prevent the default form submission

            var username = $('input[name="username"]').val();
            var password = $('input[name="password"]').val();

            // Submit the form via AJAX or continue with normal submission
            // For now, we're just saving the email in the cookie when the form is submitted

            if (username && password) {
                // Save admin email in a cookie for 30 days
                setCookie('admin_email', username, 30);

                // Proceed with form submission if needed (can use AJAX here for validation)
                this.submit();  // This will submit the form normally
            }
        });

    });

    // Set a cookie
    function setCookie(name, value, days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    // Get a cookie value by name
    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }
</script>
</body>
</html>