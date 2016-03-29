# jekyll-readtime
# 2015 Ron Scott-Adams, Licensed under MIT:
# https://tldrlegal.com/license/mit-license
# Original work: https://gist.github.com/zachleat/5792681

# Outputs the estimated time the average person might take to read the content.
# 200 is a round figure based on estimates gathered from various studies.
# http://www.ncbi.nlm.nih.gov/pubmed/18802819

# Usage: {{ page.content | readtime }}
# Will emit as an integer.
module CountWords
  def countwords(input)

		words = input.split.size;
		words
  end
end

Liquid::Template.register_filter(CountWords)
