require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    x = params[:number].to_i
    phrase = ""
      x.times{phrase+= params[:phrase]}
        "#{phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
    result
  end

  get '/:operation/:number1/:number2' do
    one = params[:number1].to_i
    two = params[:number2].to_i

      case params[:operation]

      when "add"
        (one + two).to_s
      when "subtract"
        (one - two).to_s
      when "multiply"
        (one * two).to_s
      when "divide"
        (one / two).to_s
      #   remainder = param[:number1].to_i - param[:number2].to_i
      #
      # elsif param[:operation] == "multiply"
      #   product = param[:number1].to_i * param[:number2].to_i
      # elsif param[:operation] == "divide"
      #   dividend = param[:number1].to_i / param[:number2].to_i
    end
  end
end
