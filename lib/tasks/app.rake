namespace :app do

  desc "symbolik link to js app in node modules"
  task node_modules_link: :environment do
    `ln -s #{Rails.root.to_s}/client/app #{Rails.root.to_s}/node_modules`
    `ln -s #{Rails.root.to_s}/client/test/fixtures #{Rails.root.to_s}/node_modules`
    `ln -s #{Rails.root.to_s}/client/lib #{Rails.root.to_s}/node_modules`
  end

  desc "Run rails unit test and react unit test"
  task test: :environment do
    system('spring rspec')
    system('npm test')
  end

end
