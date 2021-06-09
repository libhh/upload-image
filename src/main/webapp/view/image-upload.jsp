<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Change Photo</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/image-upload.css">
</head>
<body>

<nav style="background-color: #007bff;" class="mb-1 navbar navbar-expand-lg navbar-dark default-color fixed-top">
    <a style="font-size: 1.45rem" class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-3"
            aria-controls="navbarSupportedContent-3" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent-3">
    </div>
</nav>

<div class="container-fluid" style="margin-top: 90px; margin-left: 450px">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="pannel-group">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h1 class="panel-title">Upload your photo here</h1>
                        <h5 style="margin-left: 80px; margin-bottom: 30px">Photo should be in JPG format</h5>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-5">
                                <p>AWS_KEY: 123EXAMPLEKEY456</p>
                                <form  action="/upload-image" method="post" enctype="multipart/form-data">
                                    <input style="cursor:pointer;" id="imagefile" name="image" type="file" class="file">
                                    <input type="text" hidden value="1" name="id">
                                    <button style="margin-top: 20px; width: 443px" class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
