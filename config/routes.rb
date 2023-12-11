Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "dict#index" #основная страница словаря, где отображаются словари, профиль, настройки и тд
  get "/index", to: "dict#index"
  get "/users/new", to: "users#new"
  post "/users/reg", to: "users#create" #создание объекта формы для регистрации
  #post "/registration", to: "registration#create" #ввод данных пользователем, создание графы в таблице
  get "/login", to: "login#new" #создание объекта формы для входа в аккаунт
  post "/login", to: "login#create" #ввод пользователем логина-пароля, проверка корректности, создание сессии
  get "/logout", to: "login#delete" #удаление логина (например для анлога)
  get "/profile/:id", to: "profile#show" #показ профиля пользователя
  patch "/profile/:id", to: "profile#update" #изменения профиля пользователя
  get "/settings/:id", to: "settings#show" #показ настроек пользователя
  patch "/settings/:id", to: "settings#update" #изменение настроек пользователя
  get "/card", to: "card#new" #создание объекта формы для карточки
  delete "/card", to: "card#delete" #удаление созданной карточки
  patch "/card/:id", to: "card#update" #изменение содержимого карточки (например, в случае если пользователь удалит или редактирует слово в словаре, то в карточке оно тоже удалится/редактируется)
  get "/card/:id", to: "card#show" #показ карточки
  get "/dict/new", to: "dict#new" #создание формы объекта нового словаря
  post "/dict", to: "dict#create", as: "dictionaries" #получение от пользователя данных для создания словаря (название, описание)
  delete "/dict/:id", to: "dict#destroy" #удаление существующего словаря
  get "/dict/:id/edit", to: "dict#edit", as: "edit_dictionary" #создание формы объекта для редактирования словаря
  get "/dict/:id", to: "dict#show", as: 'dictionary' #показ словаря
  patch "dict/:id", to: "dict#update" #изменение словаря
  get "/dict/:dictionary_id/word/new", to: "word#new", as: 'new_dictionary_word' #создание формы объекта для нового слова
  post "/dict/:dictionary_id/word", to: "word#create", as: "dictionary_words" #получение от пользователя данных для создания слова (слово, транскрипция, перевод)
  delete "/dict/:dictionary_id/word/:id", to: "word#destroy" #удаление существующего слова
  get "/dict/:dictionary_id/word/:id/edit", to: "word#edit", as: "edit_dictionary_word" #создание формы объекта для редактирования слова
  patch "/dict/:dictionary_id/word/:id", to: "word#update" #изменение слова
  get "/dict/:dictionary_id/word/:id", to: "word#show", as: "dictionary_word" #показ слова

end
