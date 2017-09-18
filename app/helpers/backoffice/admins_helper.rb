module Backoffice::AdminsHelper
  OptionsForRole = Struct.new(:id, :description)

  def options_for_roles
    options = []
    Admin.roles_i18n.each do |key, value|
      options.push(OptionsForRole.new(key, value))
    end

    options
  end

end
