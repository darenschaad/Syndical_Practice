// setTimeout(function(){ document.write("<h1> Hello </h1>"); }, 1000);
document.write("<p> Test JS </p>")
document.write("<div id='our-awesome-widget-target'></div>");
var receivedForm = function(data) {
  $("#our-awesome-widget-target").html(data["html"]);
}

$.ajax({
  url: 'https://dotcal.com/embed/mini?u=bc74f13666&h=630',
  dataType: 'jsonp',
  success: receivedForm
});


$(document).ready(function(){
  $("#test").click(function(){
    $("#test").html("This is Hello World by JQuery");
  })

});
