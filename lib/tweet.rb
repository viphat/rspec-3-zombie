class Tweet
  attr_accessor :status

  def initialize(params={})
    @status = params[:status]
  end

end
