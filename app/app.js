import riot from 'riot';
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

// riot.mount('*');

riot.mixin('peopleListObservable', new PeopleListObservable());
// riot.mount('app', {people: params.people});
riot.mount('app');
riot.mount('people-count')
