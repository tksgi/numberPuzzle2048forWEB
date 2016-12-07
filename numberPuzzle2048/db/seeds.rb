# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Score.delete_all 

Score.connection.execute("delete from sqlite_sequence where name='scores'")

@score = Score.new
@score.rank = 1
@score.score = 2048
@score.save

@score = Score.new
@score.rank = 2
@score.score = 1024
@score.save

@score = Score.new
@score.rank = 3
@score.score = 512
@score.save

@score = Score.new
@score.rank = 4
@score.score = 256
@score.save

@score = Score.new
@score.rank = 5
@score.score = 128
@score.save
