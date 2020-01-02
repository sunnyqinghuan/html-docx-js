JSZip = require 'jszip'
internal = require './internal'
fs = require 'fs'

module.exports =
  asBlob: (type='blob',html, options) ->
    zip = new JSZip()
    internal.addFiles(zip, html, options)
    internal.generateDocument(type,zip)
