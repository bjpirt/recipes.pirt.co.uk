module Jekyll
  module DistinctFilter
    def distinct(input, *args)
      input.map { |el|
        el.data[args[0]]
      }.sort.uniq
    end
  end
end

Liquid::Template.register_filter(Jekyll::DistinctFilter)