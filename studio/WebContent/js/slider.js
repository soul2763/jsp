$(function(){
  var li = $('.main_slider > ul > li');
  var i = 0;

  setInterval(function(){
    li.eq(i).animate({'left':'-100%'}, 1000);
    i++;
    if(i == 5){
      i = 0;
    }
    li.eq(i).css('left','100%').animate({'left':'0%'}, 1000);
  },1000*5);

});
