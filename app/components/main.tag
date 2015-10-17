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
    }

    this.on('mount', function() {
      console.log('app component mounted');
    });
  </script>
</app>
