<!DOCTYPE html>
<?php require_once 'inc/config.php'; 
session_start();
    if (isset($_SESSION['id'])) {
        header('location:' . SITE);
    }

?>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Stoni - Sistema de Outsourcing de Impressão</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<?php echo BASEURL; ?>inc/css/bootstrap.min.css">

        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>

        <link rel="stylesheet" href="<?php echo BASEURL; ?>inc/css/boostrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.css">

    </head>
    <body>
        <main class="container">

            <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
            <!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->

            <div class="container">
                <div class="row vertical-offset-100">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Digite sua senha</h3>
                            </div>
                            <div class="panel-body">
                                <form accept-charset="UTF-8" action="inc/functionslogin.php" method="POST">
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" Placeholder="Usuário"  name="login" type="text">
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" Placeholder="Senha" name="password" type="password" value="">
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input name="remember" type="checkbox" value="Remember Me"> Lembre-me!
                                            </label>
                                        </div>
                                        <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main> <!-- /container -->

        <footer class="container">
            <p>&copy; Doz | Tecnologia - 2017 </p>
        </footer>

        <script>

            $(document).ready(function () {
                $(document).mousemove(function (e) {
                    TweenLite.to($('body'),
                            .5,
                            {css:
                                        {
                                            backgroundPosition: "" + parseInt(event.pageX / 9) + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px"
                                        }
                            });
                });
            });
        </script>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="<?php echo BASEURL; ?>js/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="<?php echo BASEURL; ?>js/bootstrap.min.js"></script>

        <script src="<?php echo BASEURL; ?>js/main.js"></script>
    </body>
</html>        