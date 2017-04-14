Rails.application.routes.draw do
  get 'v/:id',to:'youku#play', as: 'youku'
end
