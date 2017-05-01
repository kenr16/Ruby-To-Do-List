require("rspec")
require("pg")
require("list")
require("to_do")

DB = PG.connect({:dbname => "task_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM tasks *;")
  end
end
