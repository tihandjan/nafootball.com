Ads.configure do |config|

  config.sample_tag do |options|
    style = "width: 100%; height: 100%; background: #c8c8c8;"
    content_tag :div, nil, style: style
  end

end
