
<script>
  /* nav-toggle */
  $(function(){
    $(".nav-index li").on("click" , function(){
      var num = $(".nav-index li").index(this);
      $(".contents").fadeOut();
      $(".contents").eq(num).fadeIn();
      $(".nav-index li").removeClass('select');
      $(".nav-index li").eq(num).addClass('select');
    });
  });

  /* page-toggle */
  $(function(){
    $(".page-nav-index li").on("click" , function(){
      var num = $(".page-nav-index li").index(this);
      $(".page-contents").fadeOut();
      $(".page-contents").eq(num).fadeIn();
      $(".page-nav-index li").removeClass('select');
      $(".page-nav-index li").eq(num).addClass('select');
    });
  });

  /* main-toggle */

  $(function(){
    $(".main-nav-index li").on("click" , function(){
      var num = $(".main-nav-index li").index(this);
      $(".main-contents").fadeOut();
      $(".main-contents").eq(num).fadeIn();
      $(".main-nav-index li").removeClass('select');
      $(".main-nav-index li").eq(num).addClass('select');
    });
  });

  /* slider-toggle */
  $(function(){
    $(".nav-index li").on("click" , function(){
      var num = $(".nav-index li").index(this);
      $(".sliders").fadeOut();
      $(".sliders").eq(num).fadeIn();
      $(".nav-index li").removeClass('select');
      $(".nav-index li").eq(num).addClass('select');
    });
  });
</script>
