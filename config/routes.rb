# == Route Map
#
#                                    Prefix Verb   URI Pattern                                                                     Controller#Action
#                    survey_item_categories GET    /survey_item_categories(.:format)                                               survey_item_categories#index
#                                           POST   /survey_item_categories(.:format)                                               survey_item_categories#create
#                  new_survey_item_category GET    /survey_item_categories/new(.:format)                                           survey_item_categories#new
#                 edit_survey_item_category GET    /survey_item_categories/:id/edit(.:format)                                      survey_item_categories#edit
#                      survey_item_category GET    /survey_item_categories/:id(.:format)                                           survey_item_categories#show
#                                           PATCH  /survey_item_categories/:id(.:format)                                           survey_item_categories#update
#                                           PUT    /survey_item_categories/:id(.:format)                                           survey_item_categories#update
#                                           DELETE /survey_item_categories/:id(.:format)                                           survey_item_categories#destroy
#                     survey_item_templates GET    /survey_item_templates(.:format)                                                survey_item_templates#index
#                                           POST   /survey_item_templates(.:format)                                                survey_item_templates#create
#                  new_survey_item_template GET    /survey_item_templates/new(.:format)                                            survey_item_templates#new
#                 edit_survey_item_template GET    /survey_item_templates/:id/edit(.:format)                                       survey_item_templates#edit
#                      survey_item_template GET    /survey_item_templates/:id(.:format)                                            survey_item_templates#show
#                                           PATCH  /survey_item_templates/:id(.:format)                                            survey_item_templates#update
#                                           PUT    /survey_item_templates/:id(.:format)                                            survey_item_templates#update
#                                           DELETE /survey_item_templates/:id(.:format)                                            survey_item_templates#destroy
#                         survey_data_types GET    /survey_data_types(.:format)                                                    survey_data_types#index
#                                           POST   /survey_data_types(.:format)                                                    survey_data_types#create
#                      new_survey_data_type GET    /survey_data_types/new(.:format)                                                survey_data_types#new
#                     edit_survey_data_type GET    /survey_data_types/:id/edit(.:format)                                           survey_data_types#edit
#                          survey_data_type GET    /survey_data_types/:id(.:format)                                                survey_data_types#show
#                                           PATCH  /survey_data_types/:id(.:format)                                                survey_data_types#update
#                                           PUT    /survey_data_types/:id(.:format)                                                survey_data_types#update
#                                           DELETE /survey_data_types/:id(.:format)                                                survey_data_types#destroy
#                          survey_templates GET    /survey_templates(.:format)                                                     survey_templates#index
#                                           POST   /survey_templates(.:format)                                                     survey_templates#create
#                       new_survey_template GET    /survey_templates/new(.:format)                                                 survey_templates#new
#                      edit_survey_template GET    /survey_templates/:id/edit(.:format)                                            survey_templates#edit
#                           survey_template GET    /survey_templates/:id(.:format)                                                 survey_templates#show
#                                           PATCH  /survey_templates/:id(.:format)                                                 survey_templates#update
#                                           PUT    /survey_templates/:id(.:format)                                                 survey_templates#update
#                                           DELETE /survey_templates/:id(.:format)                                                 survey_templates#destroy
#                                   systems GET    /systems(.:format)                                                              systems#index
#                                           POST   /systems(.:format)                                                              systems#create
#                                new_system GET    /systems/new(.:format)                                                          systems#new
#                               edit_system GET    /systems/:id/edit(.:format)                                                     systems#edit
#                                    system GET    /systems/:id(.:format)                                                          systems#show
#                                           PATCH  /systems/:id(.:format)                                                          systems#update
#                                           PUT    /systems/:id(.:format)                                                          systems#update
#                                           DELETE /systems/:id(.:format)                                                          systems#destroy
#                                  comments GET    /comments(.:format)                                                             comments#index
#                                           POST   /comments(.:format)                                                             comments#create
#                               new_comment GET    /comments/new(.:format)                                                         comments#new
#                              edit_comment GET    /comments/:id/edit(.:format)                                                    comments#edit
#                                   comment GET    /comments/:id(.:format)                                                         comments#show
#                                           PATCH  /comments/:id(.:format)                                                         comments#update
#                                           PUT    /comments/:id(.:format)                                                         comments#update
#                                           DELETE /comments/:id(.:format)                                                         comments#destroy
#                                 locations GET    /locations(.:format)                                                            locations#index
#                                           POST   /locations(.:format)                                                            locations#create
#                              new_location GET    /locations/new(.:format)                                                        locations#new
#                             edit_location GET    /locations/:id/edit(.:format)                                                   locations#edit
#                                  location GET    /locations/:id(.:format)                                                        locations#show
#                                           PATCH  /locations/:id(.:format)                                                        locations#update
#                                           PUT    /locations/:id(.:format)                                                        locations#update
#                                           DELETE /locations/:id(.:format)                                                        locations#destroy
#                                   surveys GET    /surveys(.:format)                                                              surveys#index
#                                           POST   /surveys(.:format)                                                              surveys#create
#                                new_survey GET    /surveys/new(.:format)                                                          surveys#new
#                               edit_survey GET    /surveys/:id/edit(.:format)                                                     surveys#edit
#                                    survey GET    /surveys/:id(.:format)                                                          surveys#show
#                                           PATCH  /surveys/:id(.:format)                                                          surveys#update
#                                           PUT    /surveys/:id(.:format)                                                          surveys#update
#                                           DELETE /surveys/:id(.:format)                                                          surveys#destroy
#                              survey_items GET    /survey_items(.:format)                                                         survey_items#index
#                                           POST   /survey_items(.:format)                                                         survey_items#create
#                           new_survey_item GET    /survey_items/new(.:format)                                                     survey_items#new
#                          edit_survey_item GET    /survey_items/:id/edit(.:format)                                                survey_items#edit
#                               survey_item GET    /survey_items/:id(.:format)                                                     survey_items#show
#                                           PATCH  /survey_items/:id(.:format)                                                     survey_items#update
#                                           PUT    /survey_items/:id(.:format)                                                     survey_items#update
#                                           DELETE /survey_items/:id(.:format)                                                     survey_items#destroy
#                          survey_questions GET    /survey_questions(.:format)                                                     survey_questions#index
#                                           POST   /survey_questions(.:format)                                                     survey_questions#create
#                       new_survey_question GET    /survey_questions/new(.:format)                                                 survey_questions#new
#                      edit_survey_question GET    /survey_questions/:id/edit(.:format)                                            survey_questions#edit
#                           survey_question GET    /survey_questions/:id(.:format)                                                 survey_questions#show
#                                           PATCH  /survey_questions/:id(.:format)                                                 survey_questions#update
#                                           PUT    /survey_questions/:id(.:format)                                                 survey_questions#update
#                                           DELETE /survey_questions/:id(.:format)                                                 survey_questions#destroy
#                   system_survey_templates GET    /systems/:system_id/survey_templates(.:format)                                  survey_templates#index
#                                           POST   /systems/:system_id/survey_templates(.:format)                                  survey_templates#create
#                new_system_survey_template GET    /systems/:system_id/survey_templates/new(.:format)                              survey_templates#new
#               edit_system_survey_template GET    /systems/:system_id/survey_templates/:id/edit(.:format)                         survey_templates#edit
#                    system_survey_template GET    /systems/:system_id/survey_templates/:id(.:format)                              survey_templates#show
#                                           PATCH  /systems/:system_id/survey_templates/:id(.:format)                              survey_templates#update
#                                           PUT    /systems/:system_id/survey_templates/:id(.:format)                              survey_templates#update
#                                           DELETE /systems/:system_id/survey_templates/:id(.:format)                              survey_templates#destroy
#                                           GET    /systems(.:format)                                                              systems#index
#                                           POST   /systems(.:format)                                                              systems#create
#                                           GET    /systems/new(.:format)                                                          systems#new
#                                           GET    /systems/:id/edit(.:format)                                                     systems#edit
#                                           GET    /systems/:id(.:format)                                                          systems#show
#                                           PATCH  /systems/:id(.:format)                                                          systems#update
#                                           PUT    /systems/:id(.:format)                                                          systems#update
#                                           DELETE /systems/:id(.:format)                                                          systems#destroy
#    survey_template_survey_item_categories GET    /survey_templates/:survey_template_id/survey_item_categories(.:format)          survey_item_categories#index
#                                           POST   /survey_templates/:survey_template_id/survey_item_categories(.:format)          survey_item_categories#create
#  new_survey_template_survey_item_category GET    /survey_templates/:survey_template_id/survey_item_categories/new(.:format)      survey_item_categories#new
# edit_survey_template_survey_item_category GET    /survey_templates/:survey_template_id/survey_item_categories/:id/edit(.:format) survey_item_categories#edit
#      survey_template_survey_item_category GET    /survey_templates/:survey_template_id/survey_item_categories/:id(.:format)      survey_item_categories#show
#                                           PATCH  /survey_templates/:survey_template_id/survey_item_categories/:id(.:format)      survey_item_categories#update
#                                           PUT    /survey_templates/:survey_template_id/survey_item_categories/:id(.:format)      survey_item_categories#update
#                                           DELETE /survey_templates/:survey_template_id/survey_item_categories/:id(.:format)      survey_item_categories#destroy
#     survey_template_survey_item_templates GET    /survey_templates/:survey_template_id/survey_item_templates(.:format)           survey_item_templates#index
#                                           POST   /survey_templates/:survey_template_id/survey_item_templates(.:format)           survey_item_templates#create
#  new_survey_template_survey_item_template GET    /survey_templates/:survey_template_id/survey_item_templates/new(.:format)       survey_item_templates#new
# edit_survey_template_survey_item_template GET    /survey_templates/:survey_template_id/survey_item_templates/:id/edit(.:format)  survey_item_templates#edit
#      survey_template_survey_item_template GET    /survey_templates/:survey_template_id/survey_item_templates/:id(.:format)       survey_item_templates#show
#                                           PATCH  /survey_templates/:survey_template_id/survey_item_templates/:id(.:format)       survey_item_templates#update
#                                           PUT    /survey_templates/:survey_template_id/survey_item_templates/:id(.:format)       survey_item_templates#update
#                                           DELETE /survey_templates/:survey_template_id/survey_item_templates/:id(.:format)       survey_item_templates#destroy
#                                           GET    /survey_templates(.:format)                                                     survey_templates#index
#                                           POST   /survey_templates(.:format)                                                     survey_templates#create
#                                           GET    /survey_templates/new(.:format)                                                 survey_templates#new
#                                           GET    /survey_templates/:id/edit(.:format)                                            survey_templates#edit
#                                           GET    /survey_templates/:id(.:format)                                                 survey_templates#show
#                                           PATCH  /survey_templates/:id(.:format)                                                 survey_templates#update
#                                           PUT    /survey_templates/:id(.:format)                                                 survey_templates#update
#                                           DELETE /survey_templates/:id(.:format)                                                 survey_templates#destroy
#                                   session POST   /session(.:format)                                                              sessions#create
#                               new_session GET    /session/new(.:format)                                                          sessions#new
#                              edit_session GET    /session/edit(.:format)                                                         sessions#edit
#                                           GET    /session(.:format)                                                              sessions#show
#                                           PATCH  /session(.:format)                                                              sessions#update
#                                           PUT    /session(.:format)                                                              sessions#update
#                                           DELETE /session(.:format)                                                              sessions#destroy
#                                 biz_users GET    /biz_users(.:format)                                                            biz_users#index
#                                           POST   /biz_users(.:format)                                                            biz_users#create
#                              new_biz_user GET    /biz_users/new(.:format)                                                        biz_users#new
#                             edit_biz_user GET    /biz_users/:id/edit(.:format)                                                   biz_users#edit
#                                  biz_user GET    /biz_users/:id(.:format)                                                        biz_users#show
#                                           PATCH  /biz_users/:id(.:format)                                                        biz_users#update
#                                           PUT    /biz_users/:id(.:format)                                                        biz_users#update
#                                           DELETE /biz_users/:id(.:format)                                                        biz_users#destroy
#                                      root GET    /                                                                               sessions#new
#                            inquiry_basics GET    /inquiry_basics(.:format)                                                       business_inquiry/inquiry_basics#index
#                                           POST   /inquiry_basics(.:format)                                                       business_inquiry/inquiry_basics#create
#                         new_inquiry_basic GET    /inquiry_basics/new(.:format)                                                   business_inquiry/inquiry_basics#new
#                        edit_inquiry_basic GET    /inquiry_basics/:id/edit(.:format)                                              business_inquiry/inquiry_basics#edit
#                             inquiry_basic GET    /inquiry_basics/:id(.:format)                                                   business_inquiry/inquiry_basics#show
#                                           PATCH  /inquiry_basics/:id(.:format)                                                   business_inquiry/inquiry_basics#update
#                                           PUT    /inquiry_basics/:id(.:format)                                                   business_inquiry/inquiry_basics#update
#                                           DELETE /inquiry_basics/:id(.:format)                                                   business_inquiry/inquiry_basics#destroy
#                           inquiry_answers GET    /inquiry_answers(.:format)                                                      inquiry_answers#index
#                                           POST   /inquiry_answers(.:format)                                                      inquiry_answers#create
#                        new_inquiry_answer GET    /inquiry_answers/new(.:format)                                                  inquiry_answers#new
#                       edit_inquiry_answer GET    /inquiry_answers/:id/edit(.:format)                                             inquiry_answers#edit
#                            inquiry_answer GET    /inquiry_answers/:id(.:format)                                                  inquiry_answers#show
#                                           PATCH  /inquiry_answers/:id(.:format)                                                  inquiry_answers#update
#                                           PUT    /inquiry_answers/:id(.:format)                                                  inquiry_answers#update
#                                           DELETE /inquiry_answers/:id(.:format)                                                  inquiry_answers#destroy
#          business_import_survey_templates GET    /businesses/:business_id/import_survey_templates(.:format)                      import_survey_templates#index
#                                           POST   /businesses/:business_id/import_survey_templates(.:format)                      import_survey_templates#create
#       new_business_import_survey_template GET    /businesses/:business_id/import_survey_templates/new(.:format)                  import_survey_templates#new
#      edit_business_import_survey_template GET    /businesses/:business_id/import_survey_templates/:id/edit(.:format)             import_survey_templates#edit
#           business_import_survey_template GET    /businesses/:business_id/import_survey_templates/:id(.:format)                  import_survey_templates#show
#                                           PATCH  /businesses/:business_id/import_survey_templates/:id(.:format)                  import_survey_templates#update
#                                           PUT    /businesses/:business_id/import_survey_templates/:id(.:format)                  import_survey_templates#update
#                                           DELETE /businesses/:business_id/import_survey_templates/:id(.:format)                  import_survey_templates#destroy
#                 business_survey_templates GET    /businesses/:business_id/survey_templates(.:format)                             survey_templates#index
#                                           POST   /businesses/:business_id/survey_templates(.:format)                             survey_templates#create
#              new_business_survey_template GET    /businesses/:business_id/survey_templates/new(.:format)                         survey_templates#new
#             edit_business_survey_template GET    /businesses/:business_id/survey_templates/:id/edit(.:format)                    survey_templates#edit
#                  business_survey_template GET    /businesses/:business_id/survey_templates/:id(.:format)                         survey_templates#show
#                                           PATCH  /businesses/:business_id/survey_templates/:id(.:format)                         survey_templates#update
#                                           PUT    /businesses/:business_id/survey_templates/:id(.:format)                         survey_templates#update
#                                           DELETE /businesses/:business_id/survey_templates/:id(.:format)                         survey_templates#destroy
#            business_survey_item_templates GET    /businesses/:business_id/survey_item_templates(.:format)                        survey_item_templates#index
#                                           POST   /businesses/:business_id/survey_item_templates(.:format)                        survey_item_templates#create
#         new_business_survey_item_template GET    /businesses/:business_id/survey_item_templates/new(.:format)                    survey_item_templates#new
#        edit_business_survey_item_template GET    /businesses/:business_id/survey_item_templates/:id/edit(.:format)               survey_item_templates#edit
#             business_survey_item_template GET    /businesses/:business_id/survey_item_templates/:id(.:format)                    survey_item_templates#show
#                                           PATCH  /businesses/:business_id/survey_item_templates/:id(.:format)                    survey_item_templates#update
#                                           PUT    /businesses/:business_id/survey_item_templates/:id(.:format)                    survey_item_templates#update
#                                           DELETE /businesses/:business_id/survey_item_templates/:id(.:format)                    survey_item_templates#destroy
#                        business_biz_users GET    /businesses/:business_id/biz_users(.:format)                                    biz_users#index
#                                           POST   /businesses/:business_id/biz_users(.:format)                                    biz_users#create
#                     new_business_biz_user GET    /businesses/:business_id/biz_users/new(.:format)                                biz_users#new
#                                           GET    /biz_users/:id/edit(.:format)                                                   biz_users#edit
#                                           GET    /biz_users/:id(.:format)                                                        biz_users#show
#                                           PATCH  /biz_users/:id(.:format)                                                        biz_users#update
#                                           PUT    /biz_users/:id(.:format)                                                        biz_users#update
#                                           DELETE /biz_users/:id(.:format)                                                        biz_users#destroy
#                business_inquiry_questions GET    /businesses/:business_id/inquiry_questions(.:format)                            inquiry_questions#index
#                                           POST   /businesses/:business_id/inquiry_questions(.:format)                            inquiry_questions#create
#             new_business_inquiry_question GET    /businesses/:business_id/inquiry_questions/new(.:format)                        inquiry_questions#new
#                     edit_inquiry_question GET    /inquiry_questions/:id/edit(.:format)                                           inquiry_questions#edit
#                          inquiry_question GET    /inquiry_questions/:id(.:format)                                                inquiry_questions#show
#                                           PATCH  /inquiry_questions/:id(.:format)                                                inquiry_questions#update
#                                           PUT    /inquiry_questions/:id(.:format)                                                inquiry_questions#update
#                                           DELETE /inquiry_questions/:id(.:format)                                                inquiry_questions#destroy
#                 business_survey_questions GET    /businesses/:business_id/survey_questions(.:format)                             survey_questions#index
#                                           POST   /businesses/:business_id/survey_questions(.:format)                             survey_questions#create
#              new_business_survey_question GET    /businesses/:business_id/survey_questions/new(.:format)                         survey_questions#new
#                                           GET    /survey_questions/:id/edit(.:format)                                            survey_questions#edit
#                                           GET    /survey_questions/:id(.:format)                                                 survey_questions#show
#                                           PATCH  /survey_questions/:id(.:format)                                                 survey_questions#update
#                                           PUT    /survey_questions/:id(.:format)                                                 survey_questions#update
#                                           DELETE /survey_questions/:id(.:format)                                                 survey_questions#destroy
#                         inquiry_locations GET    /inquiries/:inquiry_id/locations(.:format)                                      locations#index
#                                           POST   /inquiries/:inquiry_id/locations(.:format)                                      locations#create
#                      new_inquiry_location GET    /inquiries/:inquiry_id/locations/new(.:format)                                  locations#new
#                                           GET    /locations/:id/edit(.:format)                                                   locations#edit
#                                           GET    /locations/:id(.:format)                                                        locations#show
#                                           PATCH  /locations/:id(.:format)                                                        locations#update
#                                           PUT    /locations/:id(.:format)                                                        locations#update
#                                           DELETE /locations/:id(.:format)                                                        locations#destroy
#                            user_addresses GET    /users/:user_id/addresses(.:format)                                             addresses#index
#                                           POST   /users/:user_id/addresses(.:format)                                             addresses#create
#                          new_user_address GET    /users/:user_id/addresses/new(.:format)                                         addresses#new
#                              edit_address GET    /addresses/:id/edit(.:format)                                                   addresses#edit
#                                   address GET    /addresses/:id(.:format)                                                        addresses#show
#                                           PATCH  /addresses/:id(.:format)                                                        addresses#update
#                                           PUT    /addresses/:id(.:format)                                                        addresses#update
#                                           DELETE /addresses/:id(.:format)                                                        addresses#destroy
#                             inquiry_users GET    /inquiries/:inquiry_id/users(.:format)                                          users#index
#                                           POST   /inquiries/:inquiry_id/users(.:format)                                          users#create
#                          new_inquiry_user GET    /inquiries/:inquiry_id/users/new(.:format)                                      users#new
#                                 edit_user GET    /users/:id/edit(.:format)                                                       users#edit
#                                      user GET    /users/:id(.:format)                                                            users#show
#                                           PATCH  /users/:id(.:format)                                                            users#update
#                                           PUT    /users/:id(.:format)                                                            users#update
#                                           DELETE /users/:id(.:format)                                                            users#destroy
#                        business_inquiries GET    /businesses/:business_id/inquiries(.:format)                                    inquiries#index
#                                           POST   /businesses/:business_id/inquiries(.:format)                                    inquiries#create
#                      new_business_inquiry GET    /businesses/:business_id/inquiries/new(.:format)                                inquiries#new
#                              edit_inquiry GET    /inquiries/:id/edit(.:format)                                                   inquiries#edit
#                                   inquiry GET    /inquiries/:id(.:format)                                                        inquiries#show
#                                           PATCH  /inquiries/:id(.:format)                                                        inquiries#update
#                                           PUT    /inquiries/:id(.:format)                                                        inquiries#update
#                                           DELETE /inquiries/:id(.:format)                                                        inquiries#destroy
#                       biz_init_businesses GET    /businesses/biz_init(.:format)                                                  businesses#biz_init
#                                businesses GET    /businesses(.:format)                                                           businesses#index
#                                           POST   /businesses(.:format)                                                           businesses#create
#                              new_business GET    /businesses/new(.:format)                                                       businesses#new
#                             edit_business GET    /businesses/:id/edit(.:format)                                                  businesses#edit
#                                  business GET    /businesses/:id(.:format)                                                       businesses#show
#                                           PATCH  /businesses/:id(.:format)                                                       businesses#update
#                                           PUT    /businesses/:id(.:format)                                                       businesses#update
#                                           DELETE /businesses/:id(.:format)                                                       businesses#destroy
#                                           GET    /businesses/:business_id/biz_users(.:format)                                    biz_users#index
#                                           POST   /businesses/:business_id/biz_users(.:format)                                    biz_users#create
#                                           GET    /businesses/:business_id/biz_users/new(.:format)                                biz_users#new
#                    edit_business_biz_user GET    /businesses/:business_id/biz_users/:id/edit(.:format)                           biz_users#edit
#                         business_biz_user GET    /businesses/:business_id/biz_users/:id(.:format)                                biz_users#show
#                                           PATCH  /businesses/:business_id/biz_users/:id(.:format)                                biz_users#update
#                                           PUT    /businesses/:business_id/biz_users/:id(.:format)                                biz_users#update
#                                           DELETE /businesses/:business_id/biz_users/:id(.:format)                                biz_users#destroy
#            business_inquiry_inquiry_qn_as GET    /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as(.:format)          inquiry_qn_as#index
#                                           POST   /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as(.:format)          inquiry_qn_as#create
#         new_business_inquiry_inquiry_qn_a GET    /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/new(.:format)      inquiry_qn_as#new
#        edit_business_inquiry_inquiry_qn_a GET    /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/:id/edit(.:format) inquiry_qn_as#edit
#             business_inquiry_inquiry_qn_a GET    /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/:id(.:format)      inquiry_qn_as#show
#                                           PATCH  /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/:id(.:format)      inquiry_qn_as#update
#                                           PUT    /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/:id(.:format)      inquiry_qn_as#update
#                                           DELETE /businesses/:business_id/inquiries/:inquiry_id/inquiry_qn_as/:id(.:format)      inquiry_qn_as#destroy
#                  business_inquiry_surveys GET    /businesses/:business_id/inquiries/:inquiry_id/surveys(.:format)                surveys#index
#                                           POST   /businesses/:business_id/inquiries/:inquiry_id/surveys(.:format)                surveys#create
#               new_business_inquiry_survey GET    /businesses/:business_id/inquiries/:inquiry_id/surveys/new(.:format)            surveys#new
#              edit_business_inquiry_survey GET    /businesses/:business_id/inquiries/:inquiry_id/surveys/:id/edit(.:format)       surveys#edit
#                   business_inquiry_survey GET    /businesses/:business_id/inquiries/:inquiry_id/surveys/:id(.:format)            surveys#show
#                                           PATCH  /businesses/:business_id/inquiries/:inquiry_id/surveys/:id(.:format)            surveys#update
#                                           PUT    /businesses/:business_id/inquiries/:inquiry_id/surveys/:id(.:format)            surveys#update
#                                           DELETE /businesses/:business_id/inquiries/:inquiry_id/surveys/:id(.:format)            surveys#destroy
#                                           GET    /businesses/:business_id/inquiries(.:format)                                    inquiries#index
#                                           POST   /businesses/:business_id/inquiries(.:format)                                    inquiries#create
#                                           GET    /businesses/:business_id/inquiries/new(.:format)                                inquiries#new
#                     edit_business_inquiry GET    /businesses/:business_id/inquiries/:id/edit(.:format)                           inquiries#edit
#                          business_inquiry GET    /businesses/:business_id/inquiries/:id(.:format)                                inquiries#show
#                                           PATCH  /businesses/:business_id/inquiries/:id(.:format)                                inquiries#update
#                                           PUT    /businesses/:business_id/inquiries/:id(.:format)                                inquiries#update
#                                           DELETE /businesses/:business_id/inquiries/:id(.:format)                                inquiries#destroy
#                                           GET    /businesses(.:format)                                                           businesses#index
#                                           POST   /businesses(.:format)                                                           businesses#create
#                                           GET    /businesses/new(.:format)                                                       businesses#new
#                                           GET    /businesses/:id/edit(.:format)                                                  businesses#edit
#                                           GET    /businesses/:id(.:format)                                                       businesses#show
#                                           PATCH  /businesses/:id(.:format)                                                       businesses#update
#                                           PUT    /businesses/:id(.:format)                                                       businesses#update
#                                           DELETE /businesses/:id(.:format)                                                       businesses#destroy
#                                 inquiries GET    /inquiries(.:format)                                                            inquiries#index
#                                           POST   /inquiries(.:format)                                                            inquiries#create
#                               new_inquiry GET    /inquiries/new(.:format)                                                        inquiries#new
#                                           GET    /inquiries/:id/edit(.:format)                                                   inquiries#edit
#                                           GET    /inquiries/:id(.:format)                                                        inquiries#show
#                                           PATCH  /inquiries/:id(.:format)                                                        inquiries#update
#                                           PUT    /inquiries/:id(.:format)                                                        inquiries#update
#                                           DELETE /inquiries/:id(.:format)                                                        inquiries#destroy
#                                     users GET    /users(.:format)                                                                users#index
#                                           POST   /users(.:format)                                                                users#create
#                                  new_user GET    /users/new(.:format)                                                            users#new
#                                           GET    /users/:id/edit(.:format)                                                       users#edit
#                                           GET    /users/:id(.:format)                                                            users#show
#                                           PATCH  /users/:id(.:format)                                                            users#update
#                                           PUT    /users/:id(.:format)                                                            users#update
#                                           DELETE /users/:id(.:format)                                                            users#destroy
#                            thanks_welcome GET    /welcome/thanks(.:format)                                                       welcome#thanks
#                                   welcome POST   /welcome(.:format)                                                              welcome#create
#                               new_welcome GET    /welcome/new(.:format)                                                          welcome#new
#                              edit_welcome GET    /welcome/edit(.:format)                                                         welcome#edit
#                                           GET    /welcome(.:format)                                                              welcome#show
#                                           PATCH  /welcome(.:format)                                                              welcome#update
#                                           PUT    /welcome(.:format)                                                              welcome#update
#                                           DELETE /welcome(.:format)                                                              welcome#destroy
#       user_input_inquiry_survey_workflows GET    /inquiries/:inquiry_id/survey_workflows/user_input(.:format)                    survey_workflows#user_input
#       biz_review_inquiry_survey_workflows GET    /inquiries/:inquiry_id/survey_workflows/biz_review(.:format)                    survey_workflows#biz_review
#         complete_inquiry_survey_workflows GET    /inquiries/:inquiry_id/survey_workflows/complete(.:format)                      survey_workflows#complete
#                  inquiry_survey_workflows GET    /inquiries/:inquiry_id/survey_workflows(.:format)                               survey_workflows#index
#                                           POST   /inquiries/:inquiry_id/survey_workflows(.:format)                               survey_workflows#create
#               new_inquiry_survey_workflow GET    /inquiries/:inquiry_id/survey_workflows/new(.:format)                           survey_workflows#new
#              edit_inquiry_survey_workflow GET    /inquiries/:inquiry_id/survey_workflows/:id/edit(.:format)                      survey_workflows#edit
#                   inquiry_survey_workflow GET    /inquiries/:inquiry_id/survey_workflows/:id(.:format)                           survey_workflows#show
#                                           PATCH  /inquiries/:inquiry_id/survey_workflows/:id(.:format)                           survey_workflows#update
#                                           PUT    /inquiries/:inquiry_id/survey_workflows/:id(.:format)                           survey_workflows#update
#                                           DELETE /inquiries/:inquiry_id/survey_workflows/:id(.:format)                           survey_workflows#destroy
#                                           GET    /inquiries(.:format)                                                            inquiries#index
#                                           POST   /inquiries(.:format)                                                            inquiries#create
#                                           GET    /inquiries/new(.:format)                                                        inquiries#new
#                                           GET    /inquiries/:id/edit(.:format)                                                   inquiries#edit
#                                           GET    /inquiries/:id(.:format)                                                        inquiries#show
#                                           PATCH  /inquiries/:id(.:format)                                                        inquiries#update
#                                           PUT    /inquiries/:id(.:format)                                                        inquiries#update
#                                           DELETE /inquiries/:id(.:format)                                                        inquiries#destroy
#

