library(d.inspectEHR);

OUTPUT_FILE = Sys.getenv("OUTPUT_FILE", unset = "DECOVID_report.html")
DB_DRIVER = Sys.getenv("DB_DRIVER", unset = "PostgreSQL")
DB_HOST = Sys.getenv("DB_HOST", unset = "localhost")
DB_PORT = Sys.getenv("DB_PORT", unset = 5432)
DB_NAME = Sys.getenv("DB_NAME", unset = "decovid")
DB_SCHEMA = Sys.getenv("DB_SCHEMA", unset = "public")
DB_USER = Sys.getenv("DB_USER", unset = "postgres")
DB_PASSWORD = Sys.getenv("DB_PASSWORD", unset = "postgres")
LOCAL_HOSPITAL = Sys.getenv("LOCAL_HOSPITAL", unset = "St. Elsewhere")


render_report(
  output = OUTPUT_FILE,
  prams = list(
    driver = DB_DRIVER,
    host = DB_HOST,
    port = DB_PORT,
    dbname = DB_NAME,
    schema = DB_SCHEMA,
    user = DB_USER,
    password = DB_PASSWORD,
    local_hospital = LOCAL_HOSPITAL
  )
)



