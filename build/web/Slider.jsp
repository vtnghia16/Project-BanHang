<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image SLider</title>
 
    <style>
    .container-slider {
        display: flex;
        justify-content: center;
        background: linear-gradient(to right, rgb(40, 48, 72), rgb(133, 147, 152))
     }

    .slider {
        width: 1115px;
        height: 500px;
        border-radius: 10px;
        overflow: hidden;
        padding-top: 68px

    }

    .slides {
        width: 1115%;
        height: 500px;
        display: flex;
    }

    .slides input {
        display: none;
    }

    .slide {
        width: 20%;
        transition: 3s;
    }

    .slide img {
        width: 1115px;
        height: 500px;
    }

    /* css for manual slide navagation */
    .navigation-manual {
        position: absolute;
        width: 1115px;
        margin-top: -100px;
        display: flex;
        justify-content: center;

    }

    .manual-btn {
        border: 2px solid #DCE0E3;
        padding: 5px;
        border-radius: 10px;
        cursor: pointer;
        transition: 1s;
    }

    .manual-btn:not(:last-child) {
        margin-right: 40px;
    }

    .manual-btn:hover {
        background: #DCE0E3;
    }

    #radio1:checked ~ .first {
        margin-left: 0;
    }

    #radio2:checked ~ .first {
        margin-left: -20%;
    }

    #radio3:checked ~ .first {
        margin-left: -40%;
    }

    #radio4:checked ~ .first {
        margin-left: -60%;
    }

    /* css for automatic navigation */
    .navigation-auto {
        position: absolute;
        display: flex;
        width: 1115px;
        justify-content: center;
        margin-top: 460px;
    }
    </style>
    <script>
         var counter = 1;
        setInterval(function() {
            document.getElementById('radio' + counter).checked = true;
            counter++;
            if (counter > 4) {
                counter = 1;
            }
        },4000);
    </script>
    
</head>
<body>
    <div class="container-slider">
        <!-- image slider start -->
        <div class="slider">
            <div class="slides">
                <!-- radio buttons start -->
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                <!-- radio buttons end -->

                <!-- slide images start -->
                <div class="slide first">
                    <img src="https://cdn.pixabay.com/photo/2017/09/08/08/50/gas-stove-2728100_960_720.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="https://cdn.pixabay.com/photo/2020/01/13/18/42/gas-stove-4763201_960_720.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="https://cdn.pixabay.com/photo/2016/10/26/18/11/gas-burners-1772104_960_720.jpg" alt="">
                </div> 
                <div class="slide">
                    <img src="https://cdn.pixabay.com/photo/2020/01/13/18/42/gas-4763200_960_720.jpg" alt="">
                </div>
                <!-- slide images end -->

                <!-- automatic navigation start -->
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>
                <!-- automatic navigation end -->
            </div>
            <!-- manual navigation start -->
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>
            <!-- manual navigation end -->
        </div>
        <!-- image slider end -->
       </div>
</body>
</html>