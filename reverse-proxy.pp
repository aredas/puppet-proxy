include nginx

class{'nginx':
    manage_repo    => true,    
}

nginx::resource::server{'domain.com':
    proxy => 'http://10.10.10.10'
}

nginx::resource::location{'/resource2':
    proxy  => 'http://20.20.20.20/',
    server => 'domain.com'
}
