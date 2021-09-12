<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head> 
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Gestion Ecole</title>
        <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
        <link rel="canonical" href="https://www.creative-tim.com/product/material-dashboard" />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <link href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2" rel="stylesheet" />
        <link href="https://demos.creative-tim.com/material-dashboard/assets/demo/demo.css" rel="stylesheet" />
        <link href="css.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="../admin/layouts/navbar.jsp" %>
        <div class="content">
            <form action="EditStudent" method="post" enctype="multipart/form-data">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">Profile Etudiant</h4>
                                    <p class="card-category">Modifier le profil</p>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">Code Apogee</label>
                                                <input type="text" name="codeApogee" value="${etudiant.getCodeApogee()}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">CNE</label>
                                                <input type="text" name="cne" value="${etudiant.getCne()}" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">Nom</label>
                                                <input type="text" name="nom" value="nom" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">Prenom</label>
                                                <input type="text" name="prenom" value="prenom" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">

                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">Email</label>
                                                <input type="text" name="email" value="email" class="form-control" >
                                            </div>
                                        </div>
                                        <div class="col-md-6">

                                            <div class="form-group bmd-form-group">
                                                <label class="bmd-label-floating">Filiere</label>
                                                <input type="text" name="filiere" value="filiere" class="form-control" >

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label >Date de naissance</label>
                                            <div class="form-group bmd-form-group">
                                                <input type="text" name="date_naissance" class="form-control datetimepicker" value="26/05/1998 00:00 PM"/>
                                            </div>

                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group bmd-form-group">
                                                <label >Nationalite</label>
                                                <select class="form-control " name="nationalite" >
                                                    <option value="Marocain" selected="">Marocain</option>
                                                    <option value="Marocain">Marocain</option>
                                                    <option value="Etranger">Etranger</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group bmd-form-group">
                                                <label >Sexe</label>
                                                <select class="form-control"  name="Sexe" >
                                                    <option value="H" selected="">Homme</option>
                                                    <option value="H">Homme</option>
                                                    <option value="F">Femme</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="form-group bmd-form-group">
                                                    <label class="bmd-label-floating"> Adresse</label>
                                                    <textarea class="form-control" rows="2">mon adresse</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-right">Modifier </button>
                                    <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-avatar">
                                    <img class="img" id="imageResult" src="https://demos.creative-tim.com/material-dashboard/assets/img/faces/marc.jpg">
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title">Alec Thompson</h4>
                                    <p class="card-description">
                                        Etudiant en Nom Filiere
                                    </p>
                                    <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
                                        <input id="upload" type="file" onchange="readURL(this);" class="form-control border-0">
                                        <label id="upload-label" for="upload" class="font-weight-light text-muted"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <%@include file="../admin/layouts/footer.jsp" %>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/jquery.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/popper.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Plugin for the momentJs  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/moment.min.js"></script>
        <!--  Plugin for Sweet Alert -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/sweetalert2.js"></script>
        <!-- Forms Validations Plugin -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.validate.min.js"></script>
        <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-selectpicker.js"></script>
        <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
        <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.dataTables.min.js"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-tagsinput.js"></script>
        <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jasny-bootstrap.min.js"></script>
        <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/fullcalendar.min.js"></script>
        <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery-jvectormap.js"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/nouislider.min.js"></script>
        <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <!-- Library for adding dinamically elements -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/arrive.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Chartist JS -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/chartist.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/material-dashboard.min.js?v=2.1.2" type="text/javascript"></script>
        <!-- Material Dashboard DEMO methods, don't include it in your project! -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/demo/demo.js"></script>
        <script>
                                            $(document).ready(function () {
                                                $().ready(function () {
                                                    $sidebar = $('.sidebar');

                                                    $sidebar_img_container = $sidebar.find('.sidebar-background');

                                                    $full_page = $('.full-page');

                                                    $sidebar_responsive = $('body > .navbar-collapse');

                                                    window_width = $(window).width();

                                                    fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

                                                    if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                                                        if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                                                            $('.fixed-plugin .dropdown').addClass('open');
                                                        }

                                                    }

                                                    $('.fixed-plugin a').click(function (event) {
                                                        // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                                                        if ($(this).hasClass('switch-trigger')) {
                                                            if (event.stopPropagation) {
                                                                event.stopPropagation();
                                                            } else if (window.event) {
                                                                window.event.cancelBubble = true;
                                                            }
                                                        }
                                                    });

                                                    $('.fixed-plugin .active-color span').click(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $(this).siblings().removeClass('active');
                                                        $(this).addClass('active');

                                                        var new_color = $(this).data('color');

                                                        if ($sidebar.length != 0) {
                                                            $sidebar.attr('data-color', new_color);
                                                        }

                                                        if ($full_page.length != 0) {
                                                            $full_page.attr('filter-color', new_color);
                                                        }

                                                        if ($sidebar_responsive.length != 0) {
                                                            $sidebar_responsive.attr('data-color', new_color);
                                                        }
                                                    });

                                                    $('.fixed-plugin .background-color .badge').click(function () {
                                                        $(this).siblings().removeClass('active');
                                                        $(this).addClass('active');

                                                        var new_color = $(this).data('background-color');

                                                        if ($sidebar.length != 0) {
                                                            $sidebar.attr('data-background-color', new_color);
                                                        }
                                                    });

                                                    $('.fixed-plugin .img-holder').click(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $(this).parent('li').siblings().removeClass('active');
                                                        $(this).parent('li').addClass('active');


                                                        var new_image = $(this).find("img").attr('src');

                                                        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                            $sidebar_img_container.fadeOut('fast', function () {
                                                                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                                $sidebar_img_container.fadeIn('fast');
                                                            });
                                                        }

                                                        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                            $full_page_background.fadeOut('fast', function () {
                                                                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                                $full_page_background.fadeIn('fast');
                                                            });
                                                        }

                                                        if ($('.switch-sidebar-image input:checked').length == 0) {
                                                            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                                                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                        }

                                                        if ($sidebar_responsive.length != 0) {
                                                            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                                                        }
                                                    });

                                                    $('.switch-sidebar-image input').change(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $input = $(this);

                                                        if ($input.is(':checked')) {
                                                            if ($sidebar_img_container.length != 0) {
                                                                $sidebar_img_container.fadeIn('fast');
                                                                $sidebar.attr('data-image', '#');
                                                            }

                                                            if ($full_page_background.length != 0) {
                                                                $full_page_background.fadeIn('fast');
                                                                $full_page.attr('data-image', '#');
                                                            }

                                                            background_image = true;
                                                        } else {
                                                            if ($sidebar_img_container.length != 0) {
                                                                $sidebar.removeAttr('data-image');
                                                                $sidebar_img_container.fadeOut('fast');
                                                            }

                                                            if ($full_page_background.length != 0) {
                                                                $full_page.removeAttr('data-image', '#');
                                                                $full_page_background.fadeOut('fast');
                                                            }

                                                            background_image = false;
                                                        }
                                                    });

                                                    $('.switch-sidebar-mini input').change(function () {
                                                        $body = $('body');

                                                        $input = $(this);

                                                        if (md.misc.sidebar_mini_active == true) {
                                                            $('body').removeClass('sidebar-mini');
                                                            md.misc.sidebar_mini_active = false;

                                                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                                                        } else {

                                                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                                                            setTimeout(function () {
                                                                $('body').addClass('sidebar-mini');

                                                                md.misc.sidebar_mini_active = true;
                                                            }, 300);
                                                        }

                                                        // we simulate the window Resize so the charts will get updated in realtime.
                                                        var simulateWindowResize = setInterval(function () {
                                                            window.dispatchEvent(new Event('resize'));
                                                        }, 180);

                                                        // we stop the simulation of Window Resize after the animations are completed
                                                        setTimeout(function () {
                                                            clearInterval(simulateWindowResize);
                                                        }, 1000);

                                                    });
                                                });
                                            });

                                            function readURL(input) {
                                                if (input.files && input.files[0]) {
                                                    var reader = new FileReader();

                                                    reader.onload = function (e) {
                                                        $('#imageResult')
                                                                .attr('src', e.target.result);
                                                    };
                                                    reader.readAsDataURL(input.files[0]);
                                                }
                                            }
                                            ;

                                            $(function () {
                                                $('#upload').on('change', function () {
                                                    readURL(input);
                                                });
                                            });

                                            /*  ==========================================
                                             SHOW UPLOADED IMAGE NAME
                                             * ========================================== */
                                            var input = document.getElementById('upload');
                                            var infoArea = document.getElementById('upload-label');

                                            input.addEventListener('change', showFileName);
                                            function showFileName(event) {
                                                var input = event.srcElement;
                                                var fileName = input.files[0].name;
                                                infoArea.textContent = 'File name: ' + fileName;
                                            }
        </script>




        <!-- Sharrre libray -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/demo/jquery.sharrre.js"></script>


        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/jquery.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/popper.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Plugin for the momentJs  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/moment.min.js"></script>
        <!--  Plugin for Sweet Alert -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/sweetalert2.js"></script>
        <!-- Forms Validations Plugin -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.validate.min.js"></script>
        <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-selectpicker.js"></script>
        <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
        <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery.dataTables.min.js"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-tagsinput.js"></script>
        <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jasny-bootstrap.min.js"></script>
        <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/fullcalendar.min.js"></script>
        <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/jquery-jvectormap.js"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/nouislider.min.js"></script>
        <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <!-- Library for adding dinamically elements -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/arrive.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
        <!-- Place this tag in your head or just before your close body tag. -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Chartist JS -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/chartist.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/js/material-dashboard.min.js?v=2.1.2" type="text/javascript"></script>
        <!-- Material Dashboard DEMO methods, don't include it in your project! -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/demo/demo.js"></script>
        <script>
                                            $(document).ready(function () {
                                                $().ready(function () {
                                                    $sidebar = $('.sidebar');

                                                    $sidebar_img_container = $sidebar.find('.sidebar-background');

                                                    $full_page = $('.full-page');

                                                    $sidebar_responsive = $('body > .navbar-collapse');

                                                    window_width = $(window).width();

                                                    fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

                                                    if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                                                        if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                                                            $('.fixed-plugin .dropdown').addClass('open');
                                                        }

                                                    }

                                                    $('.fixed-plugin a').click(function (event) {
                                                        // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                                                        if ($(this).hasClass('switch-trigger')) {
                                                            if (event.stopPropagation) {
                                                                event.stopPropagation();
                                                            } else if (window.event) {
                                                                window.event.cancelBubble = true;
                                                            }
                                                        }
                                                    });

                                                    $('.fixed-plugin .active-color span').click(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $(this).siblings().removeClass('active');
                                                        $(this).addClass('active');

                                                        var new_color = $(this).data('color');

                                                        if ($sidebar.length != 0) {
                                                            $sidebar.attr('data-color', new_color);
                                                        }

                                                        if ($full_page.length != 0) {
                                                            $full_page.attr('filter-color', new_color);
                                                        }

                                                        if ($sidebar_responsive.length != 0) {
                                                            $sidebar_responsive.attr('data-color', new_color);
                                                        }
                                                    });

                                                    $('.fixed-plugin .background-color .badge').click(function () {
                                                        $(this).siblings().removeClass('active');
                                                        $(this).addClass('active');

                                                        var new_color = $(this).data('background-color');

                                                        if ($sidebar.length != 0) {
                                                            $sidebar.attr('data-background-color', new_color);
                                                        }
                                                    });

                                                    $('.fixed-plugin .img-holder').click(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $(this).parent('li').siblings().removeClass('active');
                                                        $(this).parent('li').addClass('active');


                                                        var new_image = $(this).find("img").attr('src');

                                                        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                            $sidebar_img_container.fadeOut('fast', function () {
                                                                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                                $sidebar_img_container.fadeIn('fast');
                                                            });
                                                        }

                                                        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                            $full_page_background.fadeOut('fast', function () {
                                                                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                                $full_page_background.fadeIn('fast');
                                                            });
                                                        }

                                                        if ($('.switch-sidebar-image input:checked').length == 0) {
                                                            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                                                            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                        }

                                                        if ($sidebar_responsive.length != 0) {
                                                            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                                                        }
                                                    });

                                                    $('.switch-sidebar-image input').change(function () {
                                                        $full_page_background = $('.full-page-background');

                                                        $input = $(this);

                                                        if ($input.is(':checked')) {
                                                            if ($sidebar_img_container.length != 0) {
                                                                $sidebar_img_container.fadeIn('fast');
                                                                $sidebar.attr('data-image', '#');
                                                            }

                                                            if ($full_page_background.length != 0) {
                                                                $full_page_background.fadeIn('fast');
                                                                $full_page.attr('data-image', '#');
                                                            }

                                                            background_image = true;
                                                        } else {
                                                            if ($sidebar_img_container.length != 0) {
                                                                $sidebar.removeAttr('data-image');
                                                                $sidebar_img_container.fadeOut('fast');
                                                            }

                                                            if ($full_page_background.length != 0) {
                                                                $full_page.removeAttr('data-image', '#');
                                                                $full_page_background.fadeOut('fast');
                                                            }

                                                            background_image = false;
                                                        }
                                                    });

                                                    $('.switch-sidebar-mini input').change(function () {
                                                        $body = $('body');

                                                        $input = $(this);

                                                        if (md.misc.sidebar_mini_active == true) {
                                                            $('body').removeClass('sidebar-mini');
                                                            md.misc.sidebar_mini_active = false;

                                                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                                                        } else {

                                                            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                                                            setTimeout(function () {
                                                                $('body').addClass('sidebar-mini');

                                                                md.misc.sidebar_mini_active = true;
                                                            }, 300);
                                                        }

                                                        // we simulate the window Resize so the charts will get updated in realtime.
                                                        var simulateWindowResize = setInterval(function () {
                                                            window.dispatchEvent(new Event('resize'));
                                                        }, 180);

                                                        // we stop the simulation of Window Resize after the animations are completed
                                                        setTimeout(function () {
                                                            clearInterval(simulateWindowResize);
                                                        }, 1000);

                                                    });
                                                });
                                            });

                                            function readURL(input) {
                                                if (input.files && input.files[0]) {
                                                    var reader = new FileReader();

                                                    reader.onload = function (e) {
                                                        $('#imageResult')
                                                                .attr('src', e.target.result);
                                                    };
                                                    reader.readAsDataURL(input.files[0]);
                                                }
                                            }
                                            ;

                                            $(function () {
                                                $('#upload').on('change', function () {
                                                    readURL(input);
                                                });
                                            });

                                            /*  ==========================================
                                             SHOW UPLOADED IMAGE NAME
                                             * ========================================== */
                                            var input = document.getElementById('upload');
                                            var infoArea = document.getElementById('upload-label');

                                            input.addEventListener('change', showFileName);
                                            function showFileName(event) {
                                                var input = event.srcElement;
                                                var fileName = input.files[0].name;
                                                infoArea.textContent = 'File name: ' + fileName;
                                            }
        </script>




        <!-- Sharrre libray -->
        <script src="https://demos.creative-tim.com/material-dashboard/assets/demo/jquery.sharrre.js"></script>



    </body>
</html>