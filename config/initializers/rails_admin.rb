RailsAdmin.config do |config|
  
  config.main_app_name = ["EJC Santo Antônio Vila Belém", ""]
  
  #Cria uma categoria que salva links externos a aplicação
  config.navigation_static_links = {
    'Ejc Santo Antônio Vila Belém' => 'https://www.facebook.com/profile.php?id=100004820538209'
  }
  
  config.navigation_static_label = "Links Úteis"
  
  #ícones
  config.model ContasAPagar do
    navigation_icon 'fa fa-money'
  end
  
  config.model ContasAReceber do
    navigation_icon 'fa fa-money'
  end
  
  config.model Equipe do
    navigation_icon 'fa fa-users'
  end
  
  config.model Evento do
    navigation_icon 'fa fa-newspaper-o'
  end
  
  config.model Jovem do
    parent Equipe
    weight -2
    navigation_icon 'fa fa-universal-access'
  end
  
  config.model Tio do
    parent Equipe
    weight -1
    navigation_icon 'fa fa-male'
  end
  
  config.model Usuario do
    navigation_icon 'fa fa-address-book-o'
  end
  
  #config.model LinksUteis do
  #  navigation_icon 'fa fa-external-link-square'
  #end
  
  
  ## == Cancan ==
  #config.authorize_with :cancan

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :usuario
  end
  config.current_user_method(&:current_usuario)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  
end
