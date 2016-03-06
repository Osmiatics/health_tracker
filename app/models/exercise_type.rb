class ExerciseType < ActiveRecord::Base
  def self.list_exercises
    exercises = []
    all.each do |i|
      exercises << [i.name, i.id]
    end
  end
end
