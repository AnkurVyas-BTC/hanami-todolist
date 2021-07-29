module Web
  module Controllers
    module Todos
      class Create
        include Web::Action

        def call(params)
          TodoRepository.new.create(params[:todo])

          redirect_to '/todos'
        end
      end
    end
  end
end
