namespace :ancestry_bench do
  desc "TODO"
  task :request, "count"

  task :request100 => :environment do
    start = Time.now
    100.times do
      univ = Group.find(1)
      univ.descendants
    end
    p cost = Time.now - start
  end

  task :request1000 => :environment do
    start = Time.now
    1000.times do
      univ = Group.find(1)
      univ.descendants
    end
    p cost = Time.now - start
  end

  task :request10000 => :environment do
    start = Time.now
    10000.times do
      univ = Group.find(1)
      univ.descendants
    end
    p cost = Time.now - start
  end
end
