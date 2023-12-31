<%-- 
    Document   : addmoreaddress
    Created on : Jul 10, 2023, 3:36:13 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Địa chỉ mới</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS -->
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">


    </head>

    <body>
        <style>
            .mainsucess {
                margin: 50px auto;
                max-width: 600px;
                padding: 30px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                position: relative;
            }
            .mainsucess .add-button button {
                background-color: #3d9970;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .mainsucess .add-button {
                position: absolute;
                top: 0;
                right: 0;
                margin-top: 285px;
            }

            .text-center {
                text-align: center;
                color: #000000;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 35px;
            }

            label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .form-control {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .error-message {
                color: red;
                margin-top: 10px;
            }
        </style>
        <div class="container">
            <div class="mainsucess">
                <h2 class="text-center">Địa chỉ mới</h2>
                <form action="AddressMore" method="POST">
                    <div class="form-group">
                        <label for="CustomerAddress">Địa chỉ<span>*</span></label>
                        <input id="address" class="form-control" required name="CustomerAddress" type="text">
                    </div>
                    <c:if test="${not empty error1}">
                        <div class="error-message"><h4>${error1}</h4></div>
                            </c:if>
                    <div class="form-group">
                        <label for="Phone">Số điện thoại<span>*</span></label>
                        <input id="phone" class="form-control" required name="Phone" type="text">
                    </div>
                    <c:if test="${not empty error}">
                        <div class="error-message"><h4>${error}</h4></div>
                            </c:if>
                    <div class="add-button">
                        <button type="submit" name="action" value="themmoi" >Thêm mới</button>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
