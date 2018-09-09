class Service < ApplicationRecord
  belongs_to :from_stylist, class_name: 'Stylist', foreign_key: 'from_stylist_id'

  has_many :bookings, dependent: :destroy
  has_many :clients, dependent: :destroy

  def formatted_date
    datetime.strftime("%d/%m/%Y")
  end

  def self.select_dates
    self.pluck("disctinct date(datetime)")
  end

  def self.search(search_params)
    date = searcg_params[:date].to_datetime
    from_stylist = search_params[:from_stylist]

    Service.where(from_stylist_id: from_stylist, datetime: date)
  end 
end
