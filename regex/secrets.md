AWS Access Key: `(A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}`  
AWS Secret Key: `(?i)aws(.{0,20})?(?-i)['\"][0-9a-zA-Z\/+]{40}['\"]`  
AWS MWS Key: `amzn\\.mws\\.[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}`  
Amazon SNS topic: `arn:aws:sns:[a-z0-9\-]+:[0-9]+:[A-Za-z0-9\-_]+`  
Facebook Secret Key: `(?i)(facebook|fb)(.{0,20})?(?-i)['\"][0-9a-f]{32}['\"]`  
Facebook Client ID: `(?i)(facebook|fb)(.{0,20})?['\"][0-9]{13,17}['\"]`  
Cloudinary Basic Auth: `cloudinary://[0-9]{15}:[0-9A-Za-z\\-_]+@[0-9A-Za-z\\-_]+`  
Firebase Database: `([a-z0-9.-]+\.firebaseio\.com|[a-z0-9.-]+\.firebaseapp\.com)`  
Twitter Secret Key: `(?i)twitter(.{0,20})?[0-9a-z]{35,44}`  
Twitter Client ID: `(?i)twitter(.{0,20})?[0-9a-z]{18,25}`  
Github Personal Access Token: `ghp_[0-9a-zA-Z]{36}`  
Github OAuth Access Token: `gho_[0-9a-zA-Z]{36}`  
Github App Token: `(ghu|ghs)_[0-9a-zA-Z]{36}`  
Github Refresh Token: `ghr_[0-9a-zA-Z]{76}`  
LinkedIn Client ID: `(?i)linkedin(.{0,20})?(?-i)[0-9a-z]{12}`  
LinkedIn Secret Key: `(?i)linkedin(.{0,20})?[0-9a-z]{16}`  
Slack: `xox[baprs]-([0-9a-zA-Z]{10,48})?`  
Asymmetric Private Key: `-----BEGIN ((EC|PGP|DSA|RSA|OPENSSH) )?PRIVATE KEY( BLOCK)?-----`  
Google API key: `AIza[0-9A-Za-z\\-_]{35}`  
Google (GCP) Service Account: `"type": "service_account"`  
Heroku API key: `(?i)heroku(.{0,20})?[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}`  
