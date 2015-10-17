import Riot from 'riot';
import './components/main.tag';

var params = {
  people: [
    {name: 'Sam', age: 25},
    {name: 'Taylor', age: 22},
    {name: 'Mr. T', age: 55}
  ]
};

// Riot.mount('*');
Riot.mount('app', {people: params.people});