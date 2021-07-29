module Web
  module Views
    module Todos
      class Index
        include Web::View
        
        STATUS_COLOR_MAP = { 
          'completed' => 'badge bg-success', 
          'pending' => 'badge bg-primary',
          'inprogress' => 'badge bg-warning text-dark'
        }

        def status_color_map(status)
          STATUS_COLOR_MAP[status]
        end
      end
    end
  end
end