#require "monban/constraints/signed_in"
#require "monban/constraints/signed_out"

Rails.application.routes.draw do


  resources :survey_item_category_templates
  resources :survey_item_categories
  resources :survey_item_templates
  resources :survey_data_types
  resources :survey_templates
  resources :systems
  resources :comments
  resources :locations
  resources :survey_items
  resources :survey_questions
  resources :survey_user_answers
  resources :survey_biz_user_answers

  resources :surveys do
  	resources :survey_user_answers
  	resources :survey_biz_user_answers
  	member do
  	  get 'franchiz_input'
  	end
  end


  resources :systems do
 	resources :survey_templates
  end

  resources :survey_item_category_templates do
	resources :survey_item_templates
  end

  resources :survey_item_categories do
	resources :survey_items
  end

  resources :survey_templates do
	resources :survey_item_category_templates
  end

  resource :session
  resources :biz_users
  root 'sessions#new'


  resources :import_survey_templates, only: [:show]

  resources :inquiry_basics, controller: 'business_inquiry/inquiry_basics'

  resources :inquiry_answers
  resources :import_surveys
#  resource :business
  resources :businesses do
  	resources :import_survey_templates
 	resources :survey_templates
  	resources :survey_item_templates
    resources :biz_users, shallow: true
    resources :inquiry_questions, shallow: true
    resources :survey_questions, shallow: true
    resources :inquiries, shallow: true do
      resources :locations, shallow: true
      resources :users, shallow: true do
        resources :addresses, shallow: true
      end
    end

    collection do
      get 'biz_init'
    end
  end
  resources :businesses do
    resources :biz_users
    resources :inquiries do
      resources :inquiry_qn_as
      resources :surveys
    end
  end
  resources :inquiries do
      resources :surveys
  end
  resources :users

  resource :welcome, :controller => 'welcome' do
    collection do
      get 'thanks'
    end
  end

  resources :inquiries do
  	resources :import_surveys
    resources :survey_workflows do
      collection do
        get 'user_input', 'biz_review', 'complete'
      end
    end
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
  #     #     resources :sales do
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
