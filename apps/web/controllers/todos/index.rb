module Web
  module Controllers
    module Todos
      class Index
        include Web::Action

        expose :todos

        def call(params)
          @todos = TodoRepository.new.all
        end
      end
    end
  end
end
