$( document ).ready(function() {
    $('.bla').change(function () {
        $(this).submit().next().toggleClass("strike");
    })
});