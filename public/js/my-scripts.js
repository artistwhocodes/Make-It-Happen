// NAV TAB
$(document).ready(function() {  //i had to use ajax since i'm refreshing the page when i clink on a link
  $('.nav-link.active').removeClass('active');
  $('a[href="' + location.pathname + '"]').closest('.nav-link').addClass('active');
});

var RAVENCLAW = $('.completed li[class=ravenclaw]').length; //counts
var SLYTHERIN = $('.completed li[class=slytherin]').length;
var GRYFFINDOR = $('.completed li[class=gryffindor]').length;
var HUFFLEPUFF = $('.completed li[class=hufflepuff]').length;

function housebanner(){
    $('#profilepage .col-md-2.ravenclaw').prepend('<img src="/images/ravenclawbanner.png" class="img-fluid" alt="Responsive image">');
    $('#showpage .col-md-6.ravenclaw').prepend('<img src="/images/ravenclawbanner.png" class="img-fluid" alt="Responsive image">');

    $('#profilepage .col-md-2.gryffindor').prepend('<img src="/images/gryffindorbanner.png" class="img-fluid" alt="Responsive image">');
    $('#showpage .col-md-6.gryffindor').prepend('<img src="/images/gryffindorbanner.png" class="img-fluid" alt="Responsive image">');

    $('#profilepage .col-md-2.hufflepuff').prepend('<img src="/images/hufflepuffbanner.png" class="img-fluid" alt="Responsive image">');
    $('#showpage .col-md-6.hufflepuff').prepend('<img src="/images/hufflepuffbanner.png" class="img-fluid" alt="Responsive image">');

    $('#profilepage .col-md-2.slytherin').prepend('<img src="/images/slytherinbanner.png" class="img-fluid" alt="Responsive image">');
    $('#showpage .col-md-6.slytherin').prepend('<img src="/images/slytherinbanner.png" class="img-fluid" alt="Responsive image">');
}
housebanner();


function housepoints(){

  RAVENCLAW *= 10; //multiply
  $('#ravenclaw-size').text(RAVENCLAW); // store

  SLYTHERIN *= 10;
  $('#slytherin-size').text(SLYTHERIN);

  GRYFFINDOR *= 10;
  $('#gryffindor-size').text(GRYFFINDOR);

  HUFFLEPUFF *= 10;
  $('#hufflepuff-size').text(HUFFLEPUFF);
}
housepoints();

function househourglass(){
  var result = Math.max(RAVENCLAW,SLYTHERIN,GRYFFINDOR,HUFFLEPUFF)
  if (result == RAVENCLAW)
  {
    $('#housespage .col-md-2.hourglass').addClass("ravenclawhourglass");
  }
  else if (result == SLYTHERIN)
  {
    $('#housespage .col-md-2.hourglass').addClass("slytherinhourglass");
  }
  else if (result == GRYFFINDOR)
  {
    $('#housespage .col-md-2.hourglass').addClass("gryffindorhourglass");
  }
  else (result == HUFFLEPUFF)
  {
    $('#housespage .col-md-2.hourglass').addClass("hufflepuffhourglass");
  }
}
househourglass();

function houseemoji(){
  $('#achievements .completed li.ravenclaw').prepend('<img src="/images/rav_housecrest.png" height="50px"/>'); // store
  $('#achievements .completed li.gryffindor').prepend('<img src="/images/gry_housecrest.png" height="50px"/>');
  $('#achievements .completed li.hufflepuff').prepend('<img src="/images/huff_housecrest.png" height="50px"/>');
  $('#achievements .completed li.slytherin').prepend('<img src="/images/sly_housecrest.png" height="50px"/>');
}
houseemoji();
