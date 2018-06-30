module Jekyll
  class GalleryImgTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @img = "/images/p/" + text.strip
    end

    def render(context)
      "<a href=\"#{@img}\"><img src=\"#{@img}\" alt=\"GIMG\"/></a>"
    end
  end
end

Liquid::Template.register_tag('gimg', Jekyll::GalleryImgTag)