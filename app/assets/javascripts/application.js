// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
<<<<<<< HEAD
//= require_tree .
=======
>>>>>>> 690d75a5d623ea59e4b9b6a16a846790610d40ac
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr
$(document).on("focus", "[data-behaviour~='datepicker']", function(e){
<<<<<<< HEAD
   $(this).datepicker({"format": "yyyy-mm-dd", "weekStart": 1, "autoclose": true})
=======
    $(this).datepicker({"format": "yyyy-mm-dd", "weekStart": 1, "autoclose": true})
>>>>>>> 690d75a5d623ea59e4b9b6a16a846790610d40ac
});
