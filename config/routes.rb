Rails.application.routes.draw do
  
  devise_for :users
  
  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome/about'

  root to: 'welcome#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end


=begin
  Step 1
Click the Windows "Start" button.

Step 2
Type "Windows Firewall" into the Search field. Select "Windows Firewall" from the results that are returned. Do not click the "Windows Firewall with Advanced Security" option.

Related Reading: How to Get Kaspersky Internet 2010 to Work With Firefox

Step 3
Click the link that says "Allow a program or feature through Windows Firewall."

Step 4
Click the "Change settings" button. Your computer may prompt you to type in an administrator password, in which case you or someone else with administrator access must provide the password. This is the password for logging into an administrator's account on that computer.

Step 5
Click the check box to remove the check beside the program you want to deny Internet access to. This is the box to the left of the program. The list of programs may be extensive, so you may need to scroll down. If you can't find the program in the list anywhere, you must add it manually and then ensure there is no check mark beside the program. You add the program by clicking the "Allow another program" button and navigating to the executable file for the program. This may be difficult for beginning or intermediate users, but typically you can find the program on your "C" drive in either the "Program Files" or "Program Files (x86)" folders. Within one of those folders, the program executable file should be inside another folder with the program name or the name of the company that created the program. If you can't find it, you can search your "C" drive for the name of the program. The program file will have a ".exe" extension on it. Select the file and click "Open."

Step 6
Click the "OK" button.

Ads by Google
=end