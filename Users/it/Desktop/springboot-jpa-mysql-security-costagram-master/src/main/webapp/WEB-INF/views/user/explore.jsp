<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
 
    <title>article</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <style>
        
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body{
            text-align: center;
        }
        nav{
            margin-top:10%;
            display: inline-block;
            text-align: center;
            width: 1000px;
        }
        .a p{
            color: gray;
            font-size: 17px;
            font-weight: 600;
        }
        .b p{
            font-weight: 600;
        }
        a{
            text-decoration: none;
            color: skyblue;
            font-weight: 600;
        }
        .midbox{
            width: 100%;
            display: grid;
            grid-template-columns: auto auto auto auto auto;
            justify-content: center;
            grid-gap: 3%;
        }
        .follow{
            padding: 20px;
            align-content: center;
            border: 1px solid lightgray;
            background-color: white;
            width: 150px;
        }
        .a{
            width: 100%;
            display: grid;
            grid-template-columns: auto auto;
            justify-content:space-between; 
        }
        .b{
            width: 90%;
            margin: 3% 0 4% 6%;
            display: grid;
            grid-template-columns: auto auto;
            justify-content:space-between;
        }
        .id{
            font-weight: 600;
            cursor: pointer;
        }
        .nav_text{
            font-size: 12px;
            margin: 2%;
            color: lightgray;
        }
        input[type=button]{
            width: 60%;
            font-weight :600;
            font-size: 15px;
            border-radius : 3px;
            border : 0px;
            background-color: #3897f0;
            color: white;
            margin-top: 20px;
            padding: 10px;
            cursor: pointer;
        }

        .foot{
            margin:400px;
            display: grid;
            grid-template-columns: auto auto auto auto auto auto auto auto auto auto auto auto;
            
        }
      

        .text{
            text-align: left;
            grid-column:1/3 span;
            margin-top: 30px;
            
        }

        .article{
            
            display: grid;
            grid-template-columns: auto auto auto;
            justify-content: center;
            grid-gap: 2%;
           
            text-align: center;
        }

        .articleimg1{
            width:300px;
            height: 300px;
            background-color: azure;
            border : 1px solid gray;
            display: inline-block;
            position: relative;
            
        }

        .imagetext1{
            position: absolute;
            color :white;
            top: 45%;
            font-size: 25px;
            width: 100%;
            display: none;
        }


        .articleimg1:hover .imagetext1{
            display: block;
        }
        .header{
            background-color:  rgb(255, 255, 255);
            
        }

        .container {
            display: block;
            width: 100%;
            height: 100px;
            display: grid;
            grid-template-columns: auto auto;
            background-color: rgb(255, 255, 255);
            position: fixed;
            z-index: 1;
            padding: 1%;
            border:1px solid lightgray;

            /* justify-content: center;
        align-items: center; */
        }

        input[type=text] {
            height: 35px;
            width: 250px;
            margin-top: 3%;
            text-align: center;
            background-color: rgb(250, 250, 250);
            border: 1px solid lightgray;
            font-size: 18px;
            color: rgb(168, 170, 173);
            padding-left: 37px;
            
        }
        input[type=text]:focus{
            text-align: left;
        }
        .rogo{
            display: inline-block;
        }

        .moonjjin {
            display: grid;
            grid-template-columns: auto auto;
            justify-content: space-between;
            
        }
        .info{
            grid-column: 3/1 span;
            justify-content: left;
        }

        .search {
            position: relative;
            
            
        }

        .material-icons {
            position: absolute;
            top: 0px;
            left: 0px;
            padding: 15px 10px;
            color: rgb(168, 170, 173);
            width: 10px;
            
        }
       
        


        @media(max-width:715px){
        .mid{
            display: none;
            margin-top: 0;
            position: absolute;
            }
        .articleimg1{
            width : 200px;
            height: 200px;
        }

        header{
            display: block;
            min-width: 100%;
        }
             
        .search{
            display: none;
           
        }
       
        }
        @media(max-width:450px){
            .rogo{
                display: none;
            }
            .articleimg1{
            width : 100px;
            height: 100px;
        }
        .container{
            height:50px;
        }
        }
    




    </style>
