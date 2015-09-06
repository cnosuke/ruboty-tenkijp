require 'tenkijp'

module Ruboty
  module Handlers
    class TenkiJp < Base
      on /tenki( me)? ?(?<location>.+)?/, name: 'tenki', description: 'Show a weather infomation of the location'

      def tenki(message = {})
        message.reply(
          ::TenkiJp::Forecast.new(message[:location]).to_s
        )
      rescue
        message.reply('Unknow error. (Perhaps unknow location?)')
      end
    end
  end
end
