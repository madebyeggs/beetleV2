class Contact < MailForm::Base
  
    attribute :name,      :validate => true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :file,      :attachment => true
    attribute :message
    attributes :nickname,   :captcha => true

    def headers
      {
        :subject => "New candidate message from the website",
        :to => "ed_hamilton@live.com",
        :from => %("#{name}" <#{email}>)
      }
    end
  
end