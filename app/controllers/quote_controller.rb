class QuoteController < ApplicationController
  def quote_json
    data = Quotes::sample
    render(json: { quote: data })
  end

  def quote_xml
    data = Quotes::sample
    render(xml: { quote: data })
  end

  def quote_html
    @quote = Quotes::sample.with_indifferent_access
  end
end
