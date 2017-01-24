# README

Sample Feed Application
================

Description of the application
----------

The application contains 3 models Article, Keyword and associated model ArticleKeyword
to save count entries of each word to each article. All articles show on the Feed page.
They are sorted by article score on descent mode. The score calculation logic will be described 
below. Each article that has at least one word from keyword table is marked with text notification
that it contains word from "Black list"(marked with red color) or from 
"White list"(marked with green color). 
 
Also each article on the feed page has 2 buttons "like"(green one) and "Dislike"(red one).
Now user can like or dislike article as mach times as he want to do it. This was made because
we have only one user and this makes it more close to the actual behavior. After user clicked on
"Like" or "Dislike" button the Ajax request is sending to the server and returns data with updated score 
and with updated sorting.

Score Calculation 
----------

Now logic of score calculation is based on the description and does not contradict it.
On "like" action all words from Keyword table that exist in selected article get the incrementation of their rating.
On "Dislike" action all words from Keyword table that exist in selected article get the decrementation of their rating.

After that all articles that contains these keyword will be recalculated. It related on keyword rating and 
number of entries of the keyword to the article.

The formula is: 

score = (keyword_score_1*entries_of_keyword_1) +...+ (keyword_score_N*entries_of_keyword_N)


It's not the bes solution but it was done on the basis of the task. I make architecture very easy for 
updates so we can easy change this logic in the future.

Non-standard gem that i use 
----------
I did'n remove standard gems that adding to the application by default after creation new rails application.

Gems that i add: 

1) Bootstrap. Just to make application a little bit nice
*  gem 'bootstrap-sass'
*  gem 'bootstrap_form'

2) Observers

* gem 'rails-observers', :github => 'rails/rails-observers', :branch => 'master'

Observer was removed from standard gemset on rails 4. But i need it to hook changes of the objects in the model
to run some logic after save/destroy.

