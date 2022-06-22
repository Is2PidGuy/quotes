class ApplicationController < ActionController::Base
  def read
    data = { name: 'Uttam' }
    render(json: { status: 'failure', message: data })
  end
end
