import { LightningElement, track } from 'lwc';

export default class AddLocationsDatatableMP extends LightningElement {
    @track columns = [
        { label: 'Location Name', fieldName: 'locationName', type: 'text' },
        { label: 'City', fieldName: 'city', type: 'text' },
        { label: 'State', fieldName: 'state', type: 'text' },
        { label: 'Zip Code', fieldName: 'zip', type: 'number' }
    ];

    @track locations = [
        { id: '1', locationName: 'Central Park', city: 'New York', state: 'NY', zip: '10001' },
        { id: '2', locationName: 'Union Square', city: 'San Francisco', state: 'CA', zip: '94108' },
        { id: '3', locationName: 'Millennium Park', city: 'Chicago', state: 'IL', zip: '60601' }
    ];
}