module Web
  module Controllers
    module Todos
      class Create
        include Web::Action
        
        params do
          required(:todo).schema do
            required(:name).filled(:str?)
            required(:status).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            TodoRepository.new.create(params[:todo])

            redirect_to '/todos'
          else
            self.status = 422
          end
        end
      end
    end
  end
end
