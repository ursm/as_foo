module AsFoo
  module AsMarkdown
    def as_markdown(with: :redcarpet, options: nil)
      case with
      when :redcarpet
        require 'redcarpet'
        Redcarpet::Markdown.new(Redcarpet::Render::HTML, options.to_h).render(self.to_s)
      else
        raise ArgumentError.new("unexpected method #{with}")
      end
    end
  end
end
