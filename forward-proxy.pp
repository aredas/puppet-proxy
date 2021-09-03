include nginx

class{'nginx':
    manage_repo => true,
    log_format  => {
      main => '[$time_local]: [$upstream_addr] $status $scheme $request_uri $request_time'
    }
}

nginx::resource::server{'localhost':
    listen_port => 8080,
    resolver    => ['208.67.222.222', '208.67.220.220'],
    proxy       => 'http://$http_host$uri$is_args$args',
    format_log  => main
}
