<?php
session_start();
if (isset($_SESSION['auth'])) {
    $_SESSION['message'] = "Ban da dang nhap";
    header('location:index.php');
    exit();
}
include('includes/header.php') ?>


<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <?php if (isset($_SESSION['message'])) { ?>
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Hey!</strong> <?= $_SESSION['message']; ?>.
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <?php unset($_SESSION['message']);
                } ?>
                <div class="card"
                    style="top: 50%;left: 50%;transform: translate(-50%,-50%);display: flex;flex-direction: row;align-items: center;background-color: white;padding: 30px;box-shadow: 0 50px 50px -50px darkslategray;">
                    <div class="card-body">
                        <h4 style="font-size: 50px;font-weight: 900;">Register</h4>
                        <form action="funtions/authcode.php" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input required type="text" name="name" class="form-control"
                                    placeholder="Enter your name">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone</label>
                                <input required type="number" name="phone" class="form-control"
                                    placeholder="Enter your phone number">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input required type="email" name="email" class="form-control"
                                    placeholder="Enter your email" id="exampleInputEmail1" aria-describedby="emailHelp">

                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input required type="password" name="password" class="form-control"
                                    placeholder="Enter password" id="exampleInputPassword1">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Confirm Password</label>
                                <input required type="password" name="cpassword" class="form-control"
                                    placeholder="Confirm password">
                            </div>
                            <button type="submit" name="register_btn" class="btn btn-primary"
                                style=" color: white;background-color: #1c1c1e;border: none;outline: none;border-radius: 2px;font-size: 20px;padding: 5px 12px;font-weight: 500;">Submit</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>





<?php include('includes/footer.php') ?>