m = require 'mithril'

config = require 'config'
helpers = require 'lib/helpers'
author = config.author

module.exports = (vnode, attrs) ->
  ctrl = vnode.state.ctrl
  attrs = Object.assign attrs or {}, vnode.attrs
  site = config.site

  m 'main', { 'role': 'main' }, [
    m '.jumbotron jumbotron-fluid py-3 py-md-5 mb-0 bg-primary text-light', [
      m '.container', [
        m 'h1.display-4 fw-300', site.subTitle
        m 'p.lead', site.description
      ]
    ]

    m ".album.py-5 bg-#{site.mode}",
      m '.container',
        m '.row',
          m '.col-md-12',
            m '.card.mb-12.shadow-sm',
              m '.card-body', [
                m 'p.card-text', site.title
                m '.d-flex.justify-content-between.align-items-center',
                  m 'small.text-muted', site.description
              ]
  ]
