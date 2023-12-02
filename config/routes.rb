Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "list#index" #основная страница словаря, где отображаются словари, профиль, настройки и тд
  get "/registration", to: "registration#new" #создание объекта формы для регистрации
  post "/registration", to: "registration#create" #ввод данных пользователем, создание графы в таблице
  get "/login", to: "login#new" #создание объекта формы для входа в аккаунт
  post "/login", to: "login#create" #ввод пользователем логина-пароля, проверка корректности, создание сессии
  delete "/login", to: "login#delete" #удаление логина (например для анлога)
  get "/profile/:id", to: "profile#show" #показ профиля пользователя
  patch "/profile/:id", to "profile#update" #изменения профиля пользователя
  get "/settings/:id", to: "settings#show" #показ настроек пользователя
  patch "/settings/:id", to: "settings#update" #изменение настроек пользователя
  get "/card", to: "card#new" #создание объекта формы для карточки
  delete "/card", to: "card#delete" #удаление созданной карточки
  patch "/card/:id", to: "card#update" #изменение содержимого карточки (например, в случае если пользователь удалит или редактирует слово в словаре, то в карточке оно тоже удалится/редактируется)
  get "/card/:id", to: "card#show" #показ карточки
  get "/dict", to: "dict#new" #создание формы объекта нового словаря
  delete "/dict", to: "dict#delete" #удаление существующего словаря
  get "/dict/:id", to: "dict#show" #показ словаря
  patch "dict/:id", to: "dict#update" #изменение словаря
  get "word", to: "word#new" #создание формы объекта для добавления слова в словарь
  post "word/:id", to: "word#create" #получение от пользователя данных для создания слова (само слово, транскрипция, перевод)
  delete "word", to: "word#delete" #удаление слова из словаря
  patch "word/:id", to: "word#update" #редактирование слова в словаре
  get "word/:id", to: "word#show" #показ слова
end
