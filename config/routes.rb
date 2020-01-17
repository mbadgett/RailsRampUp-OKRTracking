Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'iteration#list'
    get 'iteration/list'
    get 'iteration/new'
    post 'iteration/create'
    patch 'iteration/update'
    get 'iteration/list'
    get 'iteration/show'
    get 'iteration/edit'
    get 'iteration/delete'
    get 'iteration/update'
    get 'objective/list'
    get 'objective/new'
    post 'objective/create'
    patch 'objective/update'
    get 'objective/list'
    get 'objective/show'
    get 'objective/edit'
    get 'objective/delete'
    get 'objective/update'
    get 'objective/show_iterations'
    get 'key_result/list'
    get 'key_result/new'
    post 'key_result/create'
    patch 'key_result/update'
    get 'key_result/list'
    get 'key_result/show'
    get 'key_result/edit'
    get 'key_result/delete'
    get 'key_result/update'
    get 'key_result/show_objectives'
end
