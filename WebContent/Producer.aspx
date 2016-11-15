﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Producer.aspx.cs" Inherits="WebContent_Producer" %>

<!DOCTYPE html>
<html>
<head>

    <title>Geolocation</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #map {
            height: 70%;
        }
    </style>







    <style type="text/css">
        #map_canvas {
            width: 400px;
            height: 300px;
        }

        .contextmenu {
            visibility: hidden;
            background: #ffffff;
            border: 1px solid #8888FF;
            z-index: 10;
            position: relative;
            width: 140px;
        }

            .contextmenu div {
                padding-left: 5px;
            }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/Register.css">
    <link rel="stylesheet" type="text/css" href="css/mapStyling.css">
    <link href='css/custom.css' rel='stylesheet' type='text/css'>
    <link href='css/registerCrop.css' rel='stylesheet' type='text/css'>
    
    <script type="text/javascript" src="/WebContent/Javascript/map.js"></script>
    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/landingPage.css">
</head>
<script>
    $.get("header.html", function (data) {
        $("#header").replaceWith(data);
    });
    $.get("RegisterCrop.aspx", function (data) {
        $("#modalDiv").replaceWith(data);
    });
</script>

<body>
    <style>
        #wrapper {
            position: relative;
        }

        #SearchContainer {
            position: absolute;
        }

        #map_canvas {
            position: relative;
        }
    </style>


    <!-- /.header  -->
    <div id="header">
    </div>
    <div id="spaceDiv" style="height: 120px; width: 50px;">
    </div>

    <!-- Brand and toggle get grouped for better mobile display -->

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class=" breadcrumb" id="wrapperMenu" style="padding-left: 50px; height: 150px; width: 250px;">
        <div class="row">
            <button type="button" id="menuButton" class="bt btn-default checkbox-inline" data-toggle="collapse" data-target="#bs-example-collapse-1" aria-expanded="false" style="height: 20px; width: 50px;">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse dropdown-collapse" id="bs-example-collapse-1">
            <div class="row" id="areaMarker">
                <button type="button" class="btn btn-default breadcrumb " style="padding-left: 20px;">Mark Your Area</button>
            </div>
            <div class="row" id="areaRemover">
                <button type="button" class="btn btn-default breadcrumb " style="padding-left: 20px;">Remove Your Area</button>
            </div>
            <div class="row">
                <div class="dropdown" id="flags">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        Dropdown Example
                                              <span class="caret"></span>
                    </button>

                    <select style="border: 5px solid red">
                        <option value="http://maps.gstatic.com/mapfiles/markers2/markerA.png">A</option>
                        <option value="http://maps.gstatic.com/mapfiles/markers2/markerB.png">B</option>
                        <option value="http://maps.gstatic.com/mapfiles/markers2/markerC.png">C</option>
                        <option value="http://maps.gstatic.com/mapfiles/markers2/markerD.png">D</option>
                        <option value="http://maps.gstatic.com/mapfiles/markers2/markerE.png">E</option>
                    </select>

                </div>
                <button type="button" class="dropdown-submenu pull-right dropdown-toggle " data-toggle="dropdown"><span class="caret"></span></button>
                <ul class="dropdown-menu pull-right  alert-warning">
                    <li>
                        <button type="button" id="redFlag" class="btn btn-default  ">Set Flag Red</button></li>
                    <li>
                        <button type="button" id="yellowFlag" class="btn btn-default  ">Set Flag Bright Yellow</button></li>
                    <li>
                        <button type="button" id="whiteFlag" class="btn btn-default  ">Set Flag White</button></li>
                    <li>
                        <button type="button" id="tealFlag" class="btn btn-default  ">Set Flag Teal</button></li>
                    <li>
                        <button type="button" id="greenFlag" class="btn btn-default  ">Set Flag Bright Green</button></li>
                    <li>
                        <button type="button" id="blackFlag" class="btn btn-default  ">Set Flag Black</button></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="wrapper" style="height: 677px; width: 1923px; ">
        <div id="modalDiv"></div>
        <div id="map_canvas" style="height: 677px; width: 1923px;"></div>
       <input id="pac-input" class="controls" type="text" placeholder="Search Box">
            <input id="Text1" class="controls" type="text" placeholder="Search Box">
        
    </div>
    <div id="footer">
    </div>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7FTNE22Wl6S6DTQF83sTZTqbFFPzEkmU&libraries=drawing,places,geometry&callback=initMap">
   google.maps.event.addDomListener(window, 'load', initMap);
    </script>
    <script>
        $.get("footer.html", function (data) {
            $("#footer").replaceWith(data);
        });
    </script>
</body>
</html>
