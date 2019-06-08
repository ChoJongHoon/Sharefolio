$(document).ready(function() {
  
  $("#techInput").keydown(function(key) {
    if (key.keyCode === 13) {
      $(".techWrapper").append(
        "<span class='tech'>" + $("#techInput").val() + "</span>"
      );
      $("#techInput").val("");
    }
  });

  $(document).on("click", ".tech", function(event) {
    $(this).remove();
  });

  $("#imageInput").keydown(function(key) {
    if (key.keyCode === 13) {
      $(".imageWrapper").append(
        "<image src='" +
          $("#imageInput").val() +
          "' alt='project image' class='image' />"
      );
      $("#imageInput").val("");
    }
  });

  $(document).on("click", ".image", function(event) {
    $(this).remove();
  });

  $("#hashTagInput").keydown(function(key) {
    if (key.keyCode === 13) {
      $(".hashTagWrapper").append(
        "<span class='hashTag'>#" + $("#hashTagInput").val() + "</span>"
      );
      $("#hashTagInput").val("");
    }
  });

  $(document).on("click", ".hashTag", function(event) {
    $(this).remove();
  });
});
