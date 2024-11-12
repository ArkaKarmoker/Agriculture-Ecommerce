
<div class="content py-3">
    <div class="card rounded-0 card-outline card-navy shadow" >
        <div class="card-body rounded-0">
            <h2 class="text-center">About</h2>
            <center><hr class="bg-navy border-navy w-25 border-2"></center>
            <div>
                <?= file_get_contents("about.html") ?>
                <div class="col-lg-12">
                    <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8313.788016962262!2d90.43137841528004!3d23.808742936959703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c64c103a8093%3A0xd660a4f50365294a!2snorth%20South%20university!5e0!3m2!1sen!2sbd!4v1685651061472!5m2!1sen!2sbd"
                            width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""
                            aria-hidden="false" tabindex="0"></iframe>
                    <div class="info mt-4">
                        <i class="icofont-google-map"></i>
                        <h4>Location:</h4>
                        <p>Block B, North South University, Dhaka</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 mt-4">
                            <div class="info">
                                <i class="icofont-envelope"></i>
                                <h4>Email:</h4>
                                <p>info@agro.com</p>
                            </div>
                        </div>
                        <div class="col-lg-6 mt-4">
                            <div class="info">
                                <i class="icofont-phone"></i>
                                <h4>Call:</h4>
                                <p>+88012546525</p>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>