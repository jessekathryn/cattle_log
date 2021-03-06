class Report < ApplicationRecord
  belongs_to :reportable, :polymorphic => true, optional: true

  scope :created, -> { where(created: true) }
  scope :created_before, ->(time) { where("created_at < ?", time) }

  def self.created_before(time)
    where("created_at < ?", time)
  end

  def self.recent
    self.last
  end

  def self.time
    d = self.created_at
    d.strftime("Printed on %m/%d/%Y")
    d.strftime("at %I:%M%p")
  end
end
