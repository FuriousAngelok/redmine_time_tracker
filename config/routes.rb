resources :time_booking_queries, :except => [:show, :index]
resources :time_log_queries, :except => [:show, :index]
resources :report_queries, :except => [:show, :index]

resources :projects do
  resources :time_booking_queries, :only => [:new, :create]
  resources :time_log_queries, :only => [:new, :create]
  resources :report_queries, :only => [:new, :create]
end

get '/time_bookings/actions', :to => 'time_bookings#actions', :via => [:get, :post, :put]
get '/time_bookings/show_edit', :to => 'time_bookings#show_edit', :via => [:get, :post]
get '/time_bookings/delete', :to => 'time_bookings#delete', :via => [:get, :post]
get '/time_bookings/get_list_entry', :to => 'time_bookings#get_list_entry', :via => [:get, :post]

get '/time_logs/actions', :to => 'time_logs#actions', :via => [:get, :post, :put]
get '/time_logs/delete', :to => 'time_logs#delete', :via => [:get, :post]
get '/time_logs/show_booking', :to => 'time_logs#show_booking', :via => [:get, :post]
get '/time_logs/show_edit', :to => 'time_logs#show_edit', :via => [:get, :post]
get '/time_logs/get_list_entry', :to => 'time_logs#get_list_entry', :via => [:get, :post]

get '/tt_overview', :to => 'tt_overview#index', :via => [:get, :post]

get '/time_trackers/stop', :to => 'time_trackers#stop', :via => [:get, :put, :post]
get '/time_trackers/start', :to => 'time_trackers#start', :via => [:post, :get]
get '/time_trackers/update', :to => 'time_trackers#update', :via => [:get, :put]
get '/time_trackers/delete', :to => 'time_trackers#delete', :via => [:get, :post]

get '/tt_bookings_list', :to => 'tt_bookings_list#index', :via => [:get, :post]
get '/tt_info', :to => 'tt_info#index', :via => [:get, :post]
get '/tt_logs_list', :to => 'tt_logs_list#index', :via => [:get, :post]
get '/tt_print_report', :to => 'tt_reporting#print_report', :via => [:get]
get '/tt_reporting', :to => 'tt_reporting#index', :via => [:get, :post]

#helpers
get '/tt_completer/get_issue', :to => 'tt_completer#get_issue', :via => [:get]
get '/tt_completer/get_issue_id', :to => 'tt_completer#get_issue_id', :via => [:get]
get '/tt_completer/get_issue_subject', :to => 'tt_completer#get_issue_subject', :via => [:get]
get '/tt_completer/get_activity', :to => 'tt_completer#get_activity', :via => [:get]

get '/tt_date_shifter/get_prev_time_span', :to => 'tt_date_shifter#get_prev_time_span', :via => [:get]
get '/tt_date_shifter/get_next_time_span', :to => 'tt_date_shifter#get_next_time_span', :via => [:get]

get '/tt_menu_switcher/index', :to => 'tt_menu_switcher#index', :via => [:get]

# context menus
get '/tt_overview/context_menu', :to => 'context_menus#tt_overview', :as => 'tt_overview_context_menu'
get '/tt_bookings_list/context_menu', :to => 'context_menus#tt_bookings_list', :as => 'tt_bookings_list_context_menu'
get '/tt_logs_list/context_menu', :to => 'context_menus#tt_logs_list', :as => 'tt_logs_list_context_menu'
