# Test

Create/extend an existing puppet module for Nginx including the following functionalities:
* Create a proxy to redirect requests for
  - https://domain.com to 10.10.10.10  
  - https://domain.com/resource2 to 20.20.20.20

* Create a forward proxy to log HTTP requests going  
from the  internal network to the Internet including:  
request protocol, remote IP and time take to serve  
the request.  
* (Optional) Implement a proxy health check.

---

I've used [_NGINX module for Puppet_](https://github.com/voxpupuli/puppet-nginx)

Install the module
```bash
puppet module install puppet-nginx --version 3.2.0
```
Run the manifest
```bash
puppet apply --modulepath=<PATH-TO-MODULE> <PATH-TO-MANIFEST>
```
