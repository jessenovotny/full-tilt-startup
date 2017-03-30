$(function() {
  // $("#intro_optin input").jqBootstrapValidation({
  //   preventSubmit: true,
  //   submitError: function($form, event, errors) {
  //     // additional error messages or events
  //   },
  //   submitSuccess: function($form, event) {
  //     // Prevent spam click
  //     $("#submit_intro").attr("disabled", true);
  //     event.preventDefault();
  //     var email = $form[0][0].value            
  //     $.ajax({
  //       url: "/optin",
  //       type: "POST",
  //       data: {
  //         lead: {email: email},
  //       },
  //       cache: false,
  //       success: function() {
  //         // Enable button & show success message
  //         $("#submit_intro").attr("disabled", false);
  //         $("#intro_optin_sent")
  //           .html("Your playbook is on it's way!")
  //           .css("background-color", "#FFFFFF")
  //         $("#intro_optin_sent").slideDown()
  //         $("#intro_optin_message").slideDown()          

  //         //clear all fields
  //         $('#intro_optin').trigger("reset");
          
  //         // hide success message after 3 seconds
  //         setTimeout(function(){ 
  //           $("#intro_optin_sent").slideUp()
  //           $("intro_optin_message").slideUp()
  //         }, 3000)
  //       },
  //       error: function() {
  //         // Fail message 
  //         $("#intro_optin_error")
  //           .html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>")
  //           .css("background-color", "#FFFFFF")

  //         $("#intro_optin_error").slideDown()
  //         $("#intro_optin_message").slideDown()
          
  //         //clear all fields
  //         $('#intro_optin').trigger("reset");
  //       },
  //     });
  //   },
  //   filter: function() {
  //       return $(this).is(":visible");
  //   },
  // });

  // $("#inline_optin input").jqBootstrapValidation({
  //   preventSubmit: true,
  //   submitError: function($form, event, errors) {
  //     // additional error messages or events
  //   },
  //   submitSuccess: function($form, event) {
  //     // Prevent spam click
  //     $("#submit_inline").attr("disabled", true);
  //     event.preventDefault();
  //     var email = $form[0][0].value            
  //     $.ajax({
  //       url: "/optin",
  //       type: "POST",
  //       data: {
  //         lead: {email: email},
  //       },
  //       cache: false,
  //       success: function() {
  //         // Enable button & show success message
  //         $("#submit_inline").attr("disabled", false);
  //         $("#inline_optin_sent")
  //           .html("Your playbook is on it's way!")
  //           .css("background-color", "#FFFFFF")
  //         $("#inline_optin_sent").slideDown()
  //         $("#inline_optin_message").slideDown()

  //         //clear all fields
  //         $('#inline_optin').trigger("reset");

  //         // hide success message after 3 seconds
  //         setTimeout(function(){ 
  //           $("#inline_optin_sent").slideUp()
  //           $("inline_optin_message").slideUp()
  //         }, 3000)
  //       },
  //       error: function() {
  //         // Fail message 
  //         $("#inline_optin_error")
  //           .html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>")
  //           .css("background-color", "#FFFFFF")

  //         $("#inline_optin_error").slideDown()
  //         $("#inline_optin_message").slideDown()
          
  //         //clear all fields
  //         $('#inline_optin').trigger("reset");
  //       },
  //     });
  //   },
  //   filter: function() {
  //       return $(this).is(":visible");
  //   },
  // });

  $("#modal_optin input").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function($form, event, errors) {
      // additional error messages or events
    },
    submitSuccess: function($form, event) {
      // Prevent spam click
      $("#submit_modal").attr("disabled", true);
      event.preventDefault();
      var email = $form[0][0].value            
      $.ajax({
        url: "/optin",
        type: "POST",
        data: {
          lead: {email: email},
        },
        cache: false,
        success: function() {
          // Enable button & show success message
          $("#submit_modal").attr("disabled", false);          
          $("#modal_optin_sent")
            .html("Your playbook is on it's way!")
            .css("background-color", "#FFFFFF")
          $("#modal_optin_sent").slideDown()

          //clear all fields
          $('#modal_optin').trigger("reset");

          // hide success message after 3 seconds
          setTimeout(function(){ 
            $("#modal_optin_sent").slideUp()
            setTimeout(function(){
              $("#close-modal").click()
            }, 2000)
          }, 3000)
        },
        error: function() {
          // Fail message 
          $("#modal_optin_error")
            .html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>")
            .css("background-color", "#FFFFFF")

          $("#modal_optin_error").slideDown()
          
          //clear all fields
          $('#modal_optin').trigger("reset");
        },
      });
    },
    filter: function() {
        return $(this).is(":visible");
    },
  });
});