module Typus
  module I18n
    class << self
      alias :old_available_locales :available_locales
      def available_locales
        #self.old_available_locales.merge( "日本語" => "ja" )
        # 日本語だけつかえればいいなら、上の行を消して下の行を生かせばOK
        {"日本語" => "ja"}
      end
      def default_locale
        :ja
      end
    end
  end
end