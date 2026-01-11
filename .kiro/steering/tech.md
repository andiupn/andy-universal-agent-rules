---
inclusion: always
---

# Tech Stack & Capabilities

## Environment
- **OS:** Windows (cmd shell)
- **PHP:** 8.4+ (Laragon)
- **Node.js:** 20.x+
- **Python:** 3.13.5 (11 third-party packages)
- **Databases:** MySQL (3306), Oracle 11g (1521)

## Python Packages Available
| Category | Packages | Use Cases |
|----------|----------|-----------|
| **Web** | requests, beautifulsoup4, lxml | API calls, scraping, XML |
| **Data** | pandas, numpy | CSV analysis, calculations |
| **Config** | pyyaml, toml | Parse configs |
| **Dev** | pytest, pylint, black, pillow | Testing, linting, images |

## Database Performance (Benchmarked)
- **MySQL PDO:** 3.20ms vs mysql CLI: ~75ms (23x faster)
- **Oracle OCI8:** 2.25ms vs SQLPlus: 355ms (157x faster)
- **Rule:** Always use PHP libraries over CLI for applications

## MCP Servers (12 Active)
- **Database:** mysql, sqlite
- **Automation:** git, filesystem, chrome-devtools, puppeteer
- **Analysis:** lighthouse, sequential-thinking
- **Network:** fetch
- **Memory:** memory (knowledge graph)

## Connection Strings
```php
// MySQL
$pdo = new PDO('mysql:host=127.0.0.1;port=3306;dbname=db', 'root', '');

// Oracle  
$conn = oci_connect('testphp', 'testphp123', '//localhost:1521/ORCL');
```