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
    self.mixin('peopleListObservable');

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

      // Trigger observable action
      self.trigger('setCountAction', self.countArray());
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
          title: "Old Farts",
          count: opts.people
              .map((person) => person.age)
              .filter(self.oldFarts)
              .length,
              class: 'red'
        },
        {
            title: "Whippersnappers",
            count: opts.people
                .map((person) => person.age)
                .filter(self.whipperSnappers)
                .length,
                class: 'blue'
        },
        {
            title: "Total",
            count: opts.people.length
        }
      ]
    }

    this.on('mount', function() {
      self.trigger('setCountAction', self.countArray());
    });

  </script>
</app>
