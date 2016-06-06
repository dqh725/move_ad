# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $(document).on 'change', '#makes_select', (evt) ->
    console.log("run update");
    $.ajax 'update_makes',
      type: 'GET'
      format: "js",
      dataType: 'script'
      data: {
        make: $("#makes_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")