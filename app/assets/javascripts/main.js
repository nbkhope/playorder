/* nav-toggle */
$(function(){
  $(".nav-index li").on("click" , function(){
    var num = $(".nav-index li").index(this);
    $(".contents").fadeOut();
    $(".contents").eq(num).fadeIn();
    $(".nav-index li").removeClass('select');
      $(".nav-index li").eq(num).addClass('select');
  });

  $('#exampleModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text('New message to ' + recipient)
    modal.find('.modal-body input').val(recipient)
  })

  $(".signout-button").on('click', function(){
    $(".signinpage").hide();
    $(".signoutpage").show();
  });

  $(".signin-button").on('click', function(){
    $(".signoutpage").show();
    $(".signinpage").hide();
  });

});
