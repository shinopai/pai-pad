module ApplicationHelper
  BASE_TITLE = "レシピ検索No.1／料理レシピ載せるなら パイパッド".freeze
  def full_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{page_title} - #{BASE_TITLE}"
    end
  end

  # 現在表示しているページが利用登録またはログインページか確認する
  def check_if_authpage
    controller_name == 'registrations' || controller_name == 'sessions'
  end

  # 現在表示しているページがレシピページか確認する
  def check_if_recipepage
    controller_name == 'recipes'
  end
end
