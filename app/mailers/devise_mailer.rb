class DeviseMailer < Devise::Mailer
  layout 'emails'

  def headers_for(action)
    headers = {
      :subject       => translate(devise_mapping, action),
      :from          => mailer_sender(devise_mapping),
      :to            => resource.email,
      :template_path => template_paths
    }
  end
end