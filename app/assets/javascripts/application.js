import jquery from "jquery"
window.$ = jquery

$(function() {
  let element =
       '<tr><td class="first"><textarea rows="3" name="recipe[flows][body]" id="recipe_flows_body"></textarea></td><td class="secondary"><button name="button" type="button" class="form-recipe__btn" onclick="deleteRow(this)">削除</button></td></tr>';

  $('.form-recipe__btn').click(function(){
    $('#form-recipe-table tbody').append(element);
  })
})
