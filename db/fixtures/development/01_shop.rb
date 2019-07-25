Shop.destroy_all

100.times { |i| Shop.seed id: i, name: "No.#{i}店" }

Shop.find_each do |s|
  7.times { |j| BusinessDay.seed shop: s, day_of_week_code: j, opened: rand(5) == 1}
end

BusinessDay.find_each do |d|
  BusinessHour.seed business_day: d, opened_at: '11:00', closed_at: '14:00'
  BusinessHour.seed business_day: d, opened_at: '17:00', closed_at: '21:00'
end
