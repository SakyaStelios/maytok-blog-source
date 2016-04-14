# jekyll-readtime
# 2015 Ron Scott-Adams, Licensed under MIT:
# https://tldrlegal.com/license/mit-license
# Original work: https://gist.github.com/zachleat/5792681

# Outputs the estimated time the average person might take to read the content.
# 200 is a round figure based on estimates gathered from various studies.
# http://www.ncbi.nlm.nih.gov/pubmed/18802819

# Usage: {{ page.content | readtime }}
# Will emit as an integer.
module ReadTime
  def readtime(input)
    words_per_minute = 180

		words = input.split.size;
		minutes = ( words / words_per_minute ).floor
		
		minutes = 1 if minutes === 0
		
		minutes_label = minutes === 1 ? " min." : " mins."
		minutes > 0 ? "Léelo en #{minutes} #{minutes_label}" : "1 min"
  end
end

Liquid::Template.register_filter(ReadTime)
