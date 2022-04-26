$(document).ready(function () {
  $("form").on("submit", function (e) {
    e.preventDefault();

    var data = new FormData(document.querySelector("form"));
    var payer = {};

    data.forEach(function (value, key) {
      payer[key] = value;
    });

    var url = $("form").prop("action");

    $.post(url, payer, function (response) {
      if (response.success) {
        window.location.href = $("form").data("redirect-url");
        return;
      }
    });
  });
});
