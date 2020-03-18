ActiveAdmin.register User do

  controller do
    def index

      index! do |format|
        format.xls {
          spreadsheet = UsersSpreadsheet.new @users
          send_data spreadsheet.generate_xls, filename: "users.xls"
        }
      end
    end
  end
end