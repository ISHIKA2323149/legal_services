# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
      span class: 'blank_slate' do
        span I18n.t('active_admin.dashboard_welcome.welcome')
        small I18n.t('active_admin.dashboard_welcome.call_to_action')
      end
    end

    columns do
      column do
        panel "User Stats" do
          para "Total Users: #{User.count}, #{User.roles}"
        end
      end
    end

    columns do
      column do
        panel "Users List" do
          ul do
            User.all.map do |user|
              li "#{user.name} - #{user.email}- #{user.role}"
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end

  end
end
