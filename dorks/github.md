### [cs.github.com](https://cs.github.com)

- `/\becho\b.*\$_GET\b/` or `/echo\s+\$_REQUEST/` or `/^.*\becho\s+\$_GET\b.*$/` and `path:*.php`
- `/(SELECT|INSERT|UPDATE|DELETE)\s(.*\$_POST|.*\$_GET|.*\$_REQUEST)/` and `path:*.php`
- `/(exec\(|system\(|shell_exec\(|passthru\()(.*\$_POST|.*\$_GET|.*\$_REQUEST)/` and `path:*.php`
- `path:*.js /exec\(/` 
- `path:*.js /exec\(.*\$.*/`
- `path:*.js /execSync\(.*\$.*/`
- `path:*.php /\$_GET\(/`
- `path:*.php /\$_POST\(/`
- `path:*.php /exec\(/`
