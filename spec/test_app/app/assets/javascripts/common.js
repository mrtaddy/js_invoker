var jsInvoker = new JsInvoker()
var appendLabel = function(name) {
  var el = document.createElement('div');
  var node = document.createTextNode(name);
  el.appendChild(node)
  document.body.appendChild(el);
}
jsInvoker.register('layouts/application', function() {
  appendLabel('#application#');
});
jsInvoker.register('shared/_all', function() {
  appendLabel('#all#');
});
jsInvoker.register('page/first', function() {
  appendLabel('#first#');
});

jsInvoker.register('page/second', function() {
  appendLabel('#second#');
});

jsInvoker.register('page/third', function() {
  appendLabel('#third#');
});

jsInvoker.register('page/fourth', function() {
  appendLabel('#fourth#');
});

jsInvoker.register('specified_path', function() {
  appendLabel('#specified#');
});

window.jsInvoker = jsInvoker

