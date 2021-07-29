module Web
  module Controllers
    module Todos
      class Destroy
        include Web::Action

        def call(params)
          respository = TodoRepository.new
          respository.delete(params[:id])

          redirect_to '/todos'
        end
      end
    end
  end
end
