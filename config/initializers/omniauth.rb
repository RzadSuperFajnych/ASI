Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "320787424705153", "5f8a63351ae72f3ba76505f1c9346e1b"
  provider :github, "8b0c6369616a1a417cb2", "50bcd77b064bbf28a21c800694ac5c9de4e4cd21"
end 