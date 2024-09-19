class Link < ApplicationRecord
  validates :original, presence: true
  validates :shortened, presence: true
  validates :short_code, presence: true, uniqueness: true
  # short code and shorteend link _could_ be generated in the model

  validate :valid_url

  def valid_url
    if original.include?("<script")
      errors.add(:original, "contains invalid characters")
    end

    url_regexp = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
    unless original =~ url_regexp
      errors.add(:original, "is not a valid URL")
    end
  end

  def expired?
    created_at < 30.days.ago
  end
end
