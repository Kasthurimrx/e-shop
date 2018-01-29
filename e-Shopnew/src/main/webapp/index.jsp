<html lang="en">
 <%@include file="/WEB-INF/views/Header.jsp" %>
 <head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<body>
<br>
<br>
<div class="container">
  <h2>Cameras</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/images2.jpg/" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/nikon.jpg/" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/nikon D750.jpg/" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><div class="container">
  <h2>Find your Camera</h2>
  <p></p><br>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index.jpg/" target="_blank">
          <img src="images/index.jpg/" alt="Lights"  style="width:width:250px; height:160px">
          <div class="caption">
            <p>Startup Camera</p>
            <p>Rs:113499
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index1.jpg/" target="_blank">
          <img src="images/index1.jpg/" alt="Fjords"  style="width:250px; height:160px">
          <div class="caption">
            <p>Point and shoot</p>
            <p>Rs:11990
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index2.jpg/" target="_blank">
          <img src="images/index2.jpg/" alt="Fjords" style="width:250px; height:160px">
          <div class="caption">
            <p>Mirrorless Camera</p>
            <p>Rs:47600
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index3.jpg/" target="_blank">
          <img src="images/index3.jpg/" alt="Nature" style="width:250px; height:160px">
          <div class="caption">
            <p>DSLR</p>
            <p>Rs:60000
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index4.jpg/" target="_blank">
          <img src="images/index4.jpg/" alt="Fjords" style="width:250px; height:160px">
          <div class="caption">
            <p>Point and shoot</p>
            <p>Rs:47600
          </div>
        </a>
      </div>
    </div>
     <div class="col-md-4">
      <div class="thumbnail">
        <a href="images/index5.jpg/" target="_blank">
          <img src="images/index5.jpg/" alt="Fjords"  style="width:250px; height:160px">
          <div class="caption">
            <p>Mirrorless Camera</p>
            <p>Rs:35800
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
</div>
<br>
<br>
<br>
 <%@include file="/WEB-INF/views/footer.jsp" %>

</body>
</html>
