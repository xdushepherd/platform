# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#instrument_date_purchased')
    .datetimepicker({
      language: 'zh-CN',
      autoclose: 'true',
      minView: 2,
      format: 'yyyy-mm-dd'
    })
    .datetimepicker('show')
  $('#instrument_date_producted')
    .datetimepicker({
      language: 'zh-CN',
      autoclose: 'true',
      minView: 2,
      format: 'yyyy-mm-dd'
    })
    .datetimepicker('show')