$(document).ready (function() {
    $(".textbox").textboxClear()

    $("#pwd").click(function() {
        $(this)
            .attr("value","")
            document.getElementById("pwd").setAttribute("type","password");
    });
});

