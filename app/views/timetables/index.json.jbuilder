json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :t1, :t2, :t3, :t4, :t5, :t6, :t7, :t8, :t9, :t10
  json.url timetable_url(timetable, format: :json)
end
