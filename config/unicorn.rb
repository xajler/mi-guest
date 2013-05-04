root = "/home/xajler/apps/villa_marta/current"
# root = "/home/xajler/apps/hostelri/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.villa_marta.sock"
# listen "/tmp/unicorn.hostelri.sock"
worker_processes 2
timeout 30
