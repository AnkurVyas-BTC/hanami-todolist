module Web
  module Views
    module Todos
      class Create
        include Web::View
        template 'todos/new'
      end
    end
  end
end
