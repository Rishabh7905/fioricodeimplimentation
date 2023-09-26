using TravelService as service from '../../srv/travel-service';

annotate service.Travel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'TravelUUID',
            Value : TravelUUID,
        },
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
    ]
);
annotate service.Travel with @(
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
                Label : 'TravelUUID',
                Value : TravelUUID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TravelID',
                Value : TravelID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BeginDate',
                Value : BeginDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EndDate',
                Value : EndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BookingFee',
                Value : BookingFee,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalPrice',
                Value : TotalPrice,
            },
            {
                $Type : 'UI.DataField',
                Value : CurrencyCode_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TravelStatus_code',
                Value : TravelStatus_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GoGreen',
                Value : GoGreen,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GreenFee',
                Value : GreenFee,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TreesPlanted',
                Value : TreesPlanted,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Agency_AgencyID',
                Value : to_Agency_AgencyID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Customer_CustomerID',
                Value : to_Customer_CustomerID,
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
