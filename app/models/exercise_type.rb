class ExerciseType < ActiveRecord::Base
  has_many :daily_exercises
  def self.list_exercises
    exercises = []
    all.each do |i|
      exercises << [i.name, i.id]
    end
  end
end
