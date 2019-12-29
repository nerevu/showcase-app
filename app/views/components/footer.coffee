m = require 'mithril'
helpers = require 'lib/helpers'

year = (new Date()).getFullYear()

module.exports =
  view: (vnode) ->
    attrs = vnode.attrs
    links = attrs.links or []
    # https://getbootstrap.com/docs/4.4/utilities/colors/#background-color
    bgColor = attrs.bgColor or 'light'
    textColor = if bgColor in helpers.lightModeColors then 'dark' else 'light'

    m "footer.bd-footer small text-#{textColor} mt-auto bg-#{bgColor}",
      m '.container py-3 py-md-5', [
        m 'p.mb-0', [
          "Copyright © #{year} "
          m 'a.strong', {
            href: attrs.url
            oncreate: m.route.link
            onupdate: m.route.link
          }, attrs.name
          '. All rights reserved.'
        ]

        if attrs.links?.length
          m 'ul.bd-footer-links mb-0 mt-3', attrs.links?.map (link) ->
            m 'li',
              m 'a.strong', {
                href: link.href
                oncreate: m.route.link
                onupdate: m.route.link
              }, link.text
      ]
