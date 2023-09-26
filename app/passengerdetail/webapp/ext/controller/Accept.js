sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        accept: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
