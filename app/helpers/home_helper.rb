module HomeHelper
  def output_class_name(name)
    case name
    when '野菜のおかず'
      'veggie'
    when 'お肉のおかず'
      'meat'
    when '魚介のおかず'
      'fish'
    when 'ごはんもの'
      'rice'
    when 'パスタ・グラタン'
      'pasta'
    when '麺'
      'noodles'
    when 'サラダ'
      'salad'
    when 'スープ・汁物'
      'soup'
    when 'お弁当'
      'bento'
    when 'おもてなし料理'
      'omotenashi'
    when 'お菓子'
      'snack'
    when 'パン'
      'bread'
    end
  end
end
