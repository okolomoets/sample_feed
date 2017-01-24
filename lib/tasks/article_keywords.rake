require 'rubygems'
require 'rake'
namespace :article_keywords do
  desc 'Task to assosiate existing all articles to keywords.'
  task :associate_all=>:environment  do
    Article.find_each{|article| article.associate_with_keywords}
  end
end
