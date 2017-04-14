Rails.application.routes.draw do
	get 'live/:id',to:'panda#play', as: 'panda'
  get 'v/:id',to:'youku#play', as: 'youku'
end
