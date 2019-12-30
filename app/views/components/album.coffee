m = require 'mithril'
helpers = require 'lib/helpers'
utils = require 'lib/utils'

module.exports =
  view: (vnode) ->
    attrs = vnode.attrs
    colors = utils.getColors attrs

    # https://getbootstrap.com/docs/4.4/utilities/colors/#background-color
    albumColor = colors.albumColor or 'white'
    textColor = colors.albumTextColor or helpers.getTextColor albumColor

    m ".album.py-5 bg-#{albumColor} text-#{textColor}",
      m '.container',
        m '.row',
          m '.col-md-12',
            m '.card.mb-12.shadow-sm',
              m '.card-body', [
                m 'p.card-text', attrs.title
                m '.d-flex.justify-content-between.align-items-center',
                  m 'small.text-muted', attrs.description
              ]
