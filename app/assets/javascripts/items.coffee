# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $(document).on "page:change", ->
#   $('#custom_room_link').click ->
#     $('#custom_room').toggle()

$(document).on "page:change", ->
  $('#custom_room').change ->
      alert "Clicked"
