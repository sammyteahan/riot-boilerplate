<people-count>
	<div each={countArray}>
    <strong>{{ title }}</strong>
    <span class={class}>{{ count }}</span>
  </div>

  <script type="es6">
    var self = this;
    self.mixin('store');

    self.observable.on('countAdded', (count) => {
      console.log(count);
      self.countArray = count;
      self.update();
    });

  </script>
</people-count>
