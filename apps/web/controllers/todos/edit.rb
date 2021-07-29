module Web
  module Controllers
    module Todos
      class Edit
        include Web::Action
        
        expose :todo

        def call(params)
          respository = TodoRepository.new
          @todo = respository.find(params[:id])
        end
      end
    end
  end
end
