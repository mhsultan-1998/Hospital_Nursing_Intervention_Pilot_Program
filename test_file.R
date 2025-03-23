library(stringr)
Sentences <- c("black","red")
  
y <- str_detect(Sentences, "[0-9]+")
x <- str_match(Sentences, "[0-9]+")
typeof(x)
typeof(y)

str_count(Sentences, "z")
library(RSQLite)
con <- dbConnect(SQLite())
bed <- read.csv("bed_type.csv")
dbWriteTable(con, "bed", bed)
dbReadTable(con, "bed")
dbListTables(con)

```{sql, connection=mydb}
CREATE TABLE IF NOT EXISTS bed_type (
  bed_id INTEGER PRIMARY KEY,
  bed_code TEXT,
  bed_desc TEXT
);
```
```{sql, connection=mydb}
CREATE TABLE business (
  ims_org_id TEXT PRIMARY KEY,
  business_name TEXT,
  ttl_license_beds INTEGER,
  ttl_census_beds INTEGER,
  ttl_staffed_beds INTEGER,
  bed_cluster_id INTEGER
);
```
```{sql, connection=mydb}
CREATE TABLE IF NOT EXISTS bed_fact (
  ims_org_id TEXT REFERENCES business(ims_org_id),
  bed_id INTEGER REFERENCES bed_type(bed_id),
  license_beds INTEGER,
  census_beds INTEGER,
  staffed_beds INTEGER
);
```



x = 0
x2 = 0
for (z in z_scores) {
  x2 = x2 + 1
  if (z > 2.5) {
    x = x + 1
    print(z)
    print(x2)
  }
}
print(x)



2.988819

x = 0

for (z in z_scores) {
  x = x + 1
  if (z == 2.988819) {
    print(x)
  }
}

print(x)










fit <- lm(100/mpg ~ disp + hp + wt + am, data = mtcars)














