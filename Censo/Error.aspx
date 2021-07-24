<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Censo.Error" %>

<!DOCTYPE html>
<html lang="es-MX" xml:lang="es-MX">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="./style.css">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png" />
</head>
<body>
    <!-- partial:index.partial.html -->
    <link href='https://fonts.googleapis.com/css?family=Anton|Passion+One|PT+Sans+Caption' rel='stylesheet' type='text/css'>
    <body>

        <!-- Error Page -->
        <div class="error">
            <div class="container-floud">
                <div class="col-xs-12 ground-color text-center">
                    <div class="container-error-404">
                        <div class="clip">
                            <div class="shadow"><span class="digit thirdDigit"></span></div>
                        </div>
                        <div class="clip">
                            <div class="shadow"><span class="digit secondDigit"></span></div>
                        </div>
                        <div class="clip">
                            <div class="shadow"><span class="digit firstDigit"></span></div>
                        </div>
                        <div class="msg">OH!<span class="triangle"></span></div>
                    </div>
                    <h2 class="h1">Lo siento! Ocurrió un error al guardar el registro</h2>
                </div>
            </div>
        </div>
        <!-- Error Page -->
    </body>
    <!-- partial -->
    <script src="./script.js"></script>
    <script>
        setTimeout("location.replace('Default.aspx')", 5000);
    </script>
</body>
</html>
