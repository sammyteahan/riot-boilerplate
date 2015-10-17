<app>
  <h1>{opts.title}</h1>
  <script type="es6">
    var self = this;
    this.on('mount', function() {
      console.log('component mounted');
    });
  </script>
</app>
