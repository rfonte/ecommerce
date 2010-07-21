$(document).ready (function() {
    $(".textbox").textboxClear()

    $("#pwd").focus(function() {
        $(this)
            .attr("value","")
            document.getElementById("pwd").setAttribute("type","password");
    });
});

