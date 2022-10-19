// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import jquery from "jquery"
window.$ = jquery

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
