(function($) {
    $.fn.extend({
        textboxClear: function(options) {
            var defaults = {
                enableColor: "#000",
                disableColor: "#959595"
            };

            var opts = $.extend({}, defaults, options);

            return this.each(function() {
                var obj = $(this);
                obj.data("defaultValue", obj.val())

                obj.focus(function() {
                    if (obj.val() == obj.data("defaultValue") ) {
                        obj
                            .val("")
                            .css("color", opts.enableColor);
                    }

                })

                obj.blur(function() {
                    if (obj.val() == "") {
                        obj
                            .val(obj.data("defaultValue"))
                            .css("color", opts.disableColor)
                    }
                        obj
                             .attr("type","text")
                })
            });
        }
    });
})(jQuery);

