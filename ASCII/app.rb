require "sinatra"
require "artii"

get "/ascii/:word/?:font?/?:secret?" do
	word_choosen = params[:word]
	font_choosen = params[:font]
	secret_picture = params[:secret]
	if word_choosen != "unicorn"
		if font_choosen == nil
			my_artii = Artii::Base.new :font => "slant"
		else
			my_artii = Artii::Base.new :font => font_choosen
		end
		@word_ascii = my_artii.asciify(word_choosen)

		erb (:ascii)
	end
	
	if font_choosen == "special" && secret_picture == "secret"
		 erb (:unicorn)
	else
		erb (:ascii)
	end
end