</head>
<body>
        <header>
                <div class="container">
                    <div class="rogo">
                        <a href="#"><img src="/image/explore/camera.png" alt=""></a>&nbsp;&nbsp;
                        <a href="#"><img src="/image/explore/bar.png" alt="" id="bar"></a>&nbsp;&nbsp;
                        <a href="#"><img src="/image/explore/instagram.png" alt=""></a>
                    </div>
                    <div class="moonjjin">
                        <div class="search">
                                <div><i class="material-icons" >search</i></div>
                                <div><input class="search__tag" type="text" placeholder="검색" /></div>
                        </div>
                        
                        <div class="info">
                            <a href="#"><img src="/image/explore/nachimpan.png" alt=""></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#"><img src="/image/explore/heart.png" alt=""></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#"><img src="/image/explore/people.png" alt="" id="aa"></a>
                        </div>
                    </div>
                </div>
            </header>
        
        <nav class="mid">
                <div class="a">
                    <p>팔로우할 만한 계정 둘러보기</p>
                    <div><a href="#">모두보기</a></div>
                </div>
                <div class="b">
                    <p>회원님을 위한 추천</p>
                    <div><a href="#">모두 보기</a></div>
                </div>
                <div class="midbox">
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in1.png" alt="x"></a></div>
                        <div class="id">iot_404</div>
                        <div class="nav_text">teacher님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in2.png" alt="x"></a></div>
                        <div class="id">inmoonhak</div>
                        <div class="nav_text">mun_JJin님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in3.png" alt="x"></a></div>
                        <div class="id">Eletronic</div>
                        <div class="nav_text">hohoho님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in4.png" alt="x"></a></div>
                        <div class="id">Frozen</div>
                        <div class="nav_text">Do_you_want님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                    <div class="follow">
                        <div><a href="#"><img src="/image/explore/in5.png" alt="x"></a></div>
                        <div class="id">japanjob</div>
                        <div class="nav_text">in_to_the_in님이 팔로우 합니다</div>
                        <div class="bth"><input type="button" value="팔로우"></div>
                    </div>
                </div>
            </nav>
    <div class="article">
            <div class="text">둘러보기</div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨1</div><img src="/image/explore/1.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨2</div><img src="/image/explore/2.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨3</div><img src="/image/explore/3.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨4</div><img src="/image/explore/4.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨5</div><img src="/image/explore/5.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨6</div><img src="/image/explore/6.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨7</div><img src="/image/explore/7.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨8</div><img src="/image/explore/8.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨9</div><img src="/image/explore/AppStore.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨10</div><img src="/image/explore/Microsoft.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨11</div><img src="/image/explore/common.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨12</div><img src="/image/explore/dal.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨13</div><img src="/image/explore/twice.png" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨14</div><img src="/image/explore/google.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨15</div><img src="/image/explore/sonoma.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨16</div><img src="/image/explore/san-francisco.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨17</div><img src="/image/explore/san-francisco-2.jpg" alt="" width="100%" height="100%"></div>
        <div class="articleimg1"><div class="imagetext1">❤1🗨18</div><img src="/image/explore/new-york.jpg" alt="" width="100%" height="100%"></div>
      
    </div>
    <div class = "foot">
            <a href="#" class="href">INSTAGRAM 정보</a>
            <a href="#" class="href">지원</a>
            <a href="#" class="href">홍보 센터</a>
            <a href="#" class="href">API</a>
            <a href="#" class="href">채용 정보</a>
            <a href="#" class="href">개인정보처리방침</a>
            <a href="#" class="href">약관</a>
            <a href="#" class="href">디렉터리</a>
            <a href="#" class="href">프로필</a>
            <a href="#" class="href">해시 태그</a>
            <a href="#" class="href">언어</a>
            <a href="#" class="href3">@ 2019 INSTAGRAM</a>
</div>
</div>

</body>

</html>