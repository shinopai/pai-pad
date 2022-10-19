$(document).on('turbolinks:load', function() {
$(function() {
  alert('jquery');
  // スマホメニュー
  $('.header-main__upper-ico').click(function(){
    $('.sp-menu__overlay').css('display', 'block');
    $('.sp-menu').css('marginRight', '0');
  })
})
})
