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
  - `(?i)OLE DB.*? SQL Server`
  - `(?i)\bSQL Server[^&lt;&quot;]+Driver`
  - `(?i)Warning.*?\W(mssql|sqlsrv)_`
  - `(?i)\bSQL Server[^&lt;&quot;]+[0-9a-fA-F]{8}`
  - `(?i)System\.Data\.SqlClient\.SqlException`
  - `(?is)Exception.*?\bRoadhouse\.Cms\.`
  - `(?i)\[SQL Server\]`
  - `(?i)ODBC Driver \d+ for SQL Server`
  - `(?i)com\.jnetdirect\.jsql`
  - `(?i)macromedia\.jdbc\.sqlserver`
  - `(?i)Zend_Db_(Adapter|Statement)_Sqlsrv_Exception`
  - `(?i)com\.microsoft\.sqlserver\.jdbc`
  - `(?i)SQL(Srv|Server)Exception`

MySQL error:
  - `(?i)valid MySQL result`
  - `(?i)check the manual that (fits|corresponds to) your MySQL server version`
  - `(?i)MySQLSyntaxErrorException`
  - `(?i)MySqlException`
  - `(?i)MySql error`
  - `(?i)Unknown column `
  - `(?i)SQL syntax.*?MySQL`
  - `(?i)Warning.*?mysqli?`
  - `(?i)com\.mysql\.jdbc`
  - `(?i)Zend_Db_(Adapter|Statement)_Mysqli_Exception`
  - `(?i)Syntax error or access violation`

PostgreSQL error:
  - `(?i)valid PostgreSQL result`
  - `(?i)PG::SyntaxError:`
  - `(?i)PSQLException`
  - `(?i)PostgreSQL query failed`
  - `(?i)ERROR: parser: parse error at or near`
  - `(?i)PostgreSQL error`
  - `(?i)PostgreSQL.*?ERROR`
  - `(?i)Warning.*?\\Wpg_`
  - `(?i)Npgsql\.`
  - `(?i)org\.postgresql\.util\.PSQLException`
  - `(?i)ERROR:\s\ssyntax error at or near`
  - `(?i)org\.postgresql\.jdbc`
