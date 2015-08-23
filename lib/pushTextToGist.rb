
class PushTextToPublicGist
  require 'gist'

  def self.push(text,username,password,gistId,fileName)
    options={}
    options[:username]=username
    options[:password]=password
    Gist.login!(options)
    options1={}
    options1[:update]=gistId
    options1[:filename]=fileName
    Gist.gist( text , options1 )
  end

end