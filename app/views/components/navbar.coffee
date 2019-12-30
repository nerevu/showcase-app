m = require 'mithril'
helpers = require 'lib/helpers'

module.exports =
  view: (vnode) ->
    attrs = vnode.attrs
    # https://getbootstrap.com/docs/4.4/utilities/colors/#background-color
    navbarColor = attrs.navbarColor or 'light'
    navbarMode = if navbarColor in helpers.lightModeColors then 'light' else 'dark'

    m "nav.navbar fixed-top navbar-#{navbarMode} bg-#{navbarColor} shadow-sm",
      m 'div.container.d-flex.justify-content-between',
        m '.navbar-brand.d-flex.align-items-center',
          m 'span', attrs.title
