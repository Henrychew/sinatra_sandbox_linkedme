get '/' do
  erb :index
end

get '/cool_url' do
	puts params
	@status = params[:status]
	@sentence = params[:sentence]
	@age = params[:age]
	@select = params[:select]
	@gender = params[:gender]
	
	puts @status,  @age, @select, @gender
	
  erb :get_cool_url
end


post '/post_cool_url' do
	sentence = params[:user_input]
	if sentence.nil?
		elsif sentence == sentence.upcase
			typo = "Notice! CAPSLOCK is on!"
		elsif sentence == sentence.downcase
			typo = "status has posted!"
		else
			sentence = nil
		@status
		
	end

	@age = params[:age]
	@select = params[:select]
	@gender = params[:gender]

   redirect to("/cool_url?status=#{typo}&sentence=#{sentence}&age=#{@age}&select=#{@select}&gender=#{@gender}")
end