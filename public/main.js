$(document).ready(function(){
  $(".grad").click(function(e){
    name = $(e.currentTarget).data("name")
    $(".grads .grad").fadeOut(function(){
      $(e.currentTarget).fadeIn()
      $(".grad-box[data-name='" + name + "']").fadeIn()
      $(".see-all").fadeIn()
    })
  })
  $(".see-all").click(function(){
    $(".see-all, .grad-box").fadeOut(1200, function(){
      $(".grads .grad").fadeIn()
    })
  })
})