module Web
  module Controllers
    module Todos
      class Update
        include Web::Action

        def call(params)
          respository = TodoRepository.new
          respository.update(params[:id], params[:todo])

          redirect_to routes.todos_path
        end
      end
    end
  end
end
