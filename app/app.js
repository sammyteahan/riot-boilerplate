import Riot from 'riot';
import './components/main.tag';
import './components/people-count.tag';
import PeopleListObservable from './mixins/peopleListObservable';

var params = {
  people: [
    {name: 'Sam', age: 25},
    {name: 'Taylor', age: 22},
    {name: 'Mr. T', age: 55},
    {name: 'Kevin', age: 122}
  ]
};

// Riot.mount('*');

Riot.mixin('peopleListObservable', new PeopleListObservable());
Riot.mount('app', {people: params.people});
Riot.mount('people-count')