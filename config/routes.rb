Rails.application.routes.draw do
  root 'home#index'
  
  match 'works/work_show_via_ajax_call' => 'works#work_show_via_ajax_call', via: [:get, :post]
  match 'works/work_show_next_via_ajax_call' => 'works#work_show_next_via_ajax_call', via: [:get, :post]
  match 'works/work_show_prev_via_ajax_call' => 'works#work_show_prev_via_ajax_call', via: [:get, :post]
  resources :works do
    post :update_row_order, on: :collection
  end
  resources "contacts", only: [:new, :create]
end
