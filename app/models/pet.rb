class Pet < ApplicationRecord
  has_many :pet_histories

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    if self.pet_histories.count > 0

    (self.pet_histories.sum(:weight)/self.pet_histories.count).round

    else
      "Esta mascota aun no tiene historial"
    end
  end

  def avg_height
    if self.pet_histories.count > 0

    (self.pet_histories.sum(:heigth)/self.pet_histories.count).round

    else
      "Esta mascota aun no tiene historial"
    end
  end

  def max_weight
    if self.pet_histories.count > 0

      self.pet_histories.maximum("weight")
    else
      "Esta mascota aun no tiene historial"
    end
  end

  def max_height
    if self.pet_histories.count > 0

      self.pet_histories.maximum("heigth")
    else
      "Esta mascota aun no tiene historial"
    end
  end

end
