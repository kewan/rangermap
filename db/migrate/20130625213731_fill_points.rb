class FillPoints < ActiveRecord::Migration
  def change
    Point.create(latitude: '-1.33004333333333', longitude: '36.9247633333333', speed: 0, heading: 0, altitude: 1622, date_there: DateTime.parse('2013-06-22 13:11:12Z'))
    Point.create(latitude: '-1.58036833333333', longitude: '37.0210916666667', speed: 0, heading: 0, altitude: 1615, date_there: DateTime.parse('2013-06-22 19:08:35Z'))
    Point.create(latitude: '-1.58039666666667', longitude: '37.02108', speed: 0, heading: 262, altitude: 1610, date_there: DateTime.parse('2013-06-23 01:07:35Z'))
    Point.create(latitude: '-1.496375', longitude: '37.0720583333333', speed: 135, heading: 101, altitude: 1610, date_there: DateTime.parse('2013-06-23 07:08:46Z'))
    Point.create(latitude: '-2.40532333333333', longitude: '37.21466', speed: 0, heading: 0, altitude: 1189, date_there: DateTime.parse('2013-06-23 13:08:27Z'))
  end
end
