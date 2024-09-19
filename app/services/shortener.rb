class Shortener

  def initialize(url)
  end

  def short_code
    @short_code ||= SecureRandom.hex(4)
  end

  def base_url
    'http://localhost:3000'
  end

  def path
    '/short'
  end

  def short_link
    "#{base_url}#{path}/#{short_code}"
  end
end