<people-count>
	<div each={countArray}>
    <strong>{title}</strong>
    <span class={class}>{count}</span>
  </div>

  <script type="es6">
    var self = this;
    self.mixin('store');

    self.observable.on('countAdded', (countArray) => {
			console.log('count added');
      self.countArray = countArray;
      self.update();
    });

  </script>
</people-count>
