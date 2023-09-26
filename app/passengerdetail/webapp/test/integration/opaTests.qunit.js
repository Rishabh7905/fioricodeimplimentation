sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'passengerdetail/test/integration/FirstJourney',
		'passengerdetail/test/integration/pages/BookingList',
		'passengerdetail/test/integration/pages/BookingObjectPage',
		'passengerdetail/test/integration/pages/BookingSupplementObjectPage'
    ],
    function(JourneyRunner, opaJourney, BookingList, BookingObjectPage, BookingSupplementObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('passengerdetail') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBookingList: BookingList,
					onTheBookingObjectPage: BookingObjectPage,
					onTheBookingSupplementObjectPage: BookingSupplementObjectPage
                }
            },
            opaJourney.run
        );
    }
);