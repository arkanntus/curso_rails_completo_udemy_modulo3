namespace :utils do

  desc "Cria Administradores Fake"
  task generate_admins: :environment do
    puts "Cadastrando o Adminitradores..."
    10.times do

      Admin.create!(email: Faker::Internet.email,
                    password: "123456", password_confirmation: "123456")

    end
    puts "Administradores cadastrados com sucesso!"
  end

end
