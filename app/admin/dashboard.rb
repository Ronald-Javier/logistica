ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    
    end
    columns do
      column do
        panel "Últimos Puntos completados" do
        ul do
        CompletedPoint.last(5).map do |point|
        li link_to(point.point.name, admin_completed_points_path)
        end
        end
        end
        end
      column do
      panel "Usuarios" do
      ul do
      li "Usuarios registrados: #{User.count}"
      li "Administradores registrados: #{AdminUser.count}"
      end
      end
      end
      column do
      panel "Puntos" do
      ul do
      li "Puntos creados: #{Point.count}"
      li "Puntos completados: #{CompletedPoint.count}"
      end
      end
      end
      end
      panel "Gráfico" do
        render 'shared/chart'
        end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
    end

  end 

