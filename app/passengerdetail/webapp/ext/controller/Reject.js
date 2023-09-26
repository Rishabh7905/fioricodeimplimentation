sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        rejected: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
