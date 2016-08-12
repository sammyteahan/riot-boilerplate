<app>
  <h1>{opts.title}</h1>
  <input type="text" id="nameInput" placeholder="Name" onkeyup={edit}>
  <input type="text" id="ageInput" placeholder="Age" onkeyup={edit}>
  <button onClick={add}>Add</button>
  <ul>
    <li each={person in opts.people}>{person.name} - {person.age}</li>
  </ul>

  <script type="es6">
    var self = this;
    self.disabled = true;
    self.mixin('store');

    self.edit = (e) => {
      self.disabled = (nameInput.value == '' || ageInput.value == '')
    }

    self.add = (e) => {
      opts.people.push({
        name: nameInput.value,
        age: ageInput.value
      });
      self.nameInput.value = '';
      self.ageInput.value = '';
      self.disabled = true;

      /**
      * @desc trigger observable action on add
      */
      self.setCountAction(self.countArray());
    }

    self.oldFarts = (age) => {
      return age >= 60;
    }

    self.whipperSnappers = (age) => {
      return age <= 20;
    }

    self.countArray = (e) => {
      return [
        {
          title: 'Old Farts',
          class: 'red',
          count: opts.people
            .map(person => person.age)
            .filter(self.oldFarts)
            .length
        },
        {
          title: "Whippersnappers",
          class: 'blue',
          count: opts.people
            .map(person => person.age)
            .filter(self.whipperSnappers)
            .length
        },
        {
          title: "Total",
          count: opts.people.length
        }
      ]
    }

    /**
    * @todo figure out better way to init.
    * right now on mount isn't working until
    * after a person is added from form. and
    * this makes too many function calls
    */
    this.on('updated', function() {
      self.setCountAction(self.countArray());
    });

  </script>
</app>
