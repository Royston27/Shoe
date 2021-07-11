<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<body>
<jsp:include page="header.jsp"></jsp:include>
<link href="faq.css" rel="stylesheet">
<section class="accordion_two_section ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 accordionTwo">
                <div class="panel-group" id="accordionTwoLeft">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordionTwoLeft" href="#collapseTwoLeftone" aria-expanded="false" class="collapsed"> Where is my order? </a> </h4>
                        </div>
                        <div id="collapseTwoLeftone" class="panel-collapse collapse" aria-expanded="false" role="tablist" style="height: 0px;">
                            <div class="panel-body"> You can view your order on the tracking details we provide once the order is confirmed. Please allow up to 3 business days before your order is ready to be shipped. Once your order has shipped, you will receive a confirmation email with your tracking number on it. That confirmation email and all correspondence from us will go through the email that you used when you ordered, so please check that email's inbox and spam folder. </div>
                        </div>
                    </div> <!-- /.panel-default -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#accordionTwoLeft" href="#collapseTwoLeftTwo" aria-expanded="false"> What payment methods do you accept? </a> </h4>
                        </div>
                        <div id="collapseTwoLeftTwo" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                            <div class="panel-body"> We accept major credit cards as well as payments through PayPal.You can also pay through google Pay.Cash On Delivery is also available. </div>
                        </div>
                    </div> <!-- /.panel-default -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#accordionTwoLeft" href="#collapseTwoLeftThree" aria-expanded="false"> Are Fields Footwear shoes washable? </a> </h4>
                        </div>
                        <div id="collapseTwoLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                            <div class="panel-body"> We do not recommend machine washing our leather and suede shoes. Please refer to our Care Instructions for full details on how best to care for your Fields Footwear shoes.
                             </div>
                        </div>
                    </div> <!-- /.panel-default -->
                </div>
                <!--end of /.panel-group-->
            </div>
            <!--end of /.col-sm-6-->
            <div class="col-sm-6 accordionTwo">
                <div class="panel-group" id="accordionTwoRight">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#accordionTwoRight" href="#collapseTwoRightone" aria-expanded="false"> Are Fields Footwear shoes waterproof? </a> </h4>
                        </div>
                        <div id="collapseTwoRightone" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                            <div class="panel-body"> Like other 100% leather shoes, Fields Footwear shoes are not recommended for rain or snow. They may be worn outdoors, but preferably on dry surfaces. Please refer to our Care Instructions for full details on how best to care for your Fields Footwear shoes. </div>
                        </div>
                    </div> <!-- /.panel-default -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#accordionTwoRight" href="#collapseTwoRightTwo" aria-expanded="false"> The style I would like to order does not come in the color I want, do you fulfill custom orders? </a> </h4>
                        </div>
                        <div id="collapseTwoRightTwo" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                            <div class="panel-body"> At the moment we are unable to accommodate custom orders. However, please let us know at contact@fieldsfootwear.com if there is a shoe you would like in a color or material that is currently unavailable. We are always open to expanding our options! </div>
                        </div>
                    </div> <!-- /.panel-default -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordionTwoRight" href="#collapseTwoRightThree" aria-expanded="false"> Where are Fields Footwear shoes made? </a> </h4>
                        </div>
                        <div id="collapseTwoRightThree" class="panel-collapse collapse in" aria-expanded="false" role="tablist">
                            <div class="panel-body"> Every one of our shoes is individually hand made in Villena, Spain, who's footwear industry dates back to the 19th century. Our factory specializes in infant's shoes and has been family owned for generations. We have great relationships with our teams on the ground, and make several trips a year to maintain those relationships and ensure proper handling of our unique product. </div>
                        </div>
                    </div> <!-- /.panel-default -->
                </div>
                <!--end of /.panel-group-->
            </div>
            <!--end of /.col-sm-6-->
        </div>
    </div>
    <!--end of /.container-->
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>