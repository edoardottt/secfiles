General error: 
  - `(?i)(fatal|critical|severe|high|medium|low) error`

Debug Information:
  - `(?i)Debug trace`
  - `(?i)stack trace\:`

PHP error:
  - `(?i)php (warning|error)`
  - `(?i)include_path`
  - `(?i)undefined (variable|index)`
  - `(?i)expect(s*) parameter [A-Za-z0-9-_]{1,30}`
  - `(?i)call to undefined method`
  - `(?i)failed to open stream`
  - `(?i)cannot modify header information`
  - `(?i)(syntax|parse|fatal) error`
  - `(?i)safe mode restriction in effect`
  - `(?i)uncaught exception`

MariaDB error:
  - `(?i)check the manual that (fits|corresponds to) your MariaDB server version`
  - `(?i)MariaDB error`

OracleDB error:
  - `(?i)(\bORA-\d{5}|Oracle error|Oracle.*Driver|Warning.*\Woci_.*|Warning.*\Wora_.*)`

IBMDB2 error:
  - `(?i)(CLI Driver.*DB2|DB2 SQL error|\bdb2_\w+\(|SQLSTATE.+SQLCODE)`

SQLite error:
  - `(?i)(SQLite\/JDBCDriver|SQLite.Exception|System.Data.SQLite.SQLiteException|Warning.*sqlite_.*|Warning.*SQLite3::|\[SQLITE_ERROR\])`

MSSQL error:
  - `(?i)Microsoft SQL error`
  - `(?i)Microsoft SQL Native Client error`
  - `(?i)Unclosed quotation mark after the character string`
  - `(?i)SQLServer JDBC Driver`
  - `(?i)Driver.*? SQL[\-\_\ ]*Server`
