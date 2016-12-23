Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '401556893516283', 'df1d6e728afe377188f16ceba51f895b',
    scope: 'email'
end

OmniAuth.config.logger = Rails.logger
