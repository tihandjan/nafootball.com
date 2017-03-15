class Donation < ActiveRecord::Base

  serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
        business: "tihandjan198921@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: amount,
        item_name: 'donate',
        item_number: id,
        quantity: '1',
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

end
