import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';

export default class MyFirstComponent extends LightningElement {
    @wire(getContacts) contacts;
}
