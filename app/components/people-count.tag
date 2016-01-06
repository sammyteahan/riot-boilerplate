<people-count>
	<div each={countArray}>
    <strong>{title}</strong>
    <span class={class}>{count}</span>
  </div>

  <script type="es6">
    var self = this;
    
    self.mixin('peopleListObservable');

    self.on('setCountStore', (count) => {
      self.update({countArray: count});
    });

  </script>
</people-count>
