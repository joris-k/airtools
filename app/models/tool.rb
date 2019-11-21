class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :brand, :price, :category, :description, presence: true
  validates :price, numericality: true
  mount_uploader :photo, PhotoUploader

  def dates_to_array
    # split into array of 2
    dates_array = self.date.to_s.gsub(/\"/, "").split("],")
    # split elements of array into arrays of 2
    dates_array.map! do |date|
      date.gsub(/\[|\]/,"").gsub(/\"/, "").gsub(" ", "").split(",")
    end
    # convert to dates format
    dates_array.map do |two_dates|
      two_dates.map do |date|
        Date.parse(date)
      end
    end
  end

  def all_booked_dates
    all_bookings = self.bookings
    p all_bookings
    booked_dates = []
    all_bookings.each do |booking|
      dates = booking.dates_to_array
      if dates.length == 2
        i = dates[0]
        while i <= dates[1]
          booked_dates.push(i)
          i+=1
        end
      elsif dates.length == 1
        booked_dates.push(dates)
      end
    end
    booked_dates
  end

  def original_available_dates
    available_ranges = self.dates_to_array
    available_dates = []
    available_ranges.each do |dates|
      if dates.length == 2
        i = dates[0]
        while i <= dates [1]
          available_dates.push(i)
          i+=1
        end
      elsif dates.length == 1
        available_dates.push(dates)
      end
    end
    available_dates
  end

  def available_dates_after_bookings
    p booked = self.all_booked_dates
    p available = self.original_available_dates
    final_available = available.select { |date| booked.include?(date)!= true }
    p final_available
  end
end
