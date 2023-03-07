class Register < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {maximum: 500}
  
  validate :start_end_check

  def start_end_check
    if self.start.nil? || self.finish.nil?
      errors.add(:start, :finish)
    elsif  self.start >= self.finish 
      errors.add(:finish)
    end
  end
end
