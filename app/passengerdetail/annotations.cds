using TravelService as service from '../../srv/travel-service';
using from '../../db/schema';



annotate service.Booking with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BookingStatus_code,
            Label : 'BookingStatus_code',
        },
        {
            $Type : 'UI.DataField',
            Value : BookingUUID,
        },
        {
            $Type : 'UI.DataField',
            Value : BookingID,
            Label : 'BookingID',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : LastChangedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : to_Travel.CurrencyCode.symbol,
        },
        {
            $Type : 'UI.DataField',
            Value : CurrencyCode_code,
        },
        {
            $Type : 'UI.DataField',
            Value : FlightDate,
            Label : 'FlightDate',
        },
        {
            $Type : 'UI.DataField',
            Value : to_Travel.to_Booking.BookingStatus_code,
            Label : 'BookingStatus_code',
        },
    ]
);
annotate service.Booking with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : LastChangedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : LastChangedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingUUID',
                Value : BookingUUID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Travel_TravelUUID',
                Value : to_Travel_TravelUUID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingID',
                Value : BookingID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingDate',
                Value : BookingDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ConnectionID',
                Value : ConnectionID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FlightDate',
                Value : FlightDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FlightPrice',
                Value : FlightPrice,
            },
            {
                $Type : 'UI.DataField',
                Value : CurrencyCode_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingStatus_code',
                Value : BookingStatus_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Carrier_AirlineID',
                Value : to_Carrier_AirlineID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Customer_CustomerID',
                Value : to_Customer_CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookedFlights',
                Value : BookedFlights,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Booking with @(
    UI.SelectionFields : [
        BookingDate,
        to_Customer_CustomerID,
        to_Travel_TravelUUID,
        BookedFlights,
    ]
);
annotate service.Booking with {
    BookingDate @Common.Label : 'BookingDate'
};
annotate service.Booking with {
    to_Customer @Common.Label : 'to_Customer_CustomerID'
};
annotate service.Booking with {
    to_Travel @Common.Label : 'to_Travel_TravelUUID'
};
annotate service.Booking with {
    BookedFlights @Common.Label : 'BookedFlights'
};
annotate service.Booking with @(
    UI.DataPoint #BookingUUID : {
        $Type : 'UI.DataPointType',
        Value : BookingUUID,
        Title : 'BookingUUID',
    },
    UI.HeaderFacets : []
);
annotate service.Booking with @(
    UI.DataPoint #progress : {
        $Type : 'UI.DataPointType',
        Value : BookingID,
        Title : 'BookingID',
        TargetValue : 100,
        Visualization : #Progress,
    }
);
annotate service.Booking with @(
    UI.DataPoint #BookingID : {
        $Type : 'UI.DataPointType',
        Value : BookingID,
        Title : 'BookingID',
    }
);
annotate service.Booking with @(
    UI.FieldGroup #i18nBooking1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Booking with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>CustomerID}',
        TypeNamePlural : 'Customers',
        Title : {
            $Type : 'UI.DataField',
            Value : to_Customer.EMailAddress,
        },
    }
);
