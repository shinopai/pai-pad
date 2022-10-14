  // 手順を削除
  function deleteRow(target) {
    target.closest('tr').remove();
  }

  // テキストをノードに変換する関数
  /**
   * HTML文字列をノードに変換
   * @param {string} htmlStr 変換するHTMLの文字列
   * @return {NodeList} 変換したHTMLのNodeListを返す
   */
  var htmlToNode = function(htmlStr) {
    if (!htmlStr || typeof htmlStr !== 'string') return;

    var tmpElmt = document.createElement('div');

    // 高速処理するが対応ブラウザを考えinnerHTMLを使用
    tmpElmt.innerHTML = htmlStr; // tmpElmt.insertAdjacentHTML('beforeend', htmlStr);

    return tmpElmt.childNodes;
  };

  // 手順を追加
  // function addRow() {
  //   var parent = document.getElementById('form-recipe-table');
  //   tbody = parent.children[0];
  //   var element = document.createTextNode(
  //     '<tr><td class="first"><textarea rows="3" name="recipe[flows][body]" id="recipe_flows_body"></textarea></td><td class="secondary"><button name="button" type="button" class="form-recipe__btn" onclick="deleteRow(this)">削除</button></td></tr>');
  //   var node = htmlToNode(element);
  //   tbody.appendChild(node);
  // }
