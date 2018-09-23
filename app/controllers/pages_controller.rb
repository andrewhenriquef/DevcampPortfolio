class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
    @skills = Skill.all.order(percent_utilized: :desc)
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end


# se (condicao do 7 e condicao do 3) então
#   code
# senao
#   se (condicao 7) entao
#     code
#   senao
#     se (condicao 3) então
#       code
#     senao
#       codigo caso nao seja divisil por nenhum deles
#     fimse
#   fimse
# fimse