module Translate
  class Routes
    def self.translation_ui(map)
      map.with_options(:controller => 'translate') do |t|
        t.translate_list 'translate'
        t.translate 'translate/translate', :action => 'translate'
        t.translate_reload 'translate/reload', :action => 'reload'
        t.translate_delete 'translate/destroy', :action => 'destroy'
      end
    end
  end
end
