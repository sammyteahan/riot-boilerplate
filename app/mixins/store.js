import Riot from 'riot';


export const store = {

  /**
  * @desc function responsible for any logic required,
  * and passing data to our observers
  *
  * @params countArray {array} - countArray from main.tag
  */
  setCountStore(countArray) {
    this.observable.trigger('setCountStore', countArray);
  },

  setCountAction(countArray) {
    this.observable.trigger('countAdded', countArray);
  },

  testFunction(e) {
    console.log('doing it real big');
  },

  observable: Riot.observable()
};

export default store;
