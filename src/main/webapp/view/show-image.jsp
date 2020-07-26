<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/show-image.css">
    <title>My Photo</title>
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

<div class="bg-picture text-center">
    <div class="bg-picture-overlay"></div>
    <div class="profile-info-name">

        <img src="data:image/jpeg;base64,${userImage}" class="thumb-lg img-circle img-thumbnail pro"
             alt="profile-image" height="300" width="400">

    </div>
    <div class="col-lg-6 col-md-3 col-sm-3 hidden-xs">
        <div class="pull-right">
            <div style="margin-top: 20px" class="dropdown">
                <a style=" background-color: #007bff; color: white; margin-left: 570px; width: 190px"
                   data-toggle="dropdown"
                   class="dropdown-toggle btn-rounded btn  waves-effect waves-light" href="#"><i
                        class="fas fa-camera"></i> Update photo</a>
                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                    <li><a type="file" class="dropdown-item waves-effect waves-light"
                           href="/uploadPhoto?id=1">Change photo</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script>
</script>
</body>
</html>