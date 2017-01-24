
$(document).ready(function(){

  $(document).on("click",".like-button", function(){
    var article_id = $(this).data("value");
    $.post("/actions/"+article_id+"/like", {}
    ).done(function(data, xhr, e){
      reload_feed();
    });
    return false;
  });

  $(document).on("click",".dislike-button", function(){
    var article_id = $(this).data("value");
    $.post("/actions/"+article_id+"/dislike", {}
    ).done(function(data, xhr, e){
      reload_feed();
    });
    return false;
  });


  function reload_feed() {
    $.get("/articles.js", {}).done(function(data, xhr, e){});
  }

});