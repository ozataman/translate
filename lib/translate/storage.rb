class Translate::Storage
  attr_accessor :locale, :keys
  
  def initialize(locale, storage_hash=nil)
    self.locale = locale.to_sym
    self.keys = {locale => (storage_hash || I18n.backend.send(:translations)[locale])}
  end
  
  def write_to_file
    Translate::File.new(file_path).write(keys)
  end
  
  private
  
  def file_path
    File.join(Rails.root, "config", "locales", "#{locale}.yml")
  end
end
