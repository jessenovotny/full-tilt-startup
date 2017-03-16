$(function() {
  $("#contactForm input,#contactForm textarea").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function($form, event, errors) {
        // additional error messages or events
    },
    submitSuccess: function($form, event) {
      // Prevent spam click and default submit behaviour
      $("#contactSubmit").attr("disabled", true);
      event.preventDefault();
      
      // get values from FORM
      var name = $form[0][0].value
      var email = $form[0][1].value
      var website = $form[0][2].value;
      var message = $form[0][3].value;
      
      // Check for white space in name for Success/Fail message
      var firstName = name;
      if (firstName.indexOf(' ') >= 0) {
        firstName = name.split(' ').slice(0, -1).join(' ');
      }
      $.ajax({
        url: "/contact",
        type: "POST",
        data: {
          lead: {            
            name: name,
            website: website,
            email: email
          },
          message: message
        },
        cache: false,
        success: function() {
          // Enable button & show success message
          $("#contact_sent").html('Thanks for reaching out ' + firstName + "! I'll be in touch.").slideDown()
          $("#contactSubmit").attr("disabled", false);

          //clear all fields
          $('#contactForm').trigger("reset");

          setTimeout(function(){ 
            $("#contact_sent").slideUp()
          }, 3000)
        },
        error: function() {
          // Fail message
          $("#contact_error").html("Well " + firstName + ', this is embarrasing. For now, try emailing me at: <a href="mailto:jesse@fulltiltdev.com" target="_blank">jesse@fulltiltdev.com</a>')
              .slideDown()

          //clear all fields
          $('#contactForm').trigger("reset");
        },
      });
    },
    filter: function() {
      return $(this).is(":visible");
    }
  });

  $("a[data-toggle=\"tab\"]").click(function(e) {
    e.preventDefault();
    $(this).tab("show");
  });
});

// When clicking on Full hide fail/success boxes
$('#name').focus(function() {
  $('#success').html('');
});
