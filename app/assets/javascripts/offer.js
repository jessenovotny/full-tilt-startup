$(function() {
  $("#intro-offer input").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function($form, event, errors) {
      // additional error messages or events
    },
    submitSuccess: function($form, event) {
      // Prevent spam click
      $("#submit_intro").attr("disabled", true);
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
          $("#intro_optin_sent").html("Your playbook is on it's way!").css("background-color", "#FFFFFF")
          $("#intro_optin_sent").slideDown()
          $("#intro_optin_message").slideDown()
              // .css("display", "block")
          $("#submit_intro").attr("disabled", false);

          //clear all fields
          $('#intro-offer').trigger("reset");
          // debugger;
          setTimeout(function(){ 
            $("#intro_optin_sent").slideUp()
            $("intro_optin_message").slideUp()
          }, 3000)
        },
        error: function() {
          // Fail message 
          $("#intro_optin_error").html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>").css("background-color", "#FFFFFF")

          $("#intro_optin_error").slideDown()
          $("#intro_optin_message").slideDown()
          
          //clear all fields
          $('#intro-offer').trigger("reset");
          // setTimeout(function(){ 
          //   $("#intro_optin_error").slideUp()
          //   $("intro_optin_message").slideUp()
          // }, 6000)
        },
      });
    },
    filter: function() {
        return $(this).is(":visible");
    },
  });

  $("#inline-offer input").jqBootstrapValidation({
    preventSubmit: true,
    submitError: function($form, event, errors) {
      // additional error messages or events
    },
    submitSuccess: function($form, event) {
      // Prevent spam click
      $("#submit_inline").attr("disabled", true);
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
          $("#inline_optin_sent").html("Your playbook is on it's way!").css("background-color", "#FFFFFF")
          $("#inline_optin_sent").slideDown()
          $("#inline_optin_message").slideDown()
              // .css("display", "block")
          $("#submit_inline").attr("disabled", false);

          //clear all fields
          $('#inline-offer').trigger("reset");
          // debugger;
          setTimeout(function(){ 
            $("#inline_optin_sent").slideUp()
            $("inline_optin_message").slideUp()
          }, 3000)
        },
        error: function() {
          // Fail message 
          $("#inline_optin_error").html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>").css("background-color", "#FFFFFF")

          $("#inline_optin_error").slideDown()
          $("#inline_optin_message").slideDown()
          
          //clear all fields
          $('#inline-offer').trigger("reset");
          // setTimeout(function(){ 
          //   $("#intro_optin_error").slideUp()
          //   $("intro_optin_message").slideUp()
          // }, 6000)
        },
      });
    },
    filter: function() {
        return $(this).is(":visible");
    },
  });

  $("#modal-offer input").jqBootstrapValidation({
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
          $("#modal_optin_sent").html("Your playbook is on it's way!").css("background-color", "#FFFFFF")
          $("#modal_optin_sent").slideDown()
          // $("#modal_optin_message").slideDown()
              // .css("display", "block")
          $("#submit_modal").attr("disabled", false);

          //clear all fields
          $('#modal-offer').trigger("reset");
          // debugger;
          setTimeout(function(){ 
            $("#modal_optin_sent").slideUp()
            setTimeout(function(){
              $("#close-modal").click()
            }, 2000)
          }, 3000)
        },
        error: function() {
          // Fail message 
          $("#modal_optin_error").html("<p style=\"margin-bottom:10px;\">Well this is embarrasing.</p><p style=\"margin:0px;\">Until I can fix this, try emailing me at: <a href=\"mailto:jesse@fulltiltdev.com\" target=\"_blank\">jesse@fulltiltdev.com</a></p>").css("background-color", "#FFFFFF")

          $("#modal_optin_error").slideDown()
          // $("#modal_optin_message").slideDown()
          
          //clear all fields
          $('#modal-offer').trigger("reset");
          // setTimeout(function(){ 
          //   $("#intro_optin_error").slideUp()
          //   $("intro_optin_message").slideUp()
          // }, 6000)
        },
      });
    },
    filter: function() {
        return $(this).is(":visible");
    },
  });
});