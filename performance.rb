 module PerformanceRating

 def set_performance_rating(rating)

    response = ""
    if rating > 80

      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end
end
