$(document).ready(function(){
  $(".error").hide();
  
  $("#recipe_form").on("submit", function(e){
    var valid_recipe_form = true;
    
    var recipe_name = $("#recipe_name").val();
    if (recipe_name === ""){
      $("#recipe_name").next().show();
      valid_recipe_form = false;
    }
    
    var directions = $("#directions").val();
    if (directions === ""){
      $("#directions").next().show();
      valid_recipe_form = false;
    }
    
    if (valid_recipe_form === false){
      e.preventDefault():  
    }
    
  });
  
  $("#review_form_new").on("submit", function(e){
    var new_review_valid_form = true;
    
    var review_text_new = $("#review_text_new").val();
    if (recipe_text_new === ""){
      $("#review_text_new").next().show();
      new_review_valid_form = false;
    }
    
    if (new_review_valid_form === false){
      e.preventDefault();
    
  });
  
  $("#review_form_edit").on("submit", function(e){
    var edit_review_valid_form = true;
    
    var review_text_edit = $("#review_text_edit").val();
    if (review_text_edit === ""){
      $("#review_text_edit").next().show();
      edit_review_valid_form = false;
    }
    
    if (edit_review_valid_form === false){
      e.preventDefault();
    }
  });
  
});