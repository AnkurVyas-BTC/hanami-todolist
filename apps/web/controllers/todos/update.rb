module Web
  module Controllers
    module Todos
      class Update
        include Web::Action

        expose :todo

        params do
          required(:todo).schema do
            required(:name).filled(:str?)
            required(:status).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            respository = TodoRepository.new
            respository.update(params[:id], params[:todo])

            redirect_to routes.todos_path
          else
            respository = TodoRepository.new
            @todo = respository.find(params[:id])

            self.status = 422
          end
        end
      end
    end
  end
end
