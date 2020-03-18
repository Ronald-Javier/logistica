ActiveAdmin.register CompletedPoint do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :point_id, :user_id, :point_status, :usuario, :valor, :nombre
  #
  # or
  #
  # permit_params do
  #   permitted = [:point_id, :user_id, :point_status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  config.xls_builder.header_format = { weight: :bold, color: :black}
  config.xls_builder.delete_columns :id, :updated_at, :point_status
  config.xls_builder.column('user_name') do |user|
    user.user.name
  end
  config.xls_builder.column('point_name') do |point|
    point.point.name
  end

  config.xls_builder.column('point_value') do |point_value|
    point_value.point.point_value
  end

  index do
    column :usuario do |nombre|
      nombre.user.name
    end
    column :valor do |valor|
      valor.point.point_value
    end
    column :nombre do |punto|
      punto.point.name
    end
    column :created_at
    end
end
