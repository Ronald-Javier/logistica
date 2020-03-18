class UsersSpreadsheet
    attr_accessor :users
    
    def initialize users
      @users = users
    end
  
    def generate_xls
      book = Spreadsheet::Workbook.new
      sheet = book.create_worksheet name: “Users”
  
      create_body sheet
  
      data_to_send = StringIO.new
      book.write data_to_send
      data_to_send.string 
    end
  
    def create_body sheet
      # Header row with a specific format
      sheet.row(0).concat %w{Email Username Newsletter}
      sheet.row(0).default_format = Spreadsheet::Format.new weight: :bold
  
      row_index = 1
      users.each do |user|
        sheet.row(row_index).concat [user.email, user.name]
        # sheet.row(row_index).default_format = Spreadsheet.Format.new # define a custom format
        row_index += 1
      end
    end
  end