module ArticlesHelper

  def black_list?(article)
    if article.in_black_list?
    "<p class='article-from-black-list'>Black list</p>"
    else
      ""
    end

  end

  def white_list?(article)
    if article.in_white_list?
    "<p class='article-from-white-list'>White list</p>"
    else
      ""
    end

  end

end