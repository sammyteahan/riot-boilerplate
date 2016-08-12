import Riot from 'riot';
import './components/main.tag';
import './components/people-count.tag';
import PeopleListObservable from './mixins/peopleListObservable';

var params = {
  people: [
    {name: 'Sam', age: 26},
    {name: 'Kevin', age: 122}
  ]
};

// Riot.mount('*');

Riot.mixin('peopleListObservable', new PeopleListObservable());
Riot.mount('app', {people: params.people});
Riot.mount('people-count')
