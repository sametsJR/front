$('input[type=radio][name=equations]').change(function () {
  $('#equation_details_linear').css("display","none");
  $('#equation_details_quadratic').css("display","none");
  var fieldToShow = $(this).val();
  $("#" + fieldToShow).css("display","block");
});
