$(function() {
// initial
$('#nav span').css({
width: $('#nav .current').outerWidth(),
left: $('#nav .current').position().left
});
// mouseover
$('#nav a').mouseover(function(){
$('#nav span').stop().animate({
width: $(this).outerWidth(),
left: $(this).position().left}
,'fast');
});
});
