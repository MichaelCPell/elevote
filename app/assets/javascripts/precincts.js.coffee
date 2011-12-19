# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
  $('#precinct_id').parent().hide()
  precincts = $('#precinct_id').html()
  $('#precinct_county_id').change ->
    county = $('#precinct_county_id :selected').text()
    escaped_county = county.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(precincts).filter("optgroup[label='#{escaped_county}']").html()
    if options
      $('#precinct_id').html(options)
      $('#precinct_id').parent().show()
    else
      $('#precinct_id').html(options)
      $('#precinct_id').parent().show()