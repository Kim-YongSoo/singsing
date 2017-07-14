  
    var $imgslide = null;
    var imgarry = null;
    var current = 0;
  $(document).ready(function(){
      
        init();
        moveSlide();
        
        function init(){
        $imgslide = $(".imgslide");
        imgarry = ["http://www.segye.com/content/image/2016/06/19/20160619001244_0.jpg","http://blogimg.ohmynews.com/attach/23077/1283420788.jpg","http://sjcollege.or.kr/wp-content/uploads/2016/01/%EB%94%B8%EA%B8%B06.jpg","http://cfile22.uf.tistory.com/image/14478A394E4BAEAC156302","http://www.creditonhand.com/images/food_health/20144241314361.jpg"];
    }
    
    function moveSlide(){
       setInterval(function(){
           current++;
        if(current>imgarry.length){
            current=0;
        }
           $imgslide.attr("src",imgarry[current])
       },1500)
    }
  });
  
  
  