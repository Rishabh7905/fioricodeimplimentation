sap.ui.define(
    [
        "sap/ui/core/mvc/Controller"
    ],
    function(BaseController) {
      "use strict";
  
      return BaseController.extend("projectrishabh.controller.View2", {
        onInit() {
          var oRouter = this.getOwnerComponent().getRouter();
			oRouter.getRoute("RouteView2").attachPatternMatched(this._onObjectMatched, this);
          
        },
        _onObjectMatched: function (oEvent) {
          this.getView().bindElement({
            path: "/" + window.decodeURIComponent(oEvent.getParameter("arguments").invoicePath)
          });
        }
      });
    }
  );