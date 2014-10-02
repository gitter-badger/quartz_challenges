require "redis"

r = Redis.new

while true
  rand_num = rand(100)
  puts "generated random number: #{rand_num}"
  r.lpush("work_queue", rand_num)
  sleep 1
end
