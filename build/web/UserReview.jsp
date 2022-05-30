<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ===== Link Swiper's CSS ===== -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

    <!-- ===== Fontawesome CDN Link ===== -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
        


    

    <style>
        /* === Google Font Import - Poppins === */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body{
      /*height: 100vh;*/
      /*display: flex;*/
      /*align-items: center;*/
      /*justify-content: center;*/
      background: #f2f2f2;
    }

    section{
      position: relative;  
      height: 450px;
      width: 1075px;
      display: flex;
      align-items: center;
    }

    .swiper{
      width: 950px;
    }

    .card{
      position: relative;
      background: #fff;
      border-radius: 20px;
      margin: 20px 0;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
    }

    .card::before{
      content: "";
      position: absolute;
      height: 40%;
      width: 100%;
      background: linear-gradient(to right, rgb(40, 48, 72), rgb(133, 147, 152));
      border-radius: 20px 20px 0 0;
    }

    .card .card-content{
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 30px;
      position: relative;
      z-index: 100;
    }

    section .card .image{
      height: 140px;
      width: 140px;
      border-radius: 50%;
      padding: 3px;
      background: #7d2ae8;
    }

    section .card .image img{
      height: 100%;
      width: 100%;
      object-fit: cover;
      border-radius: 50%;
      border: 3px solid #fff;
    }

    .card .media-icons{
      position: absolute;
      top: 10px;
      right: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .card .media-icons i{
      color: #fff;
      opacity: 0.6;
      margin-top: 10px;
      transition: all 0.3s ease;
      cursor: pointer;
    }

    .card .media-icons i:hover{
      opacity: 1;
    }

    .card .name-profession{
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 10px;
    } 

    .name-profession .name{
      font-size: 20px;
      font-weight: 600;
    }

    .name-profession .profession{
      font-size:15px;
      font-weight: 500;
    }

    .card .rating{
      display: flex;
      align-items: center;
      margin-top: 18px;
    }

    .card .rating i{
      font-size: 18px;
      margin: 0 2px;
      color: #7d2ae8;
    }

    .card .button{
      width: 100%;
      display: flex;
      justify-content: space-around;
      margin-top: 20px;
    }
    
    .button {
        text-align: center
    }
    
    .swiper-pagination{
      position: absolute;
    }

    .swiper-pagination-bullet{
      height: 7px;
      width: 26px;
      border-radius: 25px;
      background: #7d2ae8;
    }

    .swiper-button-next, .swiper-button-prev{
      opacity: 0.7;
      color: #7d2ae8;
      transition: all 0.3s ease;
      transform: translateX(72px);
    }

    .swiper-button-prev {
        transform: translateX(-72px);
    }
    .swiper-button-next:hover, .swiper-button-prev:hover{
      opacity: 1;
      color: #7d2ae8;
    }
    
    
    </style>
</head>
<body>

    <section style="margin: 0 auto">
    
    <div class="swiper mySwiper container">
      <div class="swiper-wrapper content">

          <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>

            <div class="button">
                <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
                <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>
        <div class="swiper-slide card" style="border-radius: 22px">
          <div class="card-content">
            <div class="image">
              <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="">
            </div>

            <div class="media-icons">
              <i class="fab fa-facebook"></i>
              <i class="fab fa-twitter"></i>
              <i class="fab fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
            </div>

            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>

            <div class="button">
              <p>Good product quality, fast delivery, need more improvement</p>
            </div>
          </div>
        </div>

      </div>
    </div>

        <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
  </section>

  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>

</body>
</html>