sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project123/test/integration/FirstJourney',
		'project123/test/integration/pages/FlightList',
		'project123/test/integration/pages/FlightObjectPage'
    ],
    function(JourneyRunner, opaJourney, FlightList, FlightObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project123') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFlightList: FlightList,
					onTheFlightObjectPage: FlightObjectPage
                }
            },
            opaJourney.run
        );
    }
);