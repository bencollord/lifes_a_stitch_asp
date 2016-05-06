$(document).ready(function () {
  $("#name").focus();
  
  $("#contact-form").validate({
    
    validClass: "isValid",
    
    errorClass: "isNotValid",
    
    errorElement: "em",
    
    rules: {
      name: {
        required: true
      },
      email: {
        required: true,
        email: true
      },
      message: {
        required: true
      }
    },
    
    messages: {
      name: {
        required: "Name is a required field"
      },
      email: {
        required: "Email is a required field",
        email: "Please enter a valid email address"
      },
      message: {
        required: "Message is a required field"
      }
    }
  });
  
  //clear form fields on double-click
  $("#name, #email, #message").dblclick(function(){
    $(this).val("");
  });
  
}); //end ready