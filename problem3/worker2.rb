require "redis"

r = Redis.new

while true
  number = r.brpop("work_queue")[1]
  puts "retrieved: #{number}"
  puts "queue total: #{r.incrby("total", number)}"
end
