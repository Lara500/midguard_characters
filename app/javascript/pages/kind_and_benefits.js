(function() {
    var KindAndBenefits;

    KindAndBenefits = (function() {
        function KindAndBenefits() {}

        KindAndBenefits.init = function() {
            $('.find_benefits').on('change', function() {
                        jQuery.ajax({
                        url: "/kind_and_benefits",
                        type: "GET",
                        data: {"kind_name": this.value},
                        dataType: "html",
                        success: function (data) {
                            jQuery("#benefitsDiv").html(data);
                        }
                    });
                    });
        };

        return KindAndBenefits;

    })();

    window.KindAndBenefits = KindAndBenefits;

}).call(this);
