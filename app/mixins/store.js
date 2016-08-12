import Riot from 'riot';


export const store = {

  /**
  * @desc function responsible for any logic required,
  * and passing data to our observers
  *
  * @params countArray {array} - countArray from main.tag
  */
  setCountStore(countArray) {
    this.store.trigger('setCountStore', countArray);
  },

  setCountAction(countArray) {
    this.store.trigger('countAdded', countArray);
  },

  /**
  * @desc mixins extend functionality of a component.
  * so it's helpful to throw a debugger in the onmount
  * life cycle call and see this function is available
  * to an extended component (`let` prduces a private 
  * function only known to this local scope)
  */
  testFunction(e) {
    console.log('doing it real big');
  },

  observable: Riot.observable()
};

export default store;

/**
* @desc on setCountAction, call _setCountStore.
* our countArray object in the main.tag is 
* implicitly passed as a parameter in the
* setCountStore function.
*/
// this.on('setCountAction', setCountStore);

