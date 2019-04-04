namespace :db do
  desc 'Populate/Sync the Hero and abilities data from OverWatch'
  task populate: :environment do
    Rake::Task['db:populate_hero'].execute
    Rake::Task['db:populate_ability'].execute
  end

  desc 'Populate/Sync Hero data from OverWatch'
  task populate_hero: :environment do
    data = HeroWrapper.fetch_all
    data.each do |attrs|
      next if Hero.exists?(external_id: attrs['external_id'])
      Hero.create!(attrs)
    end
  end

  desc 'Populate/Sync Ability data from Overwatch'
  task populate_ability: :environment do
    data = AbilityWrapper.fetch_all
    data.each do |attrs|
      next if Ability.exists?(external_id: attrs['external_id'])
      Ability.create!(attrs)
      # TODO: populate hero and ability mapping
    end
  end
end
