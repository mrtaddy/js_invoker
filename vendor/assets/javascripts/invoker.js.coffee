class JsInvoker
  constructor: (options = {})->
    @store = {}
    @onDuplicatedEntry  = options['onDuplicatedEntry']
    @onNotRegisterEntry = options['onNotRegisterEntry']

  register: (path, func)->
    if path of @store
      @onDuplicatedEntry(path, message) if @onDuplicatedEntry
    @store[path] = func

  list: ->
    @store

  invoke: (invokePaths)->
    for path in invokePaths
      if path of @store
        @store[path]()
      else
        @onNotRegisterEntry(path) if @onNotRegisterEntry

  invokeOnlyFoundPaths: ->
    invokePaths = []
    $('div[data-js-invoke]').each ->
      path = $(this).data('js-invoke')
      invokePaths.push(path) unless path in invokePaths
    @invoke(invokePaths)
window.JsInvoker = JsInvoker
