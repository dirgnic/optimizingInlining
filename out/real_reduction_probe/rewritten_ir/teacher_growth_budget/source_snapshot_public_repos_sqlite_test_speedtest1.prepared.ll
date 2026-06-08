; ModuleID = './source_snapshot/public_repos/sqlite/test/speedtest1.c'
source_filename = "./source_snapshot/public_repos/sqlite/test/speedtest1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.Global = type { ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i64, i32, [3000 x i8], ptr, ptr, %struct.HashContext }
%struct.HashContext = type { i8, i8, i8, [256 x i8], [32 x i8] }
%struct.anon = type { ptr, i32 }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@speedtest1_timestamp.clockVfs = internal global ptr null, align 8
@g = internal global %struct.Global zeroinitializer, align 8
@speedtest1_numbername.ones = internal global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 8
@.str = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@speedtest1_numbername.tens = internal global [10 x ptr] [ptr @.str.20, ptr @.str.10, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 8
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c" billion\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c" million\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c" thousand\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"%s hundred\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iTestNumber = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"-- begin test %d %.*s\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"/* %4d - %s%.*s */\0A\00", align 1
@zDots = internal constant [72 x i8] c".......................................................................\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"%4d - %s%.*s \00", align 1
@__stdoutp = external global ptr, align 8
@.str.37 = private unnamed_addr constant [23 x i8] c"PRAGMA wal_checkpoint;\00", align 1
@__func__.speedtest1_end_test = private unnamed_addr constant [20 x i8] c"speedtest1_end_test\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"speedtest1.c\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"iTestNumber > 0\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"-- end test %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%4d.%03ds\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"       TOTAL%.*s %4d.%03ds\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"Verification Hash: %llu \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"SQL error: %s\0A%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"exec error: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"%s\0AError code %d: %s\0A\00", align 1
@__func__.speedtest1_run = private unnamed_addr constant [15 x i8] c"speedtest1_run\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"g.pStmt\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"-IFTBN\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"%d INSERTs into table with no index\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"CREATE%s TABLE z1(a INTEGER %s, b INTEGER %s, c TEXT %s);\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"INSERT INTO z1 VALUES(?1,?2,?3); --  %d times\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"%d ordered INSERTS with one index/PK\00", align 1
@.str.62 = private unnamed_addr constant [63 x i8] c"CREATE%s TABLE z2(a INTEGER %s %s, b INTEGER %s, c TEXT %s) %s\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"INSERT INTO z2 VALUES(?1,?2,?3); -- %d times\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"%d unordered INSERTS with one index/PK\00", align 1
@.str.65 = private unnamed_addr constant [63 x i8] c"CREATE%s TABLE t3(a INTEGER %s %s, b INTEGER %s, c TEXT %s) %s\00", align 1
@.str.66 = private unnamed_addr constant [45 x i8] c"INSERT INTO t3 VALUES(?1,?2,?3); -- %d times\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"%d SELECTS, numeric BETWEEN, unindexed\00", align 1
@.str.68 = private unnamed_addr constant [105 x i8] c"SELECT count(*), avg(b), sum(length(c)), group_concat(c) FROM z1\0A WHERE b BETWEEN ?1 AND ?2; -- %d times\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"%d SELECTS, LIKE, unindexed\00", align 1
@.str.70 = private unnamed_addr constant [95 x i8] c"SELECT count(*), avg(b), sum(length(c)), group_concat(c) FROM z1\0A WHERE c LIKE ?1; -- %d times\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"%d SELECTS w/ORDER BY, unindexed\00", align 1
@.str.72 = private unnamed_addr constant [64 x i8] c"SELECT a, b, c FROM z1 WHERE c LIKE ?1\0A ORDER BY a; -- %d times\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"%d SELECTS w/ORDER BY and LIMIT, unindexed\00", align 1
@.str.74 = private unnamed_addr constant [73 x i8] c"SELECT a, b, c FROM z1 WHERE c LIKE ?1\0A ORDER BY a LIMIT 10; -- %d times\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"CREATE INDEX five times\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"BEGIN;\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"CREATE UNIQUE INDEX t1b ON z1(b);\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"CREATE INDEX t1c ON z1(c);\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"CREATE UNIQUE INDEX t2b ON z2(b);\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"CREATE INDEX t2c ON z2(c DESC);\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"CREATE INDEX t3bc ON t3(b,c);\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"COMMIT;\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"%d SELECTS, numeric BETWEEN, indexed\00", align 1
@.str.84 = private unnamed_addr constant [105 x i8] c"SELECT count(*), avg(b), sum(length(c)), group_concat(a) FROM z1\0A WHERE b BETWEEN ?1 AND ?2; -- %d times\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"%d SELECTS, numeric BETWEEN, PK\00", align 1
@.str.86 = private unnamed_addr constant [105 x i8] c"SELECT count(*), avg(b), sum(length(c)), group_concat(a) FROM z2\0A WHERE a BETWEEN ?1 AND ?2; -- %d times\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"%d SELECTS, text BETWEEN, indexed\00", align 1
@.str.88 = private unnamed_addr constant [112 x i8] c"SELECT count(*), avg(b), sum(length(c)), group_concat(a) FROM z1\0A WHERE c BETWEEN ?1 AND (?1||'~'); -- %d times\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"%d INSERTS with three indexes\00", align 1
@.str.90 = private unnamed_addr constant [71 x i8] c"CREATE%s TABLE t4(\0A  a INTEGER %s %s,\0A  b INTEGER %s,\0A  c TEXT %s\0A) %s\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"CREATE INDEX t4b ON t4(b)\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"CREATE INDEX t4c ON t4(c)\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"INSERT INTO t4 SELECT * FROM z1\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"DELETE and REFILL one table\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"DELETE FROM z2;\00", align 1
@.str.96 = private unnamed_addr constant [33 x i8] c"INSERT INTO z2 SELECT * FROM z1;\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"VACUUM\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"ALTER TABLE ADD COLUMN, and query\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"ALTER TABLE z2 ADD COLUMN d INT DEFAULT 123\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"SELECT sum(d) FROM z2\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"%d UPDATES, numeric BETWEEN, indexed\00", align 1
@.str.102 = private unnamed_addr constant [59 x i8] c"UPDATE z2 SET d=b*2 WHERE b BETWEEN ?1 AND ?2; -- %d times\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"%d UPDATES of individual rows\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"UPDATE z2 SET d=b*3 WHERE a=?1; -- %d times\00", align 1
@.str.105 = private unnamed_addr constant [41 x i8] c"One big UPDATE of the whole %d-row table\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"UPDATE z2 SET d=b*4\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"Query added column after filling\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"%d DELETEs, numeric BETWEEN, indexed\00", align 1
@.str.109 = private unnamed_addr constant [54 x i8] c"DELETE FROM z2 WHERE b BETWEEN ?1 AND ?2; -- %d times\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"%d DELETEs of individual rows\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"DELETE FROM t3 WHERE a=?1; -- %d times\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"Refill two %d-row tables using REPLACE\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"REPLACE INTO z2(a,b,c) SELECT a,b,c FROM z1\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"REPLACE INTO t3(a,b,c) SELECT a,b,c FROM z1\00", align 1
@.str.115 = private unnamed_addr constant [41 x i8] c"Refill a %d-row table using (b&1)==(a&1)\00", align 1
@.str.116 = private unnamed_addr constant [65 x i8] c"INSERT INTO z2(a,b,c)\0A SELECT a,b,c FROM z1  WHERE (b&1)==(a&1);\00", align 1
@.str.117 = private unnamed_addr constant [65 x i8] c"INSERT INTO z2(a,b,c)\0A SELECT a,b,c FROM z1  WHERE (b&1)<>(a&1);\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"%d four-ways joins\00", align 1
@.str.119 = private unnamed_addr constant [114 x i8] c"SELECT z1.c FROM z1, z2, t3, t4\0A WHERE t4.a BETWEEN ?1 AND ?2\0A   AND t3.a=t4.b\0A   AND z2.a=t3.b\0A   AND z1.c=z2.c;\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"subquery in result set\00", align 1
@.str.121 = private unnamed_addr constant [118 x i8] c"SELECT sum(a), max(c),\0A       avg((SELECT a FROM z2 WHERE 5+z2.b=z1.b) AND rowid<?1), max(c)\0A FROM z1 WHERE rowid<?1;\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"%d REPLACE ops on an IPK\00", align 1
@.str.123 = private unnamed_addr constant [48 x i8] c"CREATE%s TABLE t5(a INTEGER PRIMARY KEY, b %s);\00", align 1
@.str.124 = private unnamed_addr constant [44 x i8] c"REPLACE INTO t5 VALUES(?1,?2); --  %d times\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"%d SELECTS on an IPK\00", align 1
@.str.126 = private unnamed_addr constant [42 x i8] c"SELECT b FROM t5 WHERE a=?1; --  %d times\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"%d REPLACE on TEXT PK\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"CREATE%s TABLE t6(a TEXT PRIMARY KEY, b %s)%s;\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"WITHOUT ROWID\00", align 1
@.str.130 = private unnamed_addr constant [44 x i8] c"REPLACE INTO t6 VALUES(?1,?2); --  %d times\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"%d SELECTS on a TEXT PK\00", align 1
@.str.132 = private unnamed_addr constant [42 x i8] c"SELECT b FROM t6 WHERE a=?1; --  %d times\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"%d SELECT DISTINCT\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"SELECT DISTINCT b FROM t5;\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"SELECT DISTINCT b FROM t6;\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"PRAGMA integrity_check\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"ANALYZE\00", align 1
@testset_cte.azPuzzle = internal global [3 x ptr] [ptr @.str.138, ptr @.str.139, ptr @.str.140], align 8
@.str.138 = private unnamed_addr constant [82 x i8] c"534...9..67.195....98....6.8...6...34..8.3..1....2...6.6....28....419..5...28..79\00", align 1
@.str.139 = private unnamed_addr constant [82 x i8] c"53....9..6..195....98....6.8...6...34..8.3..1....2...6.6....28....419..5....8..79\00", align 1
@.str.140 = private unnamed_addr constant [82 x i8] c"53.......6..195....98....6.8...6...34..8.3..1....2...6.6....28....419..5....8..79\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"Sudoku with recursive 'digits'\00", align 1
@.str.142 = private unnamed_addr constant [804 x i8] c"WITH RECURSIVE\0A  input(sud) AS (VALUES(?1)),\0A  digits(z,lp) AS (\0A    VALUES('1', 1)\0A    UNION ALL\0A    SELECT CAST(lp+1 AS TEXT), lp+1 FROM digits WHERE lp<9\0A  ),\0A  x(s, ind) AS (\0A    SELECT sud, instr(sud, '.') FROM input\0A    UNION ALL\0A    SELECT\0A      substr(s, 1, ind-1) || z || substr(s, ind+1),\0A      instr( substr(s, 1, ind-1) || z || substr(s, ind+1), '.' )\0A     FROM x, digits AS z\0A    WHERE ind>0\0A      AND NOT EXISTS (\0A            SELECT 1\0A              FROM digits AS lp\0A             WHERE z.z = substr(s, ((ind-1)/9)*9 + lp, 1)\0A                OR z.z = substr(s, ((ind-1)%%9) + (lp-1)*9 + 1, 1)\0A                OR z.z = substr(s, (((ind-1)/3) %% 3) * 3\0A                        + ((ind-1)/27) * 27 + lp\0A                        + ((lp-1) / 3) * 6, 1)\0A         )\0A  )\0ASELECT s FROM x WHERE ind=0;\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"Sudoku with VALUES 'digits'\00", align 1
@.str.144 = private unnamed_addr constant [812 x i8] c"WITH RECURSIVE\0A  input(sud) AS (VALUES(?1)),\0A  digits(z,lp) AS (VALUES('1',1),('2',2),('3',3),('4',4),('5',5),\0A                         ('6',6),('7',7),('8',8),('9',9)),\0A  x(s, ind) AS (\0A    SELECT sud, instr(sud, '.') FROM input\0A    UNION ALL\0A    SELECT\0A      substr(s, 1, ind-1) || z || substr(s, ind+1),\0A      instr( substr(s, 1, ind-1) || z || substr(s, ind+1), '.' )\0A     FROM x, digits AS z\0A    WHERE ind>0\0A      AND NOT EXISTS (\0A            SELECT 1\0A              FROM digits AS lp\0A             WHERE z.z = substr(s, ((ind-1)/9)*9 + lp, 1)\0A                OR z.z = substr(s, ((ind-1)%%9) + (lp-1)*9 + 1, 1)\0A                OR z.z = substr(s, (((ind-1)/3) %% 3) * 3\0A                        + ((ind-1)/27) * 27 + lp\0A                        + ((lp-1) / 3) * 6, 1)\0A         )\0A  )\0ASELECT s FROM x WHERE ind=0;\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"Mandelbrot Set with spacing=%f\00", align 1
@.str.146 = private unnamed_addr constant [596 x i8] c"WITH RECURSIVE \0A  xaxis(x) AS (VALUES(-2.0) UNION ALL SELECT x+?1 FROM xaxis WHERE x<1.2),\0A  yaxis(y) AS (VALUES(-1.0) UNION ALL SELECT y+?2 FROM yaxis WHERE y<1.0),\0A  m(iter, cx, cy, x, y) AS (\0A    SELECT 0, x, y, 0.0, 0.0 FROM xaxis, yaxis\0A    UNION ALL\0A    SELECT iter+1, cx, cy, x*x-y*y + cx, 2.0*x*y + cy FROM m \0A     WHERE (x*x + y*y) < 4.0 AND iter<28\0A  ),\0A  m2(iter, cx, cy) AS (\0A    SELECT max(iter), cx, cy FROM m GROUP BY cx, cy\0A  ),\0A  a(t) AS (\0A    SELECT group_concat( substr(' .+*#', 1+min(iter/7,4), 1), '') \0A    FROM m2 GROUP BY cy\0A  )\0ASELECT group_concat(rtrim(t),x'0a') FROM a;\00", align 1
@.str.147 = private unnamed_addr constant [37 x i8] c"EXCEPT operator on %d-element tables\00", align 1
@.str.148 = private unnamed_addr constant [231 x i8] c"WITH RECURSIVE \0A  z1(x) AS (VALUES(2) UNION ALL SELECT x+2 FROM z1 WHERE x<%d),\0A  z2(y) AS (VALUES(3) UNION ALL SELECT y+3 FROM z2 WHERE y<%d)\0ASELECT count(x), avg(x) FROM (\0A  SELECT x FROM z1 EXCEPT SELECT y FROM z2 ORDER BY 1\0A);\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"%d.%de%d\00", align 1
@.str.150 = private unnamed_addr constant [31 x i8] c"Fill a table with %d FP values\00", align 1
@.str.151 = private unnamed_addr constant [41 x i8] c"CREATE%s TABLE z1(a REAL %s, b REAL %s);\00", align 1
@.str.152 = private unnamed_addr constant [42 x i8] c"INSERT INTO z1 VALUES(?1,?2); -- %d times\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"%d range queries\00", align 1
@.str.154 = private unnamed_addr constant [48 x i8] c"SELECT sum(b) FROM z1 WHERE a BETWEEN ?1 AND ?2\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"CREATE INDEX three times\00", align 1
@.str.156 = private unnamed_addr constant [27 x i8] c"CREATE INDEX t1a ON z1(a);\00", align 1
@.str.157 = private unnamed_addr constant [27 x i8] c"CREATE INDEX t1b ON z1(b);\00", align 1
@.str.158 = private unnamed_addr constant [30 x i8] c"CREATE INDEX t1ab ON z1(a,b);\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"%d indexed range queries\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"%d calls to round()\00", align 1
@.str.161 = private unnamed_addr constant [43 x i8] c"SELECT sum(round(a,2)+round(b,4)) FROM z1;\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"%d printf() calls\00", align 1
@.str.163 = private unnamed_addr constant [95 x i8] c"WITH c(fmt) AS (VALUES('%%g'),('%%e'),('%%!g'),('%%.20f'))SELECT sum(printf(fmt,a)) FROM z1, c\00", align 1
@.str.164 = private unnamed_addr constant [36 x i8] c"Create a fact table with %d entries\00", align 1
@.str.165 = private unnamed_addr constant [173 x i8] c"CREATE TABLE facttab( attr01 INT, attr02 INT, attr03 INT, data01 TEXT, attr04 INT, attr05 INT, attr06 INT, attr07 INT, attr08 INT, factid INTEGER PRIMARY KEY, data02 TEXT);\00", align 1
@.str.166 = private unnamed_addr constant [355 x i8] c"WITH RECURSIVE counter(nnn) AS(VALUES(1) UNION ALL SELECT nnn+1 FROM counter WHERE nnn<%d)INSERT INTO facttab(attr01,attr02,attr03,attr04,attr05,attr06,attr07,attr08,data01,data02)SELECT random()%%12, random()%%13, random()%%14, random()%%15,random()%%16, random()%%17, random()%%18, random()%%19,concat('data-',nnn), format('%%x',random()) FROM counter;\00", align 1
@.str.167 = private unnamed_addr constant [41 x i8] c"Create indexes on all attributes columns\00", align 1
@.str.168 = private unnamed_addr constant [48 x i8] c"CREATE INDEX fact_attr%02d ON facttab(attr%02d)\00", align 1
@.str.169 = private unnamed_addr constant [24 x i8] c"Create dimension tables\00", align 1
@.str.170 = private unnamed_addr constant [74 x i8] c"CREATE TABLE dimension%02d(beta%02d INT, content%02d TEXT, rate%02d REAL)\00", align 1
@.str.171 = private unnamed_addr constant [188 x i8] c"WITH RECURSIVE ctr(nn) AS (VALUES(1) UNION ALL SELECT nn+1 FROM ctr WHERE nn<%d) INSERT INTO dimension%02d   SELECT nn%%(%d), concat('content-%02d-',nn), (random()%%10000)*0.125 FROM ctr;\00", align 1
@.str.172 = private unnamed_addr constant [49 x i8] c"CREATE INDEX dim%02d ON dimension%02d(beta%02d);\00", align 1
@.str.173 = private unnamed_addr constant [61 x i8] c"CREATE INDEX dim%02d ON dimension%02d(beta%02d,content%02d);\00", align 1
@.str.174 = private unnamed_addr constant [38 x i8] c"Star query over the entire fact table\00", align 1
@.str.175 = private unnamed_addr constant [338 x i8] c"SELECT count(*), max(content04), min(content03), sum(rate04), avg(rate05) FROM facttab, dimension01, dimension02, dimension03, dimension04, dimension05, dimension06, dimension07, dimension08 WHERE attr01=beta01 AND attr02=beta02 AND attr03=beta03 AND attr04=beta04 AND attr05=beta05 AND attr06=beta06 AND attr07=beta07 AND attr08=beta08;\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"Star query with LEFT JOINs\00", align 1
@.str.177 = private unnamed_addr constant [412 x i8] c"SELECT count(*), max(content04), min(content03), sum(rate04), avg(rate05) FROM facttab LEFT JOIN dimension01 ON attr01=beta01 LEFT JOIN dimension02 ON attr02=beta02 JOIN dimension03 ON attr03=beta03 JOIN dimension04 ON attr04=beta04 JOIN dimension05 ON attr05=beta05 LEFT JOIN dimension06 ON attr06=beta06 JOIN dimension07 ON attr07=beta07 JOIN dimension08 ON attr08=beta08 WHERE facttab.data01 LIKE 'data-9%%';\00", align 1
@testset_orm.zType = internal constant [120 x i8] c"IBBIIITIVVITBTBFBFITTFBTBVBVIFTBBFITFFVBIFIVBVVVBTVTIBBFFIVIBTBTVTTFTVTVFFIITIFBITFTTFFFVBIIBTTITFTFFVVVFIIITVBBVFFTVVB\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"Fill %d rows\00", align 1
@.str.179 = private unnamed_addr constant [3900 x i8] c"BEGIN;CREATE TABLE ZLOOKSLIKECOREDATA (  ZPK INTEGER PRIMARY KEY,  ZTERMFITTINGHOUSINGCOMMAND INTEGER,  ZBRIEFGOBYDODGERHEIGHT BLOB,  ZCAPABLETRIPDOORALMOND BLOB,  ZDEPOSITPAIRCOLLEGECOMET INTEGER,  ZFRAMEENTERSIMPLEMOUTH INTEGER,  ZHOPEFULGATEHOLECHALK INTEGER,  ZSLEEPYUSERGRANDBOWL TIMESTAMP,  ZDEWPEACHCAREERCELERY INTEGER,  ZHANGERLITHIUMDINNERMEET VARCHAR,  ZCLUBRELEASELIZARDADVICE VARCHAR,  ZCHARGECLICKHUMANEHIRE INTEGER,  ZFINGERDUEPIZZAOPTION TIMESTAMP,  ZFLYINGDOCTORTABLEMELODY BLOB,  ZLONGFINLEAVEIMAGEOIL TIMESTAMP,  ZFAMILYVISUALOWNERMATTER BLOB,  ZGOLDYOUNGINITIALNOSE FLOAT,  ZCAUSESALAMITERMCYAN BLOB,  ZSPREADMOTORBISCUITBACON FLOAT,  ZGIFTICEFISHGLUEHAIR INTEGER,  ZNOTICEPEARPOLICYJUICE TIMESTAMP,  ZBANKBUFFALORECOVERORBIT TIMESTAMP,  ZLONGDIETESSAYNATURE FLOAT,  ZACTIONRANGEELEGANTNEUTRON BLOB,  ZCADETBRIGHTPLANETBANK TIMESTAMP,  ZAIRFORGIVEHEADFROG BLOB,  ZSHARKJUSTFRUITMOVIE VARCHAR,  ZFARMERMORNINGMIRRORCONCERN BLOB,  ZWOODPOETRYCOBBLERBENCH VARCHAR,  ZHAFNIUMSCRIPTSALADMOTOR INTEGER,  ZPROBLEMCLUBPOPOVERJELLY FLOAT,  ZEIGHTLEADERWORKERMOST TIMESTAMP,  ZGLASSRESERVEBARIUMMEAL BLOB,  ZCLAMBITARUGULAFAJITA BLOB,  ZDECADEJOYOUSWAVEHABIT FLOAT,  ZCOMPANYSUMMERFIBERELF INTEGER,  ZTREATTESTQUILLCHARGE TIMESTAMP,  ZBROWBALANCEKEYCHOWDER FLOAT,  ZPEACHCOPPERDINNERLAKE FLOAT,  ZDRYWALLBEYONDBROWNBOWL VARCHAR,  ZBELLYCRASHITEMLACK BLOB,  ZTENNISCYCLEBILLOFFICER INTEGER,  ZMALLEQUIPTHANKSGLUE FLOAT,  ZMISSREPLYHUMANLIVING INTEGER,  ZKIWIVISUALPRIDEAPPLE VARCHAR,  ZWISHHITSKINMOTOR BLOB,  ZCALMRACCOONPROGRAMDEBIT VARCHAR,  ZSHINYASSISTLIVINGCRAB VARCHAR,  ZRESOLVEWRISTWRAPAPPLE VARCHAR,  ZAPPEALSIMPLESECONDHOUSING BLOB,  ZCORNERANCHORTAPEDIVER TIMESTAMP,  ZMEMORYREQUESTSOURCEBIG VARCHAR,  ZTRYFACTKEEPMILK TIMESTAMP,  ZDIVERPAINTLEATHEREASY INTEGER,  ZSORTMISTYQUOTECABBAGE BLOB,  ZTUNEGASBUFFALOCAPITAL BLOB,  ZFILLSTOPLAWJOYFUL FLOAT,  ZSTEELCAREFULPLATENUMBER FLOAT,  ZGIVEVIVIDDIVINEMEANING INTEGER,  ZTREATPACKFUTURECONVERT VARCHAR,  ZCALMLYGEMFINISHEFFECT INTEGER,  ZCABBAGESOCKEASEMINUTE BLOB,  ZPLANETFAMILYPUREMEMORY TIMESTAMP,  ZMERRYCRACKTRAINLEADER BLOB,  ZMINORWAYPAPERCLASSY TIMESTAMP,  ZEAGLELINEMINEMAIL VARCHAR,  ZRESORTYARDGREENLET TIMESTAMP,  ZYARDOREGANOVIVIDJEWEL TIMESTAMP,  ZPURECAKEVIVIDNEATLY FLOAT,  ZASKCONTACTMONITORFUN TIMESTAMP,  ZMOVEWHOGAMMAINCH VARCHAR,  ZLETTUCEBIRDMEETDEBATE TIMESTAMP,  ZGENENATURALHEARINGKITE VARCHAR,  ZMUFFINDRYERDRAWFORTUNE FLOAT,  ZGRAYSURVEYWIRELOVE FLOAT,  ZPLIERSPRINTASKOREGANO INTEGER,  ZTRAVELDRIVERCONTESTLILY INTEGER,  ZHUMORSPICESANDKIDNEY TIMESTAMP,  ZARSENICSAMPLEWAITMUON INTEGER,  ZLACEADDRESSGROUNDCAREFUL FLOAT,  ZBAMBOOMESSWASABIEVENING BLOB,  ZONERELEASEAVERAGENURSE INTEGER,  ZRADIANTWHENTRYCARD TIMESTAMP,  ZREWARDINSIDEMANGOINTENSE FLOAT,  ZNEATSTEWPARTIRON TIMESTAMP,  ZOUTSIDEPEAHENCOUNTICE TIMESTAMP,  ZCREAMEVENINGLIPBRANCH FLOAT,  ZWHALEMATHAVOCADOCOPPER FLOAT,  ZLIFEUSELEAFYBELL FLOAT,  ZWEALTHLINENGLEEFULDAY VARCHAR,  ZFACEINVITETALKGOLD BLOB,  ZWESTAMOUNTAFFECTHEARING INTEGER,  ZDELAYOUTCOMEHORNAGENCY INTEGER,  ZBIGTHINKCONVERTECONOMY BLOB,  ZBASEGOUDAREGULARFORGIVE TIMESTAMP,  ZPATTERNCLORINEGRANDCOLBY TIMESTAMP,  ZCYANBASEFEEDADROIT INTEGER,  ZCARRYFLOORMINNOWDRAGON TIMESTAMP,  ZIMAGEPENCILOTHERBOTTOM FLOAT,  ZXENONFLIGHTPALEAPPLE TIMESTAMP,  ZHERRINGJOKEFEATUREHOPEFUL FLOAT,  ZCAPYEARLYRIVETBRUSH FLOAT,  ZAGEREEDFROGBASKET VARCHAR,  ZUSUALBODYHALIBUTDIAMOND VARCHAR,  ZFOOTTAPWORDENTRY VARCHAR,  ZDISHKEEPBLESTMONITOR FLOAT,  ZBROADABLESOLIDCASUAL INTEGER,  ZSQUAREGLEEFULCHILDLIGHT INTEGER,  ZHOLIDAYHEADPONYDETAIL INTEGER,  ZGENERALRESORTSKYOPEN TIMESTAMP,  ZGLADSPRAYKIDNEYGUPPY VARCHAR,  ZSWIMHEAVYMENTIONKIND BLOB,  ZMESSYSULFURDREAMFESTIVE BLOB,  ZSKYSKYCLASSICBRIEF VARCHAR,  ZDILLASKHOKILEMON FLOAT,  ZJUNIORSHOWPRESSNOVA FLOAT,  ZSIZETOEAWARDFRESH TIMESTAMP,  ZKEYFAILAPRICOTMETAL VARCHAR,  ZHANDYREPAIRPROTONAIRPORT VARCHAR,  ZPOSTPROTEINHANDLEACTOR BLOB);\00", align 1
@.str.180 = private unnamed_addr constant [3244 x i8] c"INSERT INTO ZLOOKSLIKECOREDATA(ZPK,ZAIRFORGIVEHEADFROG,ZGIFTICEFISHGLUEHAIR,ZDELAYOUTCOMEHORNAGENCY,ZSLEEPYUSERGRANDBOWL,ZGLASSRESERVEBARIUMMEAL,ZBRIEFGOBYDODGERHEIGHT,ZBAMBOOMESSWASABIEVENING,ZFARMERMORNINGMIRRORCONCERN,ZTREATPACKFUTURECONVERT,ZCAUSESALAMITERMCYAN,ZCALMRACCOONPROGRAMDEBIT,ZHOLIDAYHEADPONYDETAIL,ZWOODPOETRYCOBBLERBENCH,ZHAFNIUMSCRIPTSALADMOTOR,ZUSUALBODYHALIBUTDIAMOND,ZOUTSIDEPEAHENCOUNTICE,ZDIVERPAINTLEATHEREASY,ZWESTAMOUNTAFFECTHEARING,ZSIZETOEAWARDFRESH,ZDEWPEACHCAREERCELERY,ZSTEELCAREFULPLATENUMBER,ZCYANBASEFEEDADROIT,ZCALMLYGEMFINISHEFFECT,ZHANDYREPAIRPROTONAIRPORT,ZGENENATURALHEARINGKITE,ZBROADABLESOLIDCASUAL,ZPOSTPROTEINHANDLEACTOR,ZLACEADDRESSGROUNDCAREFUL,ZIMAGEPENCILOTHERBOTTOM,ZPROBLEMCLUBPOPOVERJELLY,ZPATTERNCLORINEGRANDCOLBY,ZNEATSTEWPARTIRON,ZAPPEALSIMPLESECONDHOUSING,ZMOVEWHOGAMMAINCH,ZTENNISCYCLEBILLOFFICER,ZSHARKJUSTFRUITMOVIE,ZKEYFAILAPRICOTMETAL,ZCOMPANYSUMMERFIBERELF,ZTERMFITTINGHOUSINGCOMMAND,ZRESORTYARDGREENLET,ZCABBAGESOCKEASEMINUTE,ZSQUAREGLEEFULCHILDLIGHT,ZONERELEASEAVERAGENURSE,ZBIGTHINKCONVERTECONOMY,ZPLIERSPRINTASKOREGANO,ZDECADEJOYOUSWAVEHABIT,ZDRYWALLBEYONDBROWNBOWL,ZCLUBRELEASELIZARDADVICE,ZWHALEMATHAVOCADOCOPPER,ZBELLYCRASHITEMLACK,ZLETTUCEBIRDMEETDEBATE,ZCAPABLETRIPDOORALMOND,ZRADIANTWHENTRYCARD,ZCAPYEARLYRIVETBRUSH,ZAGEREEDFROGBASKET,ZSWIMHEAVYMENTIONKIND,ZTRAVELDRIVERCONTESTLILY,ZGLADSPRAYKIDNEYGUPPY,ZBANKBUFFALORECOVERORBIT,ZFINGERDUEPIZZAOPTION,ZCLAMBITARUGULAFAJITA,ZLONGFINLEAVEIMAGEOIL,ZLONGDIETESSAYNATURE,ZJUNIORSHOWPRESSNOVA,ZHOPEFULGATEHOLECHALK,ZDEPOSITPAIRCOLLEGECOMET,ZWEALTHLINENGLEEFULDAY,ZFILLSTOPLAWJOYFUL,ZTUNEGASBUFFALOCAPITAL,ZGRAYSURVEYWIRELOVE,ZCORNERANCHORTAPEDIVER,ZREWARDINSIDEMANGOINTENSE,ZCADETBRIGHTPLANETBANK,ZPLANETFAMILYPUREMEMORY,ZTREATTESTQUILLCHARGE,ZCREAMEVENINGLIPBRANCH,ZSKYSKYCLASSICBRIEF,ZARSENICSAMPLEWAITMUON,ZBROWBALANCEKEYCHOWDER,ZFLYINGDOCTORTABLEMELODY,ZHANGERLITHIUMDINNERMEET,ZNOTICEPEARPOLICYJUICE,ZSHINYASSISTLIVINGCRAB,ZLIFEUSELEAFYBELL,ZFACEINVITETALKGOLD,ZGENERALRESORTSKYOPEN,ZPURECAKEVIVIDNEATLY,ZKIWIVISUALPRIDEAPPLE,ZMESSYSULFURDREAMFESTIVE,ZCHARGECLICKHUMANEHIRE,ZHERRINGJOKEFEATUREHOPEFUL,ZYARDOREGANOVIVIDJEWEL,ZFOOTTAPWORDENTRY,ZWISHHITSKINMOTOR,ZBASEGOUDAREGULARFORGIVE,ZMUFFINDRYERDRAWFORTUNE,ZACTIONRANGEELEGANTNEUTRON,ZTRYFACTKEEPMILK,ZPEACHCOPPERDINNERLAKE,ZFRAMEENTERSIMPLEMOUTH,ZMERRYCRACKTRAINLEADER,ZMEMORYREQUESTSOURCEBIG,ZCARRYFLOORMINNOWDRAGON,ZMINORWAYPAPERCLASSY,ZDILLASKHOKILEMON,ZRESOLVEWRISTWRAPAPPLE,ZASKCONTACTMONITORFUN,ZGIVEVIVIDDIVINEMEANING,ZEIGHTLEADERWORKERMOST,ZMISSREPLYHUMANLIVING,ZXENONFLIGHTPALEAPPLE,ZSORTMISTYQUOTECABBAGE,ZEAGLELINEMINEMAIL,ZFAMILYVISUALOWNERMATTER,ZSPREADMOTORBISCUITBACON,ZDISHKEEPBLESTMONITOR,ZMALLEQUIPTHANKSGLUE,ZGOLDYOUNGINITIALNOSE,ZHUMORSPICESANDKIDNEY)VALUES(?1,?26,?20,?93,?8,?33,?3,?81,?28,?60,?18,?47,?109,?29,?30,?104,?86,?54,?92,?117,?9,?58,?97,?61,?119,?73,?107,?120,?80,?99,?31,?96,?85,?50,?71,?42,?27,?118,?36,?2,?67,?62,?108,?82,?94,?76,?35,?40,?11,?88,?41,?72,?4,?83,?102,?103,?112,?77,?111,?22,?13,?34,?15,?23,?116,?7,?5,?90,?57,?56,?75,?51,?84,?25,?63,?37,?87,?114,?79,?38,?14,?10,?21,?48,?89,?91,?110,?69,?45,?113,?12,?101,?68,?105,?46,?95,?74,?24,?53,?39,?6,?64,?52,?98,?65,?115,?49,?70,?59,?32,?44,?100,?55,?66,?16,?19,?106,?43,?17,?78);\00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"Query %d rows by rowid\00", align 1
@.str.182 = private unnamed_addr constant [2753 x i8] c"SELECT ZCYANBASEFEEDADROIT,ZJUNIORSHOWPRESSNOVA,ZCAUSESALAMITERMCYAN,ZHOPEFULGATEHOLECHALK,ZHUMORSPICESANDKIDNEY,ZSWIMHEAVYMENTIONKIND,ZMOVEWHOGAMMAINCH,ZAPPEALSIMPLESECONDHOUSING,ZHAFNIUMSCRIPTSALADMOTOR,ZNEATSTEWPARTIRON,ZLONGFINLEAVEIMAGEOIL,ZDEWPEACHCAREERCELERY,ZXENONFLIGHTPALEAPPLE,ZCALMRACCOONPROGRAMDEBIT,ZUSUALBODYHALIBUTDIAMOND,ZTRYFACTKEEPMILK,ZWEALTHLINENGLEEFULDAY,ZLONGDIETESSAYNATURE,ZLIFEUSELEAFYBELL,ZTREATPACKFUTURECONVERT,ZMEMORYREQUESTSOURCEBIG,ZYARDOREGANOVIVIDJEWEL,ZDEPOSITPAIRCOLLEGECOMET,ZSLEEPYUSERGRANDBOWL,ZBRIEFGOBYDODGERHEIGHT,ZCLUBRELEASELIZARDADVICE,ZCAPABLETRIPDOORALMOND,ZDRYWALLBEYONDBROWNBOWL,ZASKCONTACTMONITORFUN,ZKIWIVISUALPRIDEAPPLE,ZNOTICEPEARPOLICYJUICE,ZPEACHCOPPERDINNERLAKE,ZSTEELCAREFULPLATENUMBER,ZGLADSPRAYKIDNEYGUPPY,ZCOMPANYSUMMERFIBERELF,ZTENNISCYCLEBILLOFFICER,ZIMAGEPENCILOTHERBOTTOM,ZWESTAMOUNTAFFECTHEARING,ZDIVERPAINTLEATHEREASY,ZSKYSKYCLASSICBRIEF,ZMESSYSULFURDREAMFESTIVE,ZMERRYCRACKTRAINLEADER,ZBROADABLESOLIDCASUAL,ZGLASSRESERVEBARIUMMEAL,ZTUNEGASBUFFALOCAPITAL,ZBANKBUFFALORECOVERORBIT,ZTREATTESTQUILLCHARGE,ZBAMBOOMESSWASABIEVENING,ZREWARDINSIDEMANGOINTENSE,ZEAGLELINEMINEMAIL,ZCALMLYGEMFINISHEFFECT,ZKEYFAILAPRICOTMETAL,ZFINGERDUEPIZZAOPTION,ZCADETBRIGHTPLANETBANK,ZGOLDYOUNGINITIALNOSE,ZMISSREPLYHUMANLIVING,ZEIGHTLEADERWORKERMOST,ZFRAMEENTERSIMPLEMOUTH,ZBIGTHINKCONVERTECONOMY,ZFACEINVITETALKGOLD,ZPOSTPROTEINHANDLEACTOR,ZHERRINGJOKEFEATUREHOPEFUL,ZCABBAGESOCKEASEMINUTE,ZMUFFINDRYERDRAWFORTUNE,ZPROBLEMCLUBPOPOVERJELLY,ZGIVEVIVIDDIVINEMEANING,ZGENENATURALHEARINGKITE,ZGENERALRESORTSKYOPEN,ZLETTUCEBIRDMEETDEBATE,ZBASEGOUDAREGULARFORGIVE,ZCHARGECLICKHUMANEHIRE,ZPLANETFAMILYPUREMEMORY,ZMINORWAYPAPERCLASSY,ZCAPYEARLYRIVETBRUSH,ZSIZETOEAWARDFRESH,ZARSENICSAMPLEWAITMUON,ZSQUAREGLEEFULCHILDLIGHT,ZSHINYASSISTLIVINGCRAB,ZCORNERANCHORTAPEDIVER,ZDECADEJOYOUSWAVEHABIT,ZTRAVELDRIVERCONTESTLILY,ZFLYINGDOCTORTABLEMELODY,ZSHARKJUSTFRUITMOVIE,ZFAMILYVISUALOWNERMATTER,ZFARMERMORNINGMIRRORCONCERN,ZGIFTICEFISHGLUEHAIR,ZOUTSIDEPEAHENCOUNTICE,ZSPREADMOTORBISCUITBACON,ZWISHHITSKINMOTOR,ZHOLIDAYHEADPONYDETAIL,ZWOODPOETRYCOBBLERBENCH,ZAIRFORGIVEHEADFROG,ZBROWBALANCEKEYCHOWDER,ZDISHKEEPBLESTMONITOR,ZCLAMBITARUGULAFAJITA,ZPLIERSPRINTASKOREGANO,ZRADIANTWHENTRYCARD,ZDELAYOUTCOMEHORNAGENCY,ZPURECAKEVIVIDNEATLY,ZPATTERNCLORINEGRANDCOLBY,ZHANDYREPAIRPROTONAIRPORT,ZAGEREEDFROGBASKET,ZSORTMISTYQUOTECABBAGE,ZFOOTTAPWORDENTRY,ZRESOLVEWRISTWRAPAPPLE,ZDILLASKHOKILEMON,ZFILLSTOPLAWJOYFUL,ZACTIONRANGEELEGANTNEUTRON,ZRESORTYARDGREENLET,ZCREAMEVENINGLIPBRANCH,ZWHALEMATHAVOCADOCOPPER,ZGRAYSURVEYWIRELOVE,ZBELLYCRASHITEMLACK,ZHANGERLITHIUMDINNERMEET,ZCARRYFLOORMINNOWDRAGON,ZMALLEQUIPTHANKSGLUE,ZTERMFITTINGHOUSINGCOMMAND,ZONERELEASEAVERAGENURSE,ZLACEADDRESSGROUNDCAREFUL FROM ZLOOKSLIKECOREDATA WHERE ZPK=?1;\00", align 1
@.str.183 = private unnamed_addr constant [328 x i8] c"BEGIN;CREATE TABLE z1(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TABLE z2(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TABLE t3(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE VIEW v1 AS SELECT rowid, i, t FROM z1;CREATE VIEW v2 AS SELECT rowid, i, t FROM z2;CREATE VIEW v3 AS SELECT rowid, i, t FROM t3;\00", align 1
@.str.184 = private unnamed_addr constant [35 x i8] c"INSERT INTO t%d VALUES(NULL,?1,?2)\00", align 1
@.str.185 = private unnamed_addr constant [83 x i8] c"CREATE INDEX i1 ON z1(t);CREATE INDEX i2 ON z2(t);CREATE INDEX i3 ON t3(t);COMMIT;\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"speed4p-join1\00", align 1
@.str.187 = private unnamed_addr constant [67 x i8] c"SELECT * FROM z1, z2, t3 WHERE z1.oid = z2.oid AND z2.oid = t3.oid\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"speed4p-join2\00", align 1
@.str.189 = private unnamed_addr constant [59 x i8] c"SELECT * FROM z1, z2, t3 WHERE z1.t = z2.t AND z2.t = t3.t\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"speed4p-view1\00", align 1
@.str.191 = private unnamed_addr constant [34 x i8] c"SELECT * FROM v%d WHERE rowid = ?\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"speed4p-table1\00", align 1
@.str.193 = private unnamed_addr constant [34 x i8] c"SELECT * FROM t%d WHERE rowid = ?\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"speed4p-subselect1\00", align 1
@.str.195 = private unnamed_addr constant [115 x i8] c"SELECT (SELECT t FROM z1 WHERE rowid = ?1),(SELECT t FROM z2 WHERE rowid = ?1),(SELECT t FROM t3 WHERE rowid = ?1)\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"speed4p-rowid-update\00", align 1
@.str.197 = private unnamed_addr constant [35 x i8] c"UPDATE z1 SET i=i+1 WHERE rowid=?1\00", align 1
@.str.198 = private unnamed_addr constant [48 x i8] c"CREATE TABLE t5(t TEXT PRIMARY KEY, i INTEGER);\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"speed4p-insert-ignore\00", align 1
@.str.200 = private unnamed_addr constant [45 x i8] c"INSERT OR IGNORE INTO t5 SELECT t, i FROM z1\00", align 1
@.str.201 = private unnamed_addr constant [490 x i8] c"CREATE TABLE log(op TEXT, r INTEGER, i INTEGER, t TEXT);CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);CREATE TRIGGER t4_trigger1 AFTER INSERT ON t4 BEGIN  INSERT INTO log VALUES('INSERT INTO t4', new.rowid, new.i, new.t);END;CREATE TRIGGER t4_trigger2 AFTER UPDATE ON t4 BEGIN  INSERT INTO log VALUES('UPDATE OF t4', new.rowid, new.i, new.t);END;CREATE TRIGGER t4_trigger3 AFTER DELETE ON t4 BEGIN  INSERT INTO log VALUES('DELETE OF t4', old.rowid, old.i, old.t);END;BEGIN;\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"speed4p-trigger1\00", align 1
@.str.203 = private unnamed_addr constant [36 x i8] c"INSERT INTO t4 VALUES(NULL, ?1, ?2)\00", align 1
@.str.204 = private unnamed_addr constant [17 x i8] c"speed4p-trigger2\00", align 1
@.str.205 = private unnamed_addr constant [46 x i8] c"UPDATE t4 SET i = ?1, t = ?2 WHERE rowid = ?3\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"speed4p-trigger3\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"DELETE FROM t4 WHERE rowid = ?1\00", align 1
@.str.208 = private unnamed_addr constant [105 x i8] c"DROP TABLE t4;DROP TABLE log;VACUUM;CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);BEGIN;\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger1\00", align 1
@.str.210 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger2\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"speed4p-notrigger3\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"%5d %5d %5d %s\0A\00", align 1
@.str.213 = private unnamed_addr constant [29 x i8] c"table J1 is %d rows of JSONB\00", align 1
@.str.214 = private unnamed_addr constant [960 x i8] c"CREATE TABLE j1(x JSONB);\0AWITH RECURSIVE\0A  jval(n,j) AS (\0A    VALUES(0,'{}'),(1,'[]'),(2,'true'),(3,'false'),(4,'null'),\0A          (5,'{x:1,y:2}'),(6,'0.0'),(7,'3.14159'),(8,'-99.9'),\0A          (9,'[1,2,\22\\n\\u2192\\\22\\u2190\22,4]')\0A  ),\0A  c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<26*26-1),\0A  array1(y) AS MATERIALIZED (\0A    SELECT jsonb_group_array(\0A      jsonb_object('x',x,\0A                  'y',jsonb(coalesce(j,random()%%10000)),\0A                  'z',hex(randomblob(50)))\0A    )\0A    FROM c LEFT JOIN jval ON (x%%20)=n\0A  ),\0A  object1(z) AS MATERIALIZED (\0A    SELECT jsonb_group_object(char(0x61+x%%26,0x61+(x/26)%%26),\0A                      jsonb( coalesce(j,random()%%10000)))\0A      FROM c LEFT JOIN jval ON (x%%20)=n\0A  ),\0A  c2(n) AS (VALUES(1) UNION ALL SELECT n+1 FROM c2 WHERE n<%d)\0AINSERT INTO j1(x)\0A  SELECT jsonb_object('a',n,'b',n+10000,'c',jsonb(y),'d',jsonb(z),\0A                     'e',n+20000,'f',n+30000)\0A    FROM array1, object1, c2;\00", align 1
@.str.215 = private unnamed_addr constant [46 x i8] c"table J2 is %d rows from J1 converted to text\00", align 1
@.str.216 = private unnamed_addr constant [80 x i8] c"CREATE TABLE j2(x JSON TEXT);\0AINSERT INTO j2(x) SELECT json(x) FROM j1 LIMIT %d\00", align 1
@.str.217 = private unnamed_addr constant [41 x i8] c"create indexes on JSON expressions on J1\00", align 1
@.str.218 = private unnamed_addr constant [118 x i8] c"BEGIN;\0ACREATE INDEX j1x1 ON j1(x->>'a');\0ACREATE INDEX j1x2 ON j1(x->>'b');\0ACREATE INDEX j1x3 ON j1(x->>'f');\0ACOMMIT;\0A\00", align 1
@.str.219 = private unnamed_addr constant [41 x i8] c"create indexes on JSON expressions on J2\00", align 1
@.str.220 = private unnamed_addr constant [118 x i8] c"BEGIN;\0ACREATE INDEX j2x1 ON j2(x->>'a');\0ACREATE INDEX j2x2 ON j2(x->>'b');\0ACREATE INDEX j2x3 ON j2(x->>'f');\0ACOMMIT;\0A\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"queries against J1\00", align 1
@.str.222 = private unnamed_addr constant [361 x i8] c"WITH c(n) AS (VALUES(0) UNION ALL SELECT n+1 FROM c WHERE n<7)\0A  SELECT sum(x->>format('$.c[%%d].x',n)) FROM c, j1;\0AWITH c(n) AS (VALUES(1) UNION ALL SELECT n+1 FROM c WHERE n<5)\0A  SELECT sum(x->>format('$.\22c\22[#-%%d].y',n)) FROM c, j1;\0ASELECT sum(x->>'$.d.ez' + x->>'$.d.\22xz\22' + x->>'a' + x->>'$.c[10].y') FROM j1;\0ASELECT x->>'$.d.tz[2]', x->'$.d.tz' FROM j1;\0A\00", align 1
@.str.223 = private unnamed_addr constant [30 x i8] c"queries involving json_type()\00", align 1
@.str.224 = private unnamed_addr constant [182 x i8] c"WITH c(n) AS (VALUES(1) UNION ALL SELECT n+1 FROM c WHERE n<20)\0A  SELECT json_type(x,format('$.c[#-%%d].y',n)), count(*)\0A    FROM c, j1\0A   WHERE j1.rowid=1\0A   GROUP BY 1 ORDER BY 2;\00", align 1
@.str.225 = private unnamed_addr constant [48 x i8] c"json_insert()/set()/remove() on every row of J1\00", align 1
@.str.226 = private unnamed_addr constant [250 x i8] c"BEGIN;\0AUPDATE j1 SET x=jsonb_insert(x,'$.g',(x->>'f')+1,'$.h',3.14159,'$.i','hello',\0A                               '$.j',json('{x:99}'),'$.k','{y:98}');\0AUPDATE j1 SET x=jsonb_set(x,'$.e',(x->>'f')-1);\0AUPDATE j1 SET x=jsonb_remove(x,'$.d');\0ACOMMIT;\0A\00", align 1
@.str.227 = private unnamed_addr constant [48 x i8] c"json_insert()/set()/remove() on every row of J2\00", align 1
@.str.228 = private unnamed_addr constant [151 x i8] c"BEGIN;\0AUPDATE j2 SET x=json_insert(x,'$.g',(x->>'f')+1);\0AUPDATE j2 SET x=json_set(x,'$.e',(x->>'f')-1);\0AUPDATE j2 SET x=json_remove(x,'$.d');\0ACOMMIT;\0A\00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c"SELECT 1, 12, 123, 1234, 12345, 123456\00", align 1
@.str.230 = private unnamed_addr constant [132 x i8] c"SELECT 8227256643844975616, 7932208612563860480, 2010730661871032832, 9138463067404021760, 2557616153664746496, 2557616153664746496\00", align 1
@.str.231 = private unnamed_addr constant [46 x i8] c"SELECT 1.0, 1.2, 1.23, 123.4, 1.2345, 1.23456\00", align 1
@.str.232 = private unnamed_addr constant [138 x i8] c"SELECT 8.227256643844975616, 7.932208612563860480, 2.010730661871032832, 9.138463067404021760, 2.557616153664746496, 2.557616153664746496\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"parsing %d small integers\00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"parsing %d large integers\00", align 1
@.str.235 = private unnamed_addr constant [23 x i8] c"parsing %d small reals\00", align 1
@.str.236 = private unnamed_addr constant [23 x i8] c"parsing %d large reals\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"mix1\00", align 1
@main.zMix1Tests = internal global [62 x i8] c"main,orm/25,cte/20,json,fp/3,parsenumber/25,rtree/10,star,app\00", align 1
@.str.238 = private unnamed_addr constant [35 x i8] c"-- Speedtest1 for SQLite %s %.48s\0A\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"autovacuum\00", align 1
@.str.241 = private unnamed_addr constant [17 x i8] c"big-transactions\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"cachesize\00", align 1
@.str.243 = private unnamed_addr constant [24 x i8] c"missing argument on %s\0A\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"fullfsync\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"checkpoint\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"hard-heap-limit\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"incrvacuum\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"journal\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"lookaside\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"memdb\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"multithread\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"nomemstat\00", align 1
@.str.257 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"nomutex\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"nosync\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"notnull\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"NOT NULL\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"cannot open \22%s\22 for writing\0A\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"pagesize\00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"pcache\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"primarykey\00", align 1
@.str.269 = private unnamed_addr constant [12 x i8] c"PRIMARY KEY\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"reprepare\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"serialized\00", align 1
@.str.273 = private unnamed_addr constant [13 x i8] c"singlethread\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.275 = private unnamed_addr constant [33 x i8] c"unable to open output file \22%s\22\0A\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"sqlonly\00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"shrink-memory\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"soft-heap-limit\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.282 = private unnamed_addr constant [53 x i8] c"argument to --temp should be integer between 0 and 9\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"testset\00", align 1
@.str.284 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"utf16le\00", align 1
@.str.287 = private unnamed_addr constant [8 x i8] c"utf16be\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"vfs\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"stmtscanstatus\00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"without-rowid\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"WITHOUT\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"STRICT\00", align 1
@.str.295 = private unnamed_addr constant [21 x i8] c"WITHOUT ROWID,STRICT\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.298 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@zHelp = internal constant [2897 x i8] c"Usage: %s [--options] DATABASE\0AOptions:\0A  --autovacuum        Enable AUTOVACUUM mode\0A  --big-transactions  Add BEGIN/END around all large tests\0A  --cachesize N       Set PRAGMA cache_size=N. Note: N is pages, not bytes\0A  --checkpoint        Run PRAGMA wal_checkpoint after each test case\0A  --exclusive         Enable locking_mode=EXCLUSIVE\0A  --explain           Like --sqlonly but with added EXPLAIN keywords\0A  --fullfsync         Enable fullfsync=TRUE\0A  --hard-heap-limit N The hard limit on the maximum heap size\0A  --heap SZ MIN       Memory allocator uses SZ bytes & min allocation MIN\0A  --incrvacuum        Enable incremenatal vacuum mode\0A  --journal M         Set the journal_mode to M\0A  --key KEY           Set the encryption key to KEY\0A  --lookaside N SZ    Configure lookaside for N slots of SZ bytes each\0A  --memdb             Use an in-memory database\0A  --mmap SZ           MMAP the first SZ bytes of the database file\0A  --multithread       Set multithreaded mode\0A  --nomemstat         Disable memory statistics\0A  --nomutex           Open db with SQLITE_OPEN_NOMUTEX\0A  --nosync            Set PRAGMA synchronous=OFF\0A  --notnull           Add NOT NULL constraints to table columns\0A  --output FILE       Store SQL output in FILE\0A  --pagesize N        Set the page size to N\0A  --pcache N SZ       Configure N pages of pagecache each of size SZ bytes\0A  --primarykey        Use PRIMARY KEY instead of UNIQUE where appropriate\0A  --repeat N          Repeat each SELECT N times (default: 1)\0A  --reprepare         Reprepare each statement upon every invocation\0A  --reserve N         Reserve N bytes on each database page\0A  --script FILE       Write an SQL script for the test into FILE\0A  --serialized        Set serialized threading mode\0A  --singlethread      Set single-threaded mode - disables all mutexing\0A  --sqlonly           No-op.  Only show the SQL that would have been run.\0A  --shrink-memory     Invoke sqlite3_db_release_memory() frequently.\0A  --size N            Relative test size.  Default=100\0A  --soft-heap-limit N The soft limit on the maximum heap size\0A  --strict            Use STRICT table where appropriate\0A  --stats             Show statistics at the end\0A  --stmtscanstatus    Activate SQLITE_DBCONFIG_STMT_SCANSTATUS\0A  --temp N            N from 0 to 9.  0: no temp table. 9: all temp tables\0A  --testset T         Run test-set T (main, cte, rtree, orm, fp, json,\0A                      star, app, debug).  Can be a comma-separated list\0A                      of values, with /SCALE suffixes or macro \22mix1\22\0A  --trace             Turn on SQL tracing\0A  --threads N         Use up to N threads for sorting\0A  --utf16be           Set text encoding to UTF-16BE\0A  --utf16le           Set text encoding to UTF-16LE\0A  --verify            Run additional verification steps\0A  --vfs NAME          Use the given (preinstalled) VFS\0A  --without-rowid     Use WITHOUT ROWID where appropriate\0A\00", align 1
@.str.299 = private unnamed_addr constant [41 x i8] c"unknown option: %s\0AUse \22%s -?\22 for help\0A\00", align 1
@.str.300 = private unnamed_addr constant [43 x i8] c"surplus argument: %s\0AUse \22%s -?\22 for help\0A\00", align 1
@.str.301 = private unnamed_addr constant [30 x i8] c"cannot allocate %d-byte heap\0A\00", align 1
@.str.302 = private unnamed_addr constant [31 x i8] c"heap configuration failed: %d\0A\00", align 1
@.str.303 = private unnamed_addr constant [34 x i8] c"cannot allocate %lld-byte pcache\0A\00", align 1
@.str.304 = private unnamed_addr constant [33 x i8] c"pcache configuration failed: %d\0A\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@.str.306 = private unnamed_addr constant [31 x i8] c"Cannot open database file: %s\0A\00", align 1
@.str.307 = private unnamed_addr constant [36 x i8] c"lookaside configuration failed: %d\0A\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.309 = private unnamed_addr constant [25 x i8] c"PRAGMA temp_store=memory\00", align 1
@.str.310 = private unnamed_addr constant [20 x i8] c"PRAGMA mmap_size=%d\00", align 1
@.str.311 = private unnamed_addr constant [18 x i8] c"PRAGMA threads=%d\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"PRAGMA key('%s')\00", align 1
@.str.313 = private unnamed_addr constant [19 x i8] c"PRAGMA encoding=%s\00", align 1
@.str.314 = private unnamed_addr constant [24 x i8] c"PRAGMA auto_vacuum=FULL\00", align 1
@.str.315 = private unnamed_addr constant [31 x i8] c"PRAGMA auto_vacuum=INCREMENTAL\00", align 1
@.str.316 = private unnamed_addr constant [20 x i8] c"PRAGMA page_size=%d\00", align 1
@.str.317 = private unnamed_addr constant [21 x i8] c"PRAGMA cache_size=%d\00", align 1
@.str.318 = private unnamed_addr constant [23 x i8] c"PRAGMA synchronous=OFF\00", align 1
@.str.319 = private unnamed_addr constant [20 x i8] c"PRAGMA fullfsync=ON\00", align 1
@.str.320 = private unnamed_addr constant [30 x i8] c"PRAGMA locking_mode=EXCLUSIVE\00", align 1
@.str.321 = private unnamed_addr constant [23 x i8] c"PRAGMA journal_mode=%s\00", align 1
@.str.322 = private unnamed_addr constant [26 x i8] c"PRAGMA hard_heap_limit=%d\00", align 1
@.str.323 = private unnamed_addr constant [26 x i8] c"PRAGMA soft_heap_limit=%d\00", align 1
@.str.324 = private unnamed_addr constant [19 x i8] c".explain\0A.echo on\0A\00", align 1
@.str.325 = private unnamed_addr constant [35 x i8] c"bad modifier on testset name: \22%s\22\00", align 1
@.str.326 = private unnamed_addr constant [27 x i8] c"       Begin testset \22%s\22\0A\00", align 1
@.str.327 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"debug1\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"orm\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"cte\00", align 1
@.str.331 = private unnamed_addr constant [5 x i8] c"star\00", align 1
@.str.332 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.333 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.335 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.336 = private unnamed_addr constant [12 x i8] c"parsenumber\00", align 1
@.str.337 = private unnamed_addr constant [6 x i8] c"rtree\00", align 1
@.str.338 = private unnamed_addr constant [63 x i8] c"compile with -DSQLITE_ENABLE_RTREE to enable the R-Tree tests\0A\00", align 1
@.str.339 = private unnamed_addr constant [69 x i8] c"unknown testset: \22%s\22\0AChoices: cte debug1 fp main orm rtree trigger\0A\00", align 1
@.str.340 = private unnamed_addr constant [19 x i8] c"Reset the database\00", align 1
@.str.341 = private unnamed_addr constant [70 x i8] c"SELECT name FROM main.sqlite_master WHERE sql LIKE 'CREATE %%TABLE%%'\00", align 1
@.str.342 = private unnamed_addr constant [21 x i8] c"DROP TABLE main.\22%w\22\00", align 1
@.str.343 = private unnamed_addr constant [70 x i8] c"SELECT name FROM temp.sqlite_master WHERE sql LIKE 'CREATE %%TABLE%%'\00", align 1
@.str.344 = private unnamed_addr constant [23 x i8] c"PRAGMA compile_options\00", align 1
@.str.345 = private unnamed_addr constant [45 x i8] c"-- Lookaside Slots Used:        %d (max %d)\0A\00", align 1
@.str.346 = private unnamed_addr constant [36 x i8] c"-- Successful lookasides:       %d\0A\00", align 1
@.str.347 = private unnamed_addr constant [36 x i8] c"-- Lookaside size faults:       %d\0A\00", align 1
@.str.348 = private unnamed_addr constant [36 x i8] c"-- Lookaside OOM faults:        %d\0A\00", align 1
@.str.349 = private unnamed_addr constant [42 x i8] c"-- Pager Heap Usage:            %d bytes\0A\00", align 1
@.str.350 = private unnamed_addr constant [36 x i8] c"-- Page cache hits:             %d\0A\00", align 1
@.str.351 = private unnamed_addr constant [36 x i8] c"-- Page cache misses:           %d\0A\00", align 1
@.str.352 = private unnamed_addr constant [36 x i8] c"-- Page cache writes:           %d\0A\00", align 1
@.str.353 = private unnamed_addr constant [42 x i8] c"-- Schema Heap Usage:           %d bytes\0A\00", align 1
@.str.354 = private unnamed_addr constant [42 x i8] c"-- Statement Heap Usage:        %d bytes\0A\00", align 1
@.str.355 = private unnamed_addr constant [45 x i8] c"-- Memory Used (bytes):         %d (max %d)\0A\00", align 1
@.str.356 = private unnamed_addr constant [45 x i8] c"-- Outstanding Allocations:     %d (max %d)\0A\00", align 1
@.str.357 = private unnamed_addr constant [45 x i8] c"-- Pcache Overflow Bytes:       %d (max %d)\0A\00", align 1
@.str.358 = private unnamed_addr constant [42 x i8] c"-- Largest Allocation:          %d bytes\0A\00", align 1
@.str.359 = private unnamed_addr constant [42 x i8] c"-- Largest Pcache Allocation:   %d bytes\0A\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"EXPLAIN \00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"%.*s;\0A\00", align 1
@.str.362 = private unnamed_addr constant [9 x i8] c"CREATE *\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"DROP *\00", align 1
@.str.364 = private unnamed_addr constant [8 x i8] c"ALTER *\00", align 1
@__stderrp = external global ptr, align 8
@.str.365 = private unnamed_addr constant [6 x i8] c" TEMP\00", align 1
@integerValue.aMult = internal constant [9 x %struct.anon] [%struct.anon { ptr @.str.366, i32 1024 }, %struct.anon { ptr @.str.367, i32 1048576 }, %struct.anon { ptr @.str.368, i32 1073741824 }, %struct.anon { ptr @.str.369, i32 1000 }, %struct.anon { ptr @.str.370, i32 1000000 }, %struct.anon { ptr @.str.371, i32 1000000000 }, %struct.anon { ptr @.str.372, i32 1000 }, %struct.anon { ptr @.str.373, i32 1000000 }, %struct.anon { ptr @.str.374, i32 1000000000 }], align 8
@.str.366 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.367 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.369 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.370 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.372 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.373 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.374 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.375 = private unnamed_addr constant [37 x i8] c"parameter too large - max 2147483648\00", align 1
@.str.376 = private unnamed_addr constant [39 x i8] c"Generate a Fossil-like database schema\00", align 1
@.str.377 = private unnamed_addr constant [6549 x i8] c"BEGIN;CREATE TABLE blob(\0A  rid INTEGER PRIMARY KEY,\0A  rcvid INTEGER,\0A  size INTEGER,\0A  uuid TEXT UNIQUE NOT NULL,\0A  content BLOB,\0A  CHECK( length(uuid)>=40 AND rid>0 )\0A);\0ACREATE TABLE delta(\0A  rid INTEGER PRIMARY KEY,\0A  srcid INTEGER NOT NULL REFERENCES blob\0A);\0ACREATE TABLE rcvfrom(\0A  rcvid INTEGER PRIMARY KEY,\0A  uid INTEGER REFERENCES user,\0A  mtime DATETIME,\0A  nonce TEXT UNIQUE,\0A  ipaddr TEXT\0A);\0ACREATE TABLE private(rid INTEGER PRIMARY KEY);\0ACREATE TABLE accesslog(\0A  uname TEXT,\0A  ipaddr TEXT,\0A  success BOOLEAN,\0A  mtime TIMESTAMP\0A);\0ACREATE TABLE user(\0A  uid INTEGER PRIMARY KEY,\0A  login TEXT UNIQUE,\0A  pw TEXT,\0A  cap TEXT,\0A  cookie TEXT,\0A  ipaddr TEXT,\0A  cexpire DATETIME,\0A  info TEXT,\0A  mtime DATE,\0A  photo BLOB\0A, jx TEXT DEFAULT '{}');\0ACREATE TABLE reportfmt(\0A   rn INTEGER PRIMARY KEY,\0A   owner TEXT,\0A   title TEXT UNIQUE,\0A   mtime INTEGER,\0A   cols TEXT,\0A   sqlcode TEXT\0A, jx TEXT DEFAULT '{}');\0ACREATE TABLE config(\0A  name TEXT PRIMARY KEY NOT NULL,\0A  value CLOB, mtime INTEGER,\0A  CHECK( typeof(name)='text' AND length(name)>=1 )\0A) WITHOUT ROWID;\0ACREATE TABLE shun(uuid PRIMARY KEY, mtime INTEGER, scom TEXT)\0A  WITHOUT ROWID;\0ACREATE TABLE concealed(\0A  hash TEXT PRIMARY KEY,\0A  content TEXT\0A, mtime INTEGER) WITHOUT ROWID;\0ACREATE TABLE admin_log(\0A id INTEGER PRIMARY KEY,\0A time INTEGER, -- Seconds since 1970\0A page TEXT,    -- path of page\0A who TEXT,     -- User who made the change\0A  what TEXT     -- What changed\0A);\0ACREATE TABLE unversioned(\0A  name TEXT PRIMARY KEY,\0A  rcvid INTEGER,\0A  mtime DATETIME,\0A  hash TEXT,\0A  sz INTEGER,\0A  encoding INT,\0A  content BLOB\0A) WITHOUT ROWID;\0ACREATE TABLE subscriber(\0A  subscriberId INTEGER PRIMARY KEY,\0A  subscriberCode BLOB DEFAULT (randomblob(32)) UNIQUE,\0A  semail TEXT UNIQUE COLLATE nocase,\0A  suname TEXT,\0A  sverified BOOLEAN DEFAULT true,\0A  sdonotcall BOOLEAN,\0A  sdigest BOOLEAN,\0A  ssub TEXT,\0A  sctime INTDATE,\0A  mtime INTDATE,\0A  smip TEXT\0A, lastContact INT);\0ACREATE TABLE pending_alert(\0A  eventid TEXT PRIMARY KEY,\0A  sentSep BOOLEAN DEFAULT false,\0A  sentDigest BOOLEAN DEFAULT false\0A, sentMod BOOLEAN DEFAULT false) WITHOUT ROWID;\0ACREATE TABLE filename(\0A  fnid INTEGER PRIMARY KEY,\0A  name TEXT UNIQUE\0A) STRICT;\0ACREATE TABLE mlink(\0A  mid INTEGER,\0A  fid INTEGER,\0A  pmid INTEGER,\0A  pid INTEGER,\0A  fnid INTEGER REFERENCES filename,\0A  pfnid INTEGER,\0A  mperm INTEGER,\0A  isaux INT DEFAULT 0\0A) STRICT;\0ACREATE TABLE plink(\0A  pid INTEGER REFERENCES blob,\0A  cid INTEGER REFERENCES blob,\0A  isprim INT,\0A  mtime REAL,\0A  baseid INTEGER REFERENCES blob,\0A  UNIQUE(pid, cid)\0A) STRICT;\0ACREATE TABLE leaf(rid INTEGER PRIMARY KEY);\0ACREATE TABLE event(\0A  type TEXT,\0A  mtime REAL,\0A  objid INTEGER PRIMARY KEY,\0A  tagid INTEGER,\0A  uid INTEGER REFERENCES user,\0A  bgcolor TEXT,\0A  euser TEXT,\0A  user TEXT,\0A  ecomment TEXT,\0A  comment TEXT,\0A  brief TEXT,\0A  omtime REAL\0A) STRICT;\0ACREATE TABLE phantom(\0A  rid INTEGER PRIMARY KEY\0A);\0ACREATE TABLE orphan(\0A  rid INTEGER PRIMARY KEY,\0A  baseline INTEGER\0A) STRICT;\0ACREATE TABLE unclustered(\0A  rid INTEGER PRIMARY KEY\0A);\0ACREATE TABLE unsent(\0A  rid INTEGER PRIMARY KEY\0A);\0ACREATE TABLE tag(\0A  tagid INTEGER PRIMARY KEY,\0A  tagname TEXT UNIQUE\0A) STRICT;\0ACREATE TABLE tagxref(\0A  tagid INTEGER REFERENCES tag,\0A  tagtype INTEGER,\0A  srcid INTEGER REFERENCES blob,\0A  origid INTEGER REFERENCES blob,\0A  value TEXT,\0A  mtime REAL,\0A  rid INTEGER REFERENCES blob,\0A  UNIQUE(rid, tagid)\0A) STRICT;\0ACREATE TABLE backlink(\0A  target TEXT,\0A  srctype INT,\0A  srcid INT,\0A  mtime REAL,\0A  UNIQUE(target, srctype, srcid)\0A) STRICT;\0ACREATE TABLE attachment(\0A  attachid INTEGER PRIMARY KEY,\0A  isLatest INT DEFAULT 0,\0A  mtime REAL,\0A  src TEXT,\0A  target TEXT,\0A  filename TEXT,\0A  comment TEXT,\0A  user TEXT\0A) STRICT;\0ACREATE TABLE cherrypick(\0A  parentid INT,\0A  childid INT,\0A  isExclude INT DEFAULT false,\0A  PRIMARY KEY(parentid, childid)\0A) WITHOUT ROWID, STRICT;\0ACREATE TABLE vcache(\0A  vid INTEGER,         -- check-in ID\0A  fname TEXT,          -- filename\0A  rid INTEGER,         -- artifact ID\0A  PRIMARY KEY(vid,fname)\0A) WITHOUT ROWID;\0ACREATE TABLE synclog(\0A  sfrom TEXT,\0A  sto TEXT,\0A  stime INT NOT NULL,\0A  stype TEXT,\0A  PRIMARY KEY(sfrom,sto)\0A) WITHOUT ROWID;\0ACREATE TABLE chat(\0A  msgid INTEGER PRIMARY KEY AUTOINCREMENT,\0A  mtime JULIANDAY,\0A  lmtime TEXT,\0A  xfrom TEXT,\0A  xmsg  TEXT,\0A  fname TEXT,\0A  fmime TEXT,\0A  mdel INT,\0A  file  BLOB\0A);\0ACREATE TABLE ftsdocs(\0A  rowid INTEGER PRIMARY KEY,\0A  type CHAR(1),\0A  rid INTEGER,\0A  name TEXT,\0A  idxed BOOLEAN,\0A  label TEXT,\0A  url TEXT,\0A  mtime DATE,\0A  bx TEXT,\0A  UNIQUE(type,rid)\0A);\0ACREATE TABLE ticket(\0A  -- Do not change any column that begins with tkt_\0A  tkt_id INTEGER PRIMARY KEY,\0A  tkt_uuid TEXT UNIQUE,\0A  tkt_mtime DATE,\0A  tkt_ctime DATE,\0A  -- Add as many fields as required below this line\0A  type TEXT,\0A  status TEXT,\0A  subsystem TEXT,\0A  priority TEXT,\0A  severity TEXT,\0A  foundin TEXT,\0A  private_contact TEXT,\0A  resolution TEXT,\0A  title TEXT,\0A  comment TEXT\0A);\0ACREATE TABLE ticketchng(\0A  -- Do not change any column that begins with tkt_\0A  tkt_id INTEGER REFERENCES ticket,\0A  tkt_rid INTEGER REFERENCES blob,\0A  tkt_mtime DATE,\0A  tkt_user TEXT,\0A  -- Add as many fields as required below this line\0A  login TEXT,\0A  username TEXT,\0A  mimetype TEXT,\0A  icomment TEXT\0A);\0ACREATE TABLE forumpost(\0A  fpid INTEGER PRIMARY KEY,\0A  froot INT,\0A  fprev INT,\0A  firt INT,\0A  fmtime REAL\0A);\0ACREATE INDEX delta_i1 ON delta(srcid);\0ACREATE INDEX blob_rcvid ON blob(rcvid);\0ACREATE INDEX subscriberUname\0A  ON subscriber(suname) WHERE suname IS NOT NULL;\0ACREATE INDEX mlink_i1 ON mlink(mid);\0ACREATE INDEX mlink_i2 ON mlink(fnid);\0ACREATE INDEX mlink_i3 ON mlink(fid);\0ACREATE INDEX mlink_i4 ON mlink(pid);\0ACREATE INDEX plink_i2 ON plink(cid,pid);\0ACREATE INDEX event_i1 ON event(mtime);\0ACREATE INDEX orphan_baseline ON orphan(baseline);\0ACREATE INDEX tagxref_i1 ON tagxref(tagid, mtime);\0ACREATE INDEX backlink_src ON backlink(srcid, srctype);\0ACREATE INDEX attachment_idx1 ON attachment(target, filename, mtime);\0ACREATE INDEX attachment_idx2 ON attachment(src);\0ACREATE INDEX cherrypick_cid ON cherrypick(childid);\0ACREATE INDEX ftsdocIdxed ON ftsdocs(type,rid,name) WHERE idxed==0;\0ACREATE INDEX ftsdocName ON ftsdocs(name) WHERE type='w';\0ACREATE INDEX ticketchng_idx1 ON ticketchng(tkt_id, tkt_mtime);\0ACREATE INDEX forumthread ON forumpost(froot,fmtime);\0ACREATE VIEW artifact(rid,rcvid,size,atype,srcid,hash,content) AS\0A  SELECT blob.rid,rcvid,size,1,srcid,uuid,content\0A    FROM blob LEFT JOIN delta ON (blob.rid=delta.rid);\0ACREATE VIEW ftscontent AS\0A  SELECT rowid, type, rid, name, idxed, label, url, mtime,\0A         title(type,rid,name) AS 'title', body(type,rid,name) AS 'body'\0A    FROM ftsdocs;\0A\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"ENABLE_FTS5\00", align 1
@.str.379 = private unnamed_addr constant [180 x i8] c"CREATE VIRTUAL TABLE ftsidx\0A  USING fts5(content=\22ftscontent\22, title, body);\0ACREATE VIRTUAL TABLE chatfts1 USING fts5(\0A  xmsg, content=chat, content_rowid=msgid,tokenize=porter);\0A\00", align 1
@.str.380 = private unnamed_addr constant [549 x i8] c"CREATE TABLE ftsidx_data(id INTEGER PRIMARY KEY, block BLOB);\0ACREATE TABLE ftsidx_idx(segid, term, pgno, PRIMARY KEY(segid, term))\0A  WITHOUT ROWID;\0ACREATE TABLE ftsidx_docsize(id INTEGER PRIMARY KEY, sz BLOB);\0ACREATE TABLE ftsidx_config(k PRIMARY KEY, v) WITHOUT ROWID;\0ACREATE TABLE chatfts1_data(id INTEGER PRIMARY KEY, block BLOB);\0ACREATE TABLE chatfts1_idx(segid, term, pgno, PRIMARY KEY(segid, term))\0A  WITHOUT ROWID;\0ACREATE TABLE chatfts1_docsize(id INTEGER PRIMARY KEY, sz BLOB);\0ACREATE TABLE chatfts1_config(k PRIMARY KEY, v) WITHOUT ROWID;\0A\00", align 1
@.str.381 = private unnamed_addr constant [2166 x i8] c"ANALYZE sqlite_schema;\0AINSERT INTO sqlite_stat1(tbl,idx,stat) VALUES\0A  ('ftsidx_config','ftsidx_config','1 1'),\0A  ('ftsidx_idx','ftsidx_idx','4215 401 1'),\0A  ('user','sqlite_autoindex_user_1','25 1'),\0A  ('phantom',NULL,'26'),\0A  ('reportfmt','sqlite_autoindex_reportfmt_1','9 1'),\0A  ('rcvfrom','sqlite_autoindex_rcvfrom_1','18445 401'),\0A  ('private',NULL,'99'),\0A  ('mlink','mlink_i4','116678 401'),\0A  ('mlink','mlink_i3','121212 2'),\0A  ('mlink','mlink_i2','106372 401'),\0A  ('mlink','mlink_i1','99298 5'),\0A  ('ftsidx_data',NULL,'3795'),\0A  ('leaf',NULL,'1559'),\0A  ('delta','delta_i1','66340 1'),\0A  ('unversioned','unversioned','3 1'),\0A  ('pending_alert','pending_alert','3 1'),\0A  ('cherrypick','cherrypick_cid','680 2'),\0A  ('cherrypick','cherrypick','628 1 1'),\0A  ('config','config','128 1'),\0A  ('ftsidx_docsize',NULL,'33848'),\0A  ('event','event_i1','36096 1'),\0A  ('plink','plink_i2','38236 1 1'),\0A  ('plink','sqlite_autoindex_plink_1','38357 1 1'),\0A  ('shun','shun','10 1'),\0A  ('concealed','concealed','110 1'),\0A  ('vcache','vcache','1888 401 1'),\0A  ('ftsdocs','ftsdocName','19 1'),\0A  ('ftsdocs','ftsdocIdxed','168 84 1 1'),\0A  ('ftsdocs','sqlite_autoindex_ftsdocs_1','37312 401 1'),\0A  ('subscriber','subscriberUname','5 1'),\0A  ('subscriber','sqlite_autoindex_subscriber_2','37 1'),\0A  ('subscriber','sqlite_autoindex_subscriber_1','37 1'),\0A  ('tag','sqlite_autoindex_tag_1','2990 1'),\0A  ('filename','sqlite_autoindex_filename_1','3168 1'),\0A  ('chat',NULL,'56124'),\0A  ('tagxref','tagxref_i1','40992 401 2'),\0A  ('tagxref','sqlite_autoindex_tagxref_1','79233 3 1'),\0A  ('attachment','attachment_idx2','11 1'),\0A  ('attachment','attachment_idx1','11 2 2 1'),\0A  ('blob','blob_rcvid','128240 201'),\0A  ('blob','sqlite_autoindex_blob_1','126480 1'),\0A  ('synclog','synclog','12 3 1'),\0A  ('backlink','backlink_src','2160 2 2'),\0A  ('backlink','sqlite_autoindex_backlink_1','2340 2 2 1'),\0A  ('accesslog',NULL,'38'),\0A  ('chatfts1_config','chatfts1_config','1 1'),\0A  ('chatfts1_idx','chatfts1_idx','688 230 1'),\0A  ('ticket','sqlite_autoindex_ticket_1','794 1'),\0A  ('ticketchng','ticketchng_idx1','2089 3 1'),\0A  ('forumpost','forumthread','4 4 1'),\0A  ('unclustered',NULL,'12');\0ACOMMIT;\00", align 1
@.str.382 = private unnamed_addr constant [35 x i8] c"Open and use the database %d times\00", align 1
@.str.383 = private unnamed_addr constant [441 x i8] c"SELECT name FROM pragma_table_list /*scan*/ WHERE schema='repository' AND type IN ('table','virtual') AND name NOT IN ('admin_log', 'blob','delta','rcvfrom','user','alias','config','shun','private','reportfmt','concealed','accesslog','modreq','purgeevent','purgeitem','unversioned','subscriber','pending_alert','chat') AND name NOT GLOB 'sqlite_*' AND name NOT GLOB 'fx_*';SELECT 1 FROM pragma_table_xinfo('ticket') WHERE name = 'mimetype';\00", align 1
@.str.384 = private unnamed_addr constant [203 x i8] c"SELECT name, value, unixepoch()/86400-value, date(value*86400,'unixepoch') FROM config WHERE name in ('email-renew-warning','email-renew-cutoff');SELECT count(*) FROM pending_alert WHERE NOT sentDigest;\00", align 1
@.str.385 = private unnamed_addr constant [328 x i8] c"WITH priors(rid,who) AS (  SELECT firt, coalesce(euser,user)    FROM forumpost LEFT JOIN event ON fpid=objid   WHERE fpid=12345  UNION ALL  SELECT firt, coalesce(euser,user)    FROM priors, forumpost LEFT JOIN event ON fpid=objid   WHERE fpid=rid)SELECT ','||group_concat(DISTINCT 'u'||who)||','||group_concat(rid) FROM priors;\00", align 1
@.str.386 = private unnamed_addr constant [62 x i8] c"CREATE TEMP TABLE IF NOT EXISTS ok(rid INTEGER PRIMARY KEY);\0A\00", align 1
@.str.387 = private unnamed_addr constant [608 x i8] c"WITH RECURSIVE\0A  parent(pid,cid,isCP) AS (\0A    SELECT plink.pid, plink.cid, 0 AS xisCP FROM plink\0A    UNION ALL\0A    SELECT parentid, childid, 1 FROM cherrypick WHERE NOT isExclude\0A  ),\0A  ancestor(rid, mtime, isCP) AS (\0A    SELECT 123, mtime, 0 FROM event WHERE objid=$object\0A    UNION\0A    SELECT parent.pid, event.mtime, parent.isCP\0A      FROM ancestor, parent, event\0A     WHERE parent.cid=ancestor.rid\0A       AND event.objid=parent.pid\0A       AND NOT ancestor.isCP\0A       AND (event.mtime>=$date OR parent.pid=$pid)\0A     ORDER BY mtime DESC LIMIT 10\0A  )\0A  INSERT OR IGNORE INTO ok SELECT rid FROM ancestor;\00", align 1
@.str.388 = private unnamed_addr constant [23 x i8] c"-- Compile option: %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i64 @speedtest1_timestamp() #0 {
entry:
  %t = alloca i64, align 8
  %r = alloca double, align 8
  %0 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @sqlite3_vfs_find(ptr noundef null)
  store ptr %call, ptr @speedtest1_timestamp.clockVfs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_vfs, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %iVersion, align 8
  %cmp1 = icmp sge i32 %2, 2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %xCurrentTimeInt64 = getelementptr inbounds %struct.sqlite3_vfs, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %xCurrentTimeInt64, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %xCurrentTimeInt644 = getelementptr inbounds %struct.sqlite3_vfs, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %xCurrentTimeInt644, align 8
  %7 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %call5 = call i32 %6(ptr noundef %7, ptr noundef %t)
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %xCurrentTime = getelementptr inbounds %struct.sqlite3_vfs, ptr %8, i32 0, i32 16
  %9 = load ptr, ptr %xCurrentTime, align 8
  %10 = load ptr, ptr @speedtest1_timestamp.clockVfs, align 8
  %call6 = call i32 %9(ptr noundef %10, ptr noundef %r)
  %11 = load double, ptr %r, align 8
  %mul = fmul double %11, 8.640000e+07
  %conv = fptosi double %mul to i64
  store i64 %conv, ptr %t, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %12 = load i64, ptr %t, align 8
  ret i64 %12
}

declare ptr @sqlite3_vfs_find(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @speedtest1_random() #0 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 23), align 8
  %shr = lshr i32 %0, 1
  %1 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 23), align 8
  %and = and i32 %1, 1
  %neg = xor i32 %and, -1
  %add = add i32 1, %neg
  %and1 = and i32 %add, -805306367
  %xor = xor i32 %shr, %and1
  store i32 %xor, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 23), align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 24), align 4
  %mul = mul i32 %2, 1103515245
  %add2 = add i32 %mul, 12345
  store i32 %add2, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 24), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 23), align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 24), align 4
  %xor3 = xor i32 %3, %4
  ret i32 %xor3
}

; Function Attrs: nounwind ssp uwtable
define i32 @swizzle(i32 noundef %in, i32 noundef %limit) #0 {
entry:
  %in.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %in, ptr %in.addr, align 4
  store i32 %limit, ptr %limit.addr, align 4
  store i32 0, ptr %out, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %limit.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %out, align 4
  %shl = shl i32 %1, 1
  %2 = load i32, ptr %in.addr, align 4
  %and = and i32 %2, 1
  %or = or i32 %shl, %and
  store i32 %or, ptr %out, align 4
  %3 = load i32, ptr %in.addr, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, ptr %in.addr, align 4
  %4 = load i32, ptr %limit.addr, align 4
  %shr1 = lshr i32 %4, 1
  store i32 %shr1, ptr %limit.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @roundup_allones(i32 noundef %limit) #0 {
entry:
  %limit.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %limit, ptr %limit.addr, align 4
  store i32 1, ptr %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %limit.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %m, align 4
  %shl = shl i32 %2, 1
  %add = add i32 %shl, 1
  store i32 %add, ptr %m, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %m, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @speedtest1_numbername(i32 noundef %n, ptr noundef %zOut, i32 noundef %nOut) #0 {
entry:
  %n.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %nOut.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 %nOut, ptr %nOut.addr, align 4
  store i32 0, ptr %i, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp uge i32 %0, 1000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %div = udiv i32 %1, 1000000000
  %2 = load ptr, ptr %zOut.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %nOut.addr, align 4
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %4, %5
  %call = call i32 @speedtest1_numbername(i32 noundef %div, ptr noundef %add.ptr, i32 noundef %sub)
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, %call
  store i32 %add, ptr %i, align 4
  %7 = load i32, ptr %nOut.addr, align 4
  %8 = load i32, ptr %i, align 4
  %sub1 = sub nsw i32 %7, %8
  %9 = load ptr, ptr %zOut.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idx.ext2 = sext i32 %10 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i64 %idx.ext2
  %call4 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub1, ptr noundef %add.ptr3, ptr noundef @.str.29)
  %11 = load ptr, ptr %zOut.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idx.ext5 = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %11, i64 %idx.ext5
  %call7 = call i64 @strlen(ptr noundef %add.ptr6)
  %conv = trunc i64 %call7 to i32
  %13 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %13, %conv
  store i32 %add8, ptr %i, align 4
  %14 = load i32, ptr %n.addr, align 4
  %rem = urem i32 %14, 1000000000
  store i32 %rem, ptr %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, ptr %n.addr, align 4
  %cmp9 = icmp uge i32 %15, 1000000
  br i1 %cmp9, label %if.then11, label %if.end33

if.then11:                                        ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then11
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %nOut.addr, align 4
  %sub12 = sub nsw i32 %18, 1
  %cmp13 = icmp slt i32 %17, %sub12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %zOut.addr, align 8
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %idxprom
  store i8 32, ptr %arrayidx, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.then11
  %21 = load i32, ptr %n.addr, align 4
  %div17 = udiv i32 %21, 1000000
  %22 = load ptr, ptr %zOut.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %22, i64 %idx.ext18
  %24 = load i32, ptr %nOut.addr, align 4
  %25 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %24, %25
  %call21 = call i32 @speedtest1_numbername(i32 noundef %div17, ptr noundef %add.ptr19, i32 noundef %sub20)
  %26 = load i32, ptr %i, align 4
  %add22 = add nsw i32 %26, %call21
  store i32 %add22, ptr %i, align 4
  %27 = load i32, ptr %nOut.addr, align 4
  %28 = load i32, ptr %i, align 4
  %sub23 = sub nsw i32 %27, %28
  %29 = load ptr, ptr %zOut.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idx.ext24 = sext i32 %30 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %29, i64 %idx.ext24
  %call26 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub23, ptr noundef %add.ptr25, ptr noundef @.str.30)
  %31 = load ptr, ptr %zOut.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idx.ext27 = sext i32 %32 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %31, i64 %idx.ext27
  %call29 = call i64 @strlen(ptr noundef %add.ptr28)
  %conv30 = trunc i64 %call29 to i32
  %33 = load i32, ptr %i, align 4
  %add31 = add nsw i32 %33, %conv30
  store i32 %add31, ptr %i, align 4
  %34 = load i32, ptr %n.addr, align 4
  %rem32 = urem i32 %34, 1000000
  store i32 %rem32, ptr %n.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end16, %if.end
  %35 = load i32, ptr %n.addr, align 4
  %cmp34 = icmp uge i32 %35, 1000
  br i1 %cmp34, label %if.then36, label %if.end63

if.then36:                                        ; preds = %if.end33
  %36 = load i32, ptr %i, align 4
  %tobool37 = icmp ne i32 %36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end46

land.lhs.true38:                                  ; preds = %if.then36
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %nOut.addr, align 4
  %sub39 = sub nsw i32 %38, 1
  %cmp40 = icmp slt i32 %37, %sub39
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %land.lhs.true38
  %39 = load ptr, ptr %zOut.addr, align 8
  %40 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, ptr %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %39, i64 %idxprom44
  store i8 32, ptr %arrayidx45, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %land.lhs.true38, %if.then36
  %41 = load i32, ptr %n.addr, align 4
  %div47 = udiv i32 %41, 1000
  %42 = load ptr, ptr %zOut.addr, align 8
  %43 = load i32, ptr %i, align 4
  %idx.ext48 = sext i32 %43 to i64
  %add.ptr49 = getelementptr inbounds i8, ptr %42, i64 %idx.ext48
  %44 = load i32, ptr %nOut.addr, align 4
  %45 = load i32, ptr %i, align 4
  %sub50 = sub nsw i32 %44, %45
  %call51 = call i32 @speedtest1_numbername(i32 noundef %div47, ptr noundef %add.ptr49, i32 noundef %sub50)
  %46 = load i32, ptr %i, align 4
  %add52 = add nsw i32 %46, %call51
  store i32 %add52, ptr %i, align 4
  %47 = load i32, ptr %nOut.addr, align 4
  %48 = load i32, ptr %i, align 4
  %sub53 = sub nsw i32 %47, %48
  %49 = load ptr, ptr %zOut.addr, align 8
  %50 = load i32, ptr %i, align 4
  %idx.ext54 = sext i32 %50 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %49, i64 %idx.ext54
  %call56 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub53, ptr noundef %add.ptr55, ptr noundef @.str.31)
  %51 = load ptr, ptr %zOut.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idx.ext57 = sext i32 %52 to i64
  %add.ptr58 = getelementptr inbounds i8, ptr %51, i64 %idx.ext57
  %call59 = call i64 @strlen(ptr noundef %add.ptr58)
  %conv60 = trunc i64 %call59 to i32
  %53 = load i32, ptr %i, align 4
  %add61 = add nsw i32 %53, %conv60
  store i32 %add61, ptr %i, align 4
  %54 = load i32, ptr %n.addr, align 4
  %rem62 = urem i32 %54, 1000
  store i32 %rem62, ptr %n.addr, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end46, %if.end33
  %55 = load i32, ptr %n.addr, align 4
  %cmp64 = icmp uge i32 %55, 100
  br i1 %cmp64, label %if.then66, label %if.end90

if.then66:                                        ; preds = %if.end63
  %56 = load i32, ptr %i, align 4
  %tobool67 = icmp ne i32 %56, 0
  br i1 %tobool67, label %land.lhs.true68, label %if.end76

land.lhs.true68:                                  ; preds = %if.then66
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %nOut.addr, align 4
  %sub69 = sub nsw i32 %58, 1
  %cmp70 = icmp slt i32 %57, %sub69
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %land.lhs.true68
  %59 = load ptr, ptr %zOut.addr, align 8
  %60 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %60, 1
  store i32 %inc73, ptr %i, align 4
  %idxprom74 = sext i32 %60 to i64
  %arrayidx75 = getelementptr inbounds i8, ptr %59, i64 %idxprom74
  store i8 32, ptr %arrayidx75, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %land.lhs.true68, %if.then66
  %61 = load i32, ptr %nOut.addr, align 4
  %62 = load i32, ptr %i, align 4
  %sub77 = sub nsw i32 %61, %62
  %63 = load ptr, ptr %zOut.addr, align 8
  %64 = load i32, ptr %i, align 4
  %idx.ext78 = sext i32 %64 to i64
  %add.ptr79 = getelementptr inbounds i8, ptr %63, i64 %idx.ext78
  %65 = load i32, ptr %n.addr, align 4
  %div80 = udiv i32 %65, 100
  %idxprom81 = zext i32 %div80 to i64
  %arrayidx82 = getelementptr inbounds [20 x ptr], ptr @speedtest1_numbername.ones, i64 0, i64 %idxprom81
  %66 = load ptr, ptr %arrayidx82, align 8
  %call83 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub77, ptr noundef %add.ptr79, ptr noundef @.str.32, ptr noundef %66)
  %67 = load ptr, ptr %zOut.addr, align 8
  %68 = load i32, ptr %i, align 4
  %idx.ext84 = sext i32 %68 to i64
  %add.ptr85 = getelementptr inbounds i8, ptr %67, i64 %idx.ext84
  %call86 = call i64 @strlen(ptr noundef %add.ptr85)
  %conv87 = trunc i64 %call86 to i32
  %69 = load i32, ptr %i, align 4
  %add88 = add nsw i32 %69, %conv87
  store i32 %add88, ptr %i, align 4
  %70 = load i32, ptr %n.addr, align 4
  %rem89 = urem i32 %70, 100
  store i32 %rem89, ptr %n.addr, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end76, %if.end63
  %71 = load i32, ptr %n.addr, align 4
  %cmp91 = icmp uge i32 %71, 20
  br i1 %cmp91, label %if.then93, label %if.end117

if.then93:                                        ; preds = %if.end90
  %72 = load i32, ptr %i, align 4
  %tobool94 = icmp ne i32 %72, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end103

land.lhs.true95:                                  ; preds = %if.then93
  %73 = load i32, ptr %i, align 4
  %74 = load i32, ptr %nOut.addr, align 4
  %sub96 = sub nsw i32 %74, 1
  %cmp97 = icmp slt i32 %73, %sub96
  br i1 %cmp97, label %if.then99, label %if.end103

if.then99:                                        ; preds = %land.lhs.true95
  %75 = load ptr, ptr %zOut.addr, align 8
  %76 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %76, 1
  store i32 %inc100, ptr %i, align 4
  %idxprom101 = sext i32 %76 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %75, i64 %idxprom101
  store i8 32, ptr %arrayidx102, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %land.lhs.true95, %if.then93
  %77 = load i32, ptr %nOut.addr, align 4
  %78 = load i32, ptr %i, align 4
  %sub104 = sub nsw i32 %77, %78
  %79 = load ptr, ptr %zOut.addr, align 8
  %80 = load i32, ptr %i, align 4
  %idx.ext105 = sext i32 %80 to i64
  %add.ptr106 = getelementptr inbounds i8, ptr %79, i64 %idx.ext105
  %81 = load i32, ptr %n.addr, align 4
  %div107 = udiv i32 %81, 10
  %idxprom108 = zext i32 %div107 to i64
  %arrayidx109 = getelementptr inbounds [10 x ptr], ptr @speedtest1_numbername.tens, i64 0, i64 %idxprom108
  %82 = load ptr, ptr %arrayidx109, align 8
  %call110 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub104, ptr noundef %add.ptr106, ptr noundef @.str.33, ptr noundef %82)
  %83 = load ptr, ptr %zOut.addr, align 8
  %84 = load i32, ptr %i, align 4
  %idx.ext111 = sext i32 %84 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %83, i64 %idx.ext111
  %call113 = call i64 @strlen(ptr noundef %add.ptr112)
  %conv114 = trunc i64 %call113 to i32
  %85 = load i32, ptr %i, align 4
  %add115 = add nsw i32 %85, %conv114
  store i32 %add115, ptr %i, align 4
  %86 = load i32, ptr %n.addr, align 4
  %rem116 = urem i32 %86, 10
  store i32 %rem116, ptr %n.addr, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end103, %if.end90
  %87 = load i32, ptr %n.addr, align 4
  %cmp118 = icmp ugt i32 %87, 0
  br i1 %cmp118, label %if.then120, label %if.end142

if.then120:                                       ; preds = %if.end117
  %88 = load i32, ptr %i, align 4
  %tobool121 = icmp ne i32 %88, 0
  br i1 %tobool121, label %land.lhs.true122, label %if.end130

land.lhs.true122:                                 ; preds = %if.then120
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %nOut.addr, align 4
  %sub123 = sub nsw i32 %90, 1
  %cmp124 = icmp slt i32 %89, %sub123
  br i1 %cmp124, label %if.then126, label %if.end130

if.then126:                                       ; preds = %land.lhs.true122
  %91 = load ptr, ptr %zOut.addr, align 8
  %92 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %92, 1
  store i32 %inc127, ptr %i, align 4
  %idxprom128 = sext i32 %92 to i64
  %arrayidx129 = getelementptr inbounds i8, ptr %91, i64 %idxprom128
  store i8 32, ptr %arrayidx129, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %land.lhs.true122, %if.then120
  %93 = load i32, ptr %nOut.addr, align 4
  %94 = load i32, ptr %i, align 4
  %sub131 = sub nsw i32 %93, %94
  %95 = load ptr, ptr %zOut.addr, align 8
  %96 = load i32, ptr %i, align 4
  %idx.ext132 = sext i32 %96 to i64
  %add.ptr133 = getelementptr inbounds i8, ptr %95, i64 %idx.ext132
  %97 = load i32, ptr %n.addr, align 4
  %idxprom134 = zext i32 %97 to i64
  %arrayidx135 = getelementptr inbounds [20 x ptr], ptr @speedtest1_numbername.ones, i64 0, i64 %idxprom134
  %98 = load ptr, ptr %arrayidx135, align 8
  %call136 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub131, ptr noundef %add.ptr133, ptr noundef @.str.33, ptr noundef %98)
  %99 = load ptr, ptr %zOut.addr, align 8
  %100 = load i32, ptr %i, align 4
  %idx.ext137 = sext i32 %100 to i64
  %add.ptr138 = getelementptr inbounds i8, ptr %99, i64 %idx.ext137
  %call139 = call i64 @strlen(ptr noundef %add.ptr138)
  %conv140 = trunc i64 %call139 to i32
  %101 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %101, %conv140
  store i32 %add141, ptr %i, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end130, %if.end117
  %102 = load i32, ptr %i, align 4
  %cmp143 = icmp eq i32 %102, 0
  br i1 %cmp143, label %if.then145, label %if.end155

if.then145:                                       ; preds = %if.end142
  %103 = load i32, ptr %nOut.addr, align 4
  %104 = load i32, ptr %i, align 4
  %sub146 = sub nsw i32 %103, %104
  %105 = load ptr, ptr %zOut.addr, align 8
  %106 = load i32, ptr %i, align 4
  %idx.ext147 = sext i32 %106 to i64
  %add.ptr148 = getelementptr inbounds i8, ptr %105, i64 %idx.ext147
  %call149 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub146, ptr noundef %add.ptr148, ptr noundef @.str)
  %107 = load ptr, ptr %zOut.addr, align 8
  %108 = load i32, ptr %i, align 4
  %idx.ext150 = sext i32 %108 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %107, i64 %idx.ext150
  %call152 = call i64 @strlen(ptr noundef %add.ptr151)
  %conv153 = trunc i64 %call152 to i32
  %109 = load i32, ptr %i, align 4
  %add154 = add nsw i32 %109, %conv153
  store i32 %add154, ptr %i, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then145, %if.end142
  %110 = load i32, ptr %i, align 4
  ret i32 %110
}

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_begin_test(i32 noundef %iTestNum, ptr noundef %zTestName, ...) #0 {
entry:
  %iTestNum.addr = alloca i32, align 4
  %zTestName.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %zName = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store i32 %iTestNum, ptr %iTestNum.addr, align 4
  store ptr %zTestName, ptr %zTestName.addr, align 8
  %0 = load ptr, ptr %zTestName.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %n, align 4
  %1 = load i32, ptr %iTestNum.addr, align 4
  store i32 %1, ptr @iTestNumber, align 4
  call void @llvm.va_start(ptr %ap)
  %2 = load ptr, ptr %zTestName.addr, align 8
  %3 = load ptr, ptr %ap, align 8
  %call1 = call ptr @sqlite3_vmprintf(ptr noundef %2, ptr noundef %3)
  store ptr %call1, ptr %zName, align 8
  call void @llvm.va_end(ptr %ap)
  %4 = load ptr, ptr %zName, align 8
  %call2 = call i64 @strlen(ptr noundef %4)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n, align 4
  %5 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %5, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zName, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 60
  store i8 0, ptr %arrayidx, align 1
  store i32 60, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %9 = load i32, ptr @iTestNumber, align 4
  %10 = load i32, ptr %n, align 4
  %11 = load ptr, ptr %zName, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.34, i32 noundef %9, i32 noundef %10, ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %13 = load i32, ptr %iTestNum.addr, align 4
  %14 = load ptr, ptr %zName, align 8
  %15 = load i32, ptr %n, align 4
  %sub = sub nsw i32 60, %15
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, i32 noundef %13, ptr noundef %14, i32 noundef %sub, ptr noundef @zDots)
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %16 = load i32, ptr %iTestNum.addr, align 4
  %17 = load ptr, ptr %zName, align 8
  %18 = load i32, ptr %n, align 4
  %sub11 = sub nsw i32 60, %18
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, i32 noundef %16, ptr noundef %17, i32 noundef %sub11, ptr noundef @zDots)
  %19 = load ptr, ptr @__stdoutp, align 8
  %call13 = call i32 @fflush(ptr noundef %19)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %20 = load ptr, ptr %zName, align 8
  call void @sqlite3_free(ptr noundef %20)
  store i32 0, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %call15 = call i64 @speedtest1_timestamp()
  store i64 %call15, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 4), align 8
  store i32 -1391256309, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 23), align 8
  store i32 1157229256, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 24), align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

declare ptr @sqlite3_vmprintf(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_end_test() #0 {
entry:
  %iElapseTime = alloca i64, align 8
  %call = call i64 @speedtest1_timestamp()
  %0 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 4), align 8
  %sub = sub nsw i64 %call, %0
  store i64 %sub, ptr %iElapseTime, align 8
  %1 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 16), align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.37)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @iTestNumber, align 4
  %cmp = icmp sgt i32 %2, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.speedtest1_end_test, ptr noundef @.str.38, i32 noundef 456, ptr noundef @.str.39) #9
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %cond.end
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %6 = load i32, ptr @iTestNumber, align 4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.40, i32 noundef %6)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %cond.end
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end5
  %8 = load i64, ptr %iElapseTime, align 8
  %9 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 5), align 8
  %add = add nsw i64 %9, %8
  store i64 %add, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 5), align 8
  %10 = load i64, ptr %iElapseTime, align 8
  %div = sdiv i64 %10, 1000
  %conv8 = trunc i64 %div to i32
  %11 = load i64, ptr %iElapseTime, align 8
  %rem = srem i64 %11, 1000
  %conv9 = trunc i64 %rem to i32
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %conv8, i32 noundef %conv9)
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %tobool12 = icmp ne ptr %12, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %13 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call14 = call i32 @sqlite3_finalize(ptr noundef %13)
  store ptr null, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr @iTestNumber, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_exec(ptr noundef %zFormat, ...) #0 {
entry:
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %zErrMsg = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zSql, align 8
  call void @printSql(ptr noundef %3)
  br label %if.end11

if.else:                                          ; preds = %entry
  store ptr null, ptr %zErrMsg, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %6 = load ptr, ptr %zSql, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.46, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %7 = load ptr, ptr @g, align 8
  %8 = load ptr, ptr %zSql, align 8
  %call4 = call i32 @sqlite3_exec(ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef %zErrMsg)
  store i32 %call4, ptr %rc, align 4
  %9 = load ptr, ptr %zErrMsg, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %zErrMsg, align 8
  %11 = load ptr, ptr %zSql, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.47, ptr noundef %10, ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %12 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end7
  %13 = load ptr, ptr @g, align 8
  %call9 = call ptr @sqlite3_errmsg(ptr noundef %13)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.48, ptr noundef %call9)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %14 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %14)
  call void @pc_inline_source_snapshot_public_repos_sqlite_test_speedtest1_0()
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @sqlite3_finalize(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_final() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 5), align 8
  %div = sdiv i64 %1, 1000
  %conv = trunc i64 %div to i32
  %2 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 5), align 8
  %rem = srem i64 %2, 1000
  %conv1 = trunc i64 %rem to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.42, i32 noundef 55, ptr noundef @zDots, i32 noundef %conv, i32 noundef %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 10), align 8
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %4 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, i64 noundef %4)
  call void @HashUpdate(ptr noundef @.str.44, i32 noundef 1)
  call void @HashFinal()
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %5, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 4), i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, i32 noundef %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %tobool8 = icmp ne ptr %9, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %11 = load ptr, ptr @__stdoutp, align 8
  %cmp9 = icmp ne ptr %10, %11
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %call12 = call i32 @fclose(ptr noundef %12)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %for.end
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @HashUpdate(ptr noundef %aData, i32 noundef %nData) #0 {
entry:
  %aData.addr = alloca ptr, align 8
  %nData.addr = alloca i32, align 4
  %t = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %k = alloca i32, align 4
  store ptr %aData, ptr %aData.addr, align 8
  store i32 %nData, ptr %nData.addr, align 4
  %0 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 1), align 1
  store i8 %0, ptr %i, align 1
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 2), align 2
  store i8 %1, ptr %j, align 1
  %2 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %aData.addr, align 8
  %4 = load i32, ptr %nData.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %3, i64 noundef 1, i64 noundef %conv, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %nData.addr, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8, ptr %i, align 1
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %9 to i32
  %10 = load ptr, ptr %aData.addr, align 8
  %11 = load i32, ptr %k, align 4
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 %idxprom3
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %add = add nsw i32 %conv2, %conv5
  %13 = load i8, ptr %j, align 1
  %conv6 = zext i8 %13 to i32
  %add7 = add nsw i32 %conv6, %add
  %conv8 = trunc i32 %add7 to i8
  store i8 %conv8, ptr %j, align 1
  %14 = load i8, ptr %j, align 1
  %idxprom9 = zext i8 %14 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  store i8 %15, ptr %t, align 1
  %16 = load i8, ptr %i, align 1
  %idxprom11 = zext i8 %16 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom11
  %17 = load i8, ptr %arrayidx12, align 1
  %18 = load i8, ptr %j, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom13
  store i8 %17, ptr %arrayidx14, align 1
  %19 = load i8, ptr %t, align 1
  %20 = load i8, ptr %i, align 1
  %idxprom15 = zext i8 %20 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom15
  store i8 %19, ptr %arrayidx16, align 1
  %21 = load i8, ptr %i, align 1
  %inc = add i8 %21, 1
  store i8 %inc, ptr %i, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %k, align 4
  %inc17 = add i32 %22, 1
  store i32 %inc17, ptr %k, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %23 = load i8, ptr %i, align 1
  store i8 %23, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 1), align 1
  %24 = load i8, ptr %j, align 1
  store i8 %24, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 2), align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @HashFinal() #0 {
entry:
  %k = alloca i32, align 4
  %t = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %0 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 1), align 1
  store i8 %0, ptr %i, align 1
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 2), align 2
  store i8 %1, ptr %j, align 1
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, ptr %i, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %i, align 1
  %4 = load i8, ptr %i, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  store i8 %5, ptr %t, align 1
  %6 = load i8, ptr %t, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8, ptr %j, align 1
  %conv1 = zext i8 %7 to i32
  %add = add nsw i32 %conv1, %conv
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, ptr %j, align 1
  %8 = load i8, ptr %j, align 1
  %idxprom3 = zext i8 %8 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = load i8, ptr %i, align 1
  %idxprom5 = zext i8 %10 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom5
  store i8 %9, ptr %arrayidx6, align 1
  %11 = load i8, ptr %t, align 1
  %12 = load i8, ptr %j, align 1
  %idxprom7 = zext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom7
  store i8 %11, ptr %arrayidx8, align 1
  %13 = load i8, ptr %i, align 1
  %idxprom9 = zext i8 %13 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom9
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load i8, ptr %t, align 1
  %conv12 = zext i8 %15 to i32
  %add13 = add nsw i32 %conv12, %conv11
  %conv14 = trunc i32 %add13 to i8
  store i8 %conv14, ptr %t, align 1
  %16 = load i8, ptr %t, align 1
  %idxprom15 = zext i8 %16 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom15
  %17 = load i8, ptr %arrayidx16, align 1
  %18 = load i32, ptr %k, align 4
  %idxprom17 = zext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [32 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 4), i64 0, i64 %idxprom17
  store i8 %17, ptr %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %k, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, ptr %k, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_shrink_memory() #0 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @g, align 8
  %call = call i32 @sqlite3_db_release_memory(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @sqlite3_db_release_memory(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @printSql(ptr noundef %zSql) #0 {
entry:
  %zSql.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %zSql, ptr %zSql.addr, align 8
  %0 = load ptr, ptr %zSql.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %zSql.addr, align 8
  %3 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 59
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %zSql.addr, align 8
  %6 = load i32, ptr %n, align 4
  %sub5 = sub nsw i32 %6, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %call9 = call i32 @isspace(i32 noundef %conv8) #10
  %tobool = icmp ne i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, ptr %n, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 9), align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.360)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %zSql.addr, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.361, i32 noundef %12, ptr noundef %13)
  %14 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 9), align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %zSql.addr, align 8
  %call14 = call i32 @sqlite3_strglob(ptr noundef @.str.362, ptr noundef %15)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load ptr, ptr %zSql.addr, align 8
  %call17 = call i32 @sqlite3_strglob(ptr noundef @.str.363, ptr noundef %16)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %zSql.addr, align 8
  %call21 = call i32 @sqlite3_strglob(ptr noundef @.str.364, ptr noundef %17)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %land.lhs.true
  %18 = load i32, ptr %n, align 4
  %19 = load ptr, ptr %zSql.addr, align 8
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.361, i32 noundef %18, ptr noundef %19)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %lor.lhs.false20, %if.end
  ret void
}

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @fatal_error(ptr noundef %zMsg, ...) #0 {
entry:
  %zMsg.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  store ptr %zMsg, ptr %zMsg.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %zMsg.addr, align 8
  %2 = load ptr, ptr %ap, align 8
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end(ptr %ap)
  call void @exit(i32 noundef 1) #11
  unreachable
}

declare ptr @sqlite3_errmsg(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @speedtest1_once(ptr noundef %zFormat, ...) #0 {
entry:
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %pStmt = alloca ptr, align 8
  %zResult = alloca ptr, align 8
  %rc = alloca i32, align 4
  %z = alloca ptr, align 8
  %z12 = alloca ptr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr null, ptr %zResult, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zSql, align 8
  call void @printSql(ptr noundef %3)
  br label %if.end26

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr @g, align 8
  %5 = load ptr, ptr %zSql, align 8
  %call1 = call i32 @sqlite3_prepare_v2(ptr noundef %4, ptr noundef %5, i32 noundef -1, ptr noundef %pStmt, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr @g, align 8
  %call4 = call ptr @sqlite3_errmsg(ptr noundef %7)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.49, ptr noundef %call4)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool5 = icmp ne ptr %8, null
  br i1 %tobool5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %pStmt, align 8
  %call7 = call ptr @sqlite3_expanded_sql(ptr noundef %9)
  store ptr %call7, ptr %z, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %11 = load ptr, ptr %z, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.50, ptr noundef %11)
  %12 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %13 = load ptr, ptr %pStmt, align 8
  %call10 = call i32 @sqlite3_step(ptr noundef %13)
  %cmp = icmp eq i32 %call10, 100
  br i1 %cmp, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %pStmt, align 8
  %call13 = call ptr @sqlite3_column_text(ptr noundef %14, i32 noundef 0)
  store ptr %call13, ptr %z12, align 8
  %15 = load ptr, ptr %z12, align 8
  %tobool14 = icmp ne ptr %15, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then11
  %16 = load ptr, ptr %z12, align 8
  %call16 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.33, ptr noundef %16)
  store ptr %call16, ptr %zResult, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end9
  %17 = load ptr, ptr %pStmt, align 8
  %call19 = call i32 @sqlite3_reset(ptr noundef %17)
  store i32 %call19, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp20 = icmp ne i32 %18, 0
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %19 = load ptr, ptr %pStmt, align 8
  %call22 = call ptr @sqlite3_sql(ptr noundef %19)
  %20 = load i32, ptr %rc, align 4
  %21 = load ptr, ptr @g, align 8
  %call23 = call ptr @sqlite3_errmsg(ptr noundef %21)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.51, ptr noundef %call22, i32 noundef %20, ptr noundef %call23)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %22 = load ptr, ptr %pStmt, align 8
  %call25 = call i32 @sqlite3_finalize(ptr noundef %22)
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then
  %23 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %23)
  call void @pc_inline_source_snapshot_public_repos_sqlite_test_speedtest1_1()
  %24 = load ptr, ptr %zResult, align 8
  ret ptr %24
}

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare ptr @sqlite3_expanded_sql(ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare i32 @sqlite3_reset(ptr noundef) #1

declare ptr @sqlite3_sql(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_prepare(ptr noundef %zFormat, ...) #0 {
entry:
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %zFormat.addr, align 8
  %1 = load ptr, ptr %ap, align 8
  %call = call ptr @sqlite3_vmprintf(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  call void @llvm.va_end(ptr %ap)
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %zSql, align 8
  call void @printSql(ptr noundef %3)
  br label %if.end9

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call3 = call i32 @sqlite3_finalize(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %6 = load ptr, ptr @g, align 8
  %7 = load ptr, ptr %zSql, align 8
  %call4 = call i32 @sqlite3_prepare_v2(ptr noundef %6, ptr noundef %7, i32 noundef -1, ptr noundef getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), ptr noundef null)
  store i32 %call4, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr @g, align 8
  %call7 = call ptr @sqlite3_errmsg(ptr noundef %9)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.49, ptr noundef %call7)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %10 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %10)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_run() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %rc = alloca i32, align 4
  %z = alloca ptr, align 8
  %z12 = alloca ptr, align 8
  %eType = alloca i32, align 4
  %zPrefix = alloca [2 x i8], align 1
  %nBlob = alloca i32, align 4
  %iBlob = alloca i32, align 4
  %zChar = alloca [2 x i8], align 1
  %aBlob = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %tobool1 = icmp ne ptr %1, null
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.speedtest1_run, ptr noundef @.str.38, i32 noundef 608, ptr noundef @.str.52) #9
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  store i32 0, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %cond.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call = call ptr @sqlite3_expanded_sql(ptr noundef %4)
  store ptr %call, ptr %z, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %6 = load ptr, ptr %z, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.50, ptr noundef %6)
  %7 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %7)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %for.end87, %if.end6
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call7 = call i32 @sqlite3_step(ptr noundef %8)
  %cmp = icmp eq i32 %call7, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call9 = call i32 @sqlite3_column_count(ptr noundef %9)
  store i32 %call9, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc85, %while.body
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %n, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %13 = load i32, ptr %i, align 4
  %call13 = call ptr @sqlite3_column_text(ptr noundef %12, i32 noundef %13)
  store ptr %call13, ptr %z12, align 8
  %14 = load ptr, ptr %z12, align 8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  store ptr @.str.53, ptr %z12, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.body
  %15 = load ptr, ptr %z12, align 8
  %call18 = call i64 @strlen(ptr noundef %15)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, ptr %len, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 10), align 8
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then21, label %if.end64

if.then21:                                        ; preds = %if.end17
  %17 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %18 = load i32, ptr %i, align 4
  %call22 = call i32 @sqlite3_column_type(ptr noundef %17, i32 noundef %18)
  store i32 %call22, ptr %eType, align 4
  %arrayidx = getelementptr inbounds [2 x i8], ptr %zPrefix, i64 0, i64 0
  store i8 10, ptr %arrayidx, align 1
  %19 = load i32, ptr %eType, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [7 x i8], ptr @.str.54, i64 0, i64 %idxprom
  %20 = load i8, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [2 x i8], ptr %zPrefix, i64 0, i64 1
  store i8 %20, ptr %arrayidx24, align 1
  %21 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  %tobool25 = icmp ne i64 %21, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then21
  %arraydecay = getelementptr inbounds [2 x i8], ptr %zPrefix, i64 0, i64 0
  call void @HashUpdate(ptr noundef %arraydecay, i32 noundef 2)
  br label %if.end28

if.else:                                          ; preds = %if.then21
  %arraydecay27 = getelementptr inbounds [2 x i8], ptr %zPrefix, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay27, i64 1
  call void @HashUpdate(ptr noundef %add.ptr, i32 noundef 1)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %22 = load i32, ptr %eType, align 4
  %cmp29 = icmp eq i32 %22, 2
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end28
  %23 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  %add = add i64 %23, 2
  store i64 %add, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  br label %if.end63

if.else32:                                        ; preds = %if.end28
  %24 = load i32, ptr %eType, align 4
  %cmp33 = icmp eq i32 %24, 4
  br i1 %cmp33, label %if.then35, label %if.else58

if.then35:                                        ; preds = %if.else32
  %25 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %26 = load i32, ptr %i, align 4
  %call36 = call i32 @sqlite3_column_bytes(ptr noundef %25, i32 noundef %26)
  store i32 %call36, ptr %nBlob, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %28 = load i32, ptr %i, align 4
  %call37 = call ptr @sqlite3_column_blob(ptr noundef %27, i32 noundef %28)
  store ptr %call37, ptr %aBlob, align 8
  store i32 0, ptr %iBlob, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.then35
  %29 = load i32, ptr %iBlob, align 4
  %30 = load i32, ptr %nBlob, align 4
  %cmp39 = icmp slt i32 %29, %30
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %31 = load ptr, ptr %aBlob, align 8
  %32 = load i32, ptr %iBlob, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %31, i64 %idxprom42
  %33 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %33 to i32
  %shr = ashr i32 %conv44, 4
  %idxprom45 = sext i32 %shr to i64
  %arrayidx46 = getelementptr inbounds [17 x i8], ptr @.str.55, i64 0, i64 %idxprom45
  %34 = load i8, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr inbounds [2 x i8], ptr %zChar, i64 0, i64 0
  store i8 %34, ptr %arrayidx47, align 1
  %35 = load ptr, ptr %aBlob, align 8
  %36 = load i32, ptr %iBlob, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %35, i64 %idxprom48
  %37 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %37 to i32
  %and = and i32 %conv50, 15
  %idxprom51 = sext i32 %and to i64
  %arrayidx52 = getelementptr inbounds [17 x i8], ptr @.str.55, i64 0, i64 %idxprom51
  %38 = load i8, ptr %arrayidx52, align 1
  %arrayidx53 = getelementptr inbounds [2 x i8], ptr %zChar, i64 0, i64 1
  store i8 %38, ptr %arrayidx53, align 1
  %arraydecay54 = getelementptr inbounds [2 x i8], ptr %zChar, i64 0, i64 0
  call void @HashUpdate(ptr noundef %arraydecay54, i32 noundef 2)
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %39 = load i32, ptr %iBlob, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %iBlob, align 4
  br label %for.cond38, !llvm.loop !13

for.end:                                          ; preds = %for.cond38
  %40 = load i32, ptr %nBlob, align 4
  %mul = mul nsw i32 %40, 2
  %add55 = add nsw i32 %mul, 2
  %conv56 = sext i32 %add55 to i64
  %41 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  %add57 = add i64 %41, %conv56
  store i64 %add57, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  br label %if.end62

if.else58:                                        ; preds = %if.else32
  %42 = load ptr, ptr %z12, align 8
  %43 = load i32, ptr %len, align 4
  call void @HashUpdate(ptr noundef %42, i32 noundef %43)
  %44 = load i32, ptr %len, align 4
  %add59 = add nsw i32 %44, 2
  %conv60 = sext i32 %add59 to i64
  %45 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  %add61 = add i64 %45, %conv60
  store i64 %add61, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 25), align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %for.end
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then31
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end17
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %47 = load i32, ptr %len, align 4
  %add65 = add nsw i32 %46, %47
  %conv66 = sext i32 %add65 to i64
  %cmp67 = icmp ult i64 %conv66, 2998
  br i1 %cmp67, label %if.then69, label %if.end84

if.then69:                                        ; preds = %if.end64
  %48 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %cmp70 = icmp sgt i32 %48, 0
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.then69
  %49 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %inc73 = add nsw i32 %49, 1
  store i32 %inc73, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds [3000 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 27), i64 0, i64 %idxprom74
  store i8 32, ptr %arrayidx75, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then69
  %50 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %idx.ext = sext i32 %50 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 27), i64 %idx.ext
  %51 = load ptr, ptr %z12, align 8
  %52 = load i32, ptr %len, align 4
  %add78 = add nsw i32 %52, 1
  %conv79 = sext i32 %add78 to i64
  %53 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %idx.ext80 = sext i32 %53 to i64
  %add.ptr81 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 27), i64 %idx.ext80
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr81, i1 false, i1 true, i1 false)
  %call82 = call ptr @__memcpy_chk(ptr noundef %add.ptr77, ptr noundef %51, i64 noundef %conv79, i64 noundef %54) #12
  %55 = load i32, ptr %len, align 4
  %56 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  %add83 = add nsw i32 %56, %55
  store i32 %add83, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 26), align 8
  br label %if.end84

if.end84:                                         ; preds = %if.end76, %if.end64
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %57 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %57, 1
  store i32 %inc86, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end87:                                        ; preds = %for.cond
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %58 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 7), align 4
  %tobool88 = icmp ne i32 %58, 0
  br i1 %tobool88, label %if.then89, label %if.else99

if.then89:                                        ; preds = %while.end
  %59 = load ptr, ptr @g, align 8
  %60 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call90 = call ptr @sqlite3_sql(ptr noundef %60)
  %call91 = call i32 @sqlite3_prepare_v2(ptr noundef %59, ptr noundef %call90, i32 noundef -1, ptr noundef %pNew, ptr noundef null)
  %61 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call92 = call i32 @sqlite3_finalize(ptr noundef %61)
  store i32 %call92, ptr %rc, align 4
  %62 = load i32, ptr %rc, align 4
  %cmp93 = icmp ne i32 %62, 0
  br i1 %cmp93, label %if.then95, label %if.end98

if.then95:                                        ; preds = %if.then89
  %63 = load ptr, ptr %pNew, align 8
  %call96 = call ptr @sqlite3_sql(ptr noundef %63)
  %64 = load i32, ptr %rc, align 4
  %65 = load ptr, ptr @g, align 8
  %call97 = call ptr @sqlite3_errmsg(ptr noundef %65)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.51, ptr noundef %call96, i32 noundef %64, ptr noundef %call97)
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.then89
  %66 = load ptr, ptr %pNew, align 8
  store ptr %66, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  br label %if.end107

if.else99:                                        ; preds = %while.end
  %67 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call100 = call i32 @sqlite3_reset(ptr noundef %67)
  store i32 %call100, ptr %rc, align 4
  %68 = load i32, ptr %rc, align 4
  %cmp101 = icmp ne i32 %68, 0
  br i1 %cmp101, label %if.then103, label %if.end106

if.then103:                                       ; preds = %if.else99
  %69 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %call104 = call ptr @sqlite3_sql(ptr noundef %69)
  %70 = load i32, ptr %rc, align 4
  %71 = load ptr, ptr @g, align 8
  %call105 = call ptr @sqlite3_errmsg(ptr noundef %71)
  call void (ptr, ...) @fatal_error(ptr noundef @.str.51, ptr noundef %call104, i32 noundef %70, ptr noundef %call105)
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.else99
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end98
  call void @speedtest1_shrink_memory()
  br label %return

return:                                           ; preds = %if.end107, %if.then
  ret void
}

declare i32 @sqlite3_column_count(ptr noundef) #1

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) #1

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define void @testset_main() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca i32, align 4
  %maxb = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %len = alloca i32, align 4
  %zNum = alloca [2000 x i8], align 1
  store i32 0, ptr %x1, align 4
  store i32 0, ptr %x2, align 4
  store i32 0, ptr %len, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %0, 500
  store i32 %mul, ptr %n, align 4
  store i32 %mul, ptr %sz, align 4
  %arrayidx = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 1
  %1 = load i32, ptr %sz, align 4
  %call = call i32 @roundup_allones(i32 noundef %1)
  store i32 %call, ptr %maxb, align 4
  %2 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.56, i32 noundef %2)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call1 = call ptr @isTemp(i32 noundef 9)
  %3 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.58, ptr noundef %call1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.59, i32 noundef %6)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %maxb, align 4
  %call2 = call i32 @swizzle(i32 noundef %9, i32 noundef %10)
  store i32 %call2, ptr %x1, align 4
  %11 = load i32, ptr %x1, align 4
  %arraydecay = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call3 = call i32 @speedtest1_numbername(i32 noundef %11, ptr noundef %arraydecay, i32 noundef 2000)
  %12 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %13 = load i32, ptr %x1, align 4
  %conv = zext i32 %13 to i64
  %call4 = call i32 @sqlite3_bind_int64(ptr noundef %12, i32 noundef 1, i64 noundef %conv)
  %14 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %15 = load i32, ptr %i, align 4
  %call5 = call i32 @sqlite3_bind_int(ptr noundef %14, i32 noundef 2, i32 noundef %15)
  %16 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay6 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call7 = call i32 @sqlite3_bind_text(ptr noundef %16, i32 noundef 3, ptr noundef %arraydecay6, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %18 = load i32, ptr %sz, align 4
  store i32 %18, ptr %n, align 4
  %19 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.61, i32 noundef %19)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call8 = call ptr @isTemp(i32 noundef 5)
  %20 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %23 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.62, ptr noundef %call8, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %25 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.63, i32 noundef %25)
  store i32 1, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %n, align 4
  %cmp10 = icmp sle i32 %26, %27
  br i1 %cmp10, label %for.body12, label %for.end23

for.body12:                                       ; preds = %for.cond9
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %maxb, align 4
  %call13 = call i32 @swizzle(i32 noundef %28, i32 noundef %29)
  store i32 %call13, ptr %x1, align 4
  %30 = load i32, ptr %x1, align 4
  %arraydecay14 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call15 = call i32 @speedtest1_numbername(i32 noundef %30, ptr noundef %arraydecay14, i32 noundef 2000)
  %31 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %32 = load i32, ptr %i, align 4
  %call16 = call i32 @sqlite3_bind_int(ptr noundef %31, i32 noundef 1, i32 noundef %32)
  %33 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %34 = load i32, ptr %x1, align 4
  %conv17 = zext i32 %34 to i64
  %call18 = call i32 @sqlite3_bind_int64(ptr noundef %33, i32 noundef 2, i64 noundef %conv17)
  %35 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay19 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call20 = call i32 @sqlite3_bind_text(ptr noundef %35, i32 noundef 3, ptr noundef %arraydecay19, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc21

for.inc21:                                        ; preds = %for.body12
  %36 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %36, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond9, !llvm.loop !17

for.end23:                                        ; preds = %for.cond9
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %37 = load i32, ptr %sz, align 4
  store i32 %37, ptr %n, align 4
  %38 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 120, ptr noundef @.str.64, i32 noundef %38)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call24 = call ptr @isTemp(i32 noundef 3)
  %39 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %40 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  %41 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %42 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %43 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.65, ptr noundef %call24, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.66, i32 noundef %44)
  store i32 1, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %for.end23
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %n, align 4
  %cmp26 = icmp sle i32 %45, %46
  br i1 %cmp26, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %47 = load i32, ptr %i, align 4
  %48 = load i32, ptr %maxb, align 4
  %call29 = call i32 @swizzle(i32 noundef %47, i32 noundef %48)
  store i32 %call29, ptr %x1, align 4
  %49 = load i32, ptr %x1, align 4
  %arraydecay30 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call31 = call i32 @speedtest1_numbername(i32 noundef %49, ptr noundef %arraydecay30, i32 noundef 2000)
  %50 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %51 = load i32, ptr %i, align 4
  %call32 = call i32 @sqlite3_bind_int(ptr noundef %50, i32 noundef 2, i32 noundef %51)
  %52 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %53 = load i32, ptr %x1, align 4
  %conv33 = zext i32 %53 to i64
  %call34 = call i32 @sqlite3_bind_int64(ptr noundef %52, i32 noundef 1, i64 noundef %conv33)
  %54 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay35 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call36 = call i32 @sqlite3_bind_text(ptr noundef %54, i32 noundef 3, ptr noundef %arraydecay35, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc37

for.inc37:                                        ; preds = %for.body28
  %55 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %55, 1
  store i32 %inc38, ptr %i, align 4
  br label %for.cond25, !llvm.loop !18

for.end39:                                        ; preds = %for.cond25
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  store i32 25, ptr %n, align 4
  %56 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.67, i32 noundef %56)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %57 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.68, i32 noundef %57)
  store i32 1, ptr %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.end39
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %n, align 4
  %cmp41 = icmp sle i32 %58, %59
  br i1 %cmp41, label %for.body43, label %for.end55

for.body43:                                       ; preds = %for.cond40
  %60 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %60, 1
  %61 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem = srem i32 %sub, %61
  %cmp44 = icmp eq i32 %rem, 0
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %for.body43
  %call46 = call i32 @speedtest1_random()
  %62 = load i32, ptr %maxb, align 4
  %rem47 = urem i32 %call46, %62
  store i32 %rem47, ptr %x1, align 4
  %call48 = call i32 @speedtest1_random()
  %rem49 = urem i32 %call48, 10
  %63 = load i32, ptr %sz, align 4
  %div = sdiv i32 %63, 5000
  %add = add i32 %rem49, %div
  %64 = load i32, ptr %x1, align 4
  %add50 = add i32 %add, %64
  store i32 %add50, ptr %x2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body43
  %65 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %66 = load i32, ptr %x1, align 4
  %call51 = call i32 @sqlite3_bind_int(ptr noundef %65, i32 noundef 1, i32 noundef %66)
  %67 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %68 = load i32, ptr %x2, align 4
  %call52 = call i32 @sqlite3_bind_int(ptr noundef %67, i32 noundef 2, i32 noundef %68)
  call void @speedtest1_run()
  br label %for.inc53

for.inc53:                                        ; preds = %if.end
  %69 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %69, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond40, !llvm.loop !19

for.end55:                                        ; preds = %for.cond40
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  store i32 10, ptr %n, align 4
  %70 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 140, ptr noundef @.str.69, i32 noundef %70)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %71 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.70, i32 noundef %71)
  store i32 1, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc78, %for.end55
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %n, align 4
  %cmp57 = icmp sle i32 %72, %73
  br i1 %cmp57, label %for.body59, label %for.end80

for.body59:                                       ; preds = %for.cond56
  %74 = load i32, ptr %i, align 4
  %sub60 = sub nsw i32 %74, 1
  %75 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem61 = srem i32 %sub60, %75
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then64, label %if.end74

if.then64:                                        ; preds = %for.body59
  %call65 = call i32 @speedtest1_random()
  %76 = load i32, ptr %maxb, align 4
  %rem66 = urem i32 %call65, %76
  store i32 %rem66, ptr %x1, align 4
  %arrayidx67 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 37, ptr %arrayidx67, align 1
  %77 = load i32, ptr %i, align 4
  %arraydecay68 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay68, i64 1
  %call69 = call i32 @speedtest1_numbername(i32 noundef %77, ptr noundef %add.ptr, i32 noundef 1998)
  store i32 %call69, ptr %len, align 4
  %78 = load i32, ptr %len, align 4
  %idxprom = sext i32 %78 to i64
  %arrayidx70 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom
  store i8 37, ptr %arrayidx70, align 1
  %79 = load i32, ptr %len, align 4
  %add71 = add nsw i32 %79, 1
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom72
  store i8 0, ptr %arrayidx73, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then64, %for.body59
  %80 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay75 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %81 = load i32, ptr %len, align 4
  %add76 = add nsw i32 %81, 1
  %call77 = call i32 @sqlite3_bind_text(ptr noundef %80, i32 noundef 1, ptr noundef %arraydecay75, i32 noundef %add76, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc78

for.inc78:                                        ; preds = %if.end74
  %82 = load i32, ptr %i, align 4
  %inc79 = add nsw i32 %82, 1
  store i32 %inc79, ptr %i, align 4
  br label %for.cond56, !llvm.loop !20

for.end80:                                        ; preds = %for.cond56
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  store i32 10, ptr %n, align 4
  %83 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 142, ptr noundef @.str.71, i32 noundef %83)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %84 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.72, i32 noundef %84)
  store i32 1, ptr %i, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc105, %for.end80
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %n, align 4
  %cmp82 = icmp sle i32 %85, %86
  br i1 %cmp82, label %for.body84, label %for.end107

for.body84:                                       ; preds = %for.cond81
  %87 = load i32, ptr %i, align 4
  %sub85 = sub nsw i32 %87, 1
  %88 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem86 = srem i32 %sub85, %88
  %cmp87 = icmp eq i32 %rem86, 0
  br i1 %cmp87, label %if.then89, label %if.end101

if.then89:                                        ; preds = %for.body84
  %call90 = call i32 @speedtest1_random()
  %89 = load i32, ptr %maxb, align 4
  %rem91 = urem i32 %call90, %89
  store i32 %rem91, ptr %x1, align 4
  %arrayidx92 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 37, ptr %arrayidx92, align 1
  %90 = load i32, ptr %i, align 4
  %arraydecay93 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %add.ptr94 = getelementptr inbounds i8, ptr %arraydecay93, i64 1
  %call95 = call i32 @speedtest1_numbername(i32 noundef %90, ptr noundef %add.ptr94, i32 noundef 1998)
  store i32 %call95, ptr %len, align 4
  %91 = load i32, ptr %len, align 4
  %idxprom96 = sext i32 %91 to i64
  %arrayidx97 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom96
  store i8 37, ptr %arrayidx97, align 1
  %92 = load i32, ptr %len, align 4
  %add98 = add nsw i32 %92, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom99
  store i8 0, ptr %arrayidx100, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then89, %for.body84
  %93 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay102 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %94 = load i32, ptr %len, align 4
  %add103 = add nsw i32 %94, 1
  %call104 = call i32 @sqlite3_bind_text(ptr noundef %93, i32 noundef 1, ptr noundef %arraydecay102, i32 noundef %add103, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc105

for.inc105:                                       ; preds = %if.end101
  %95 = load i32, ptr %i, align 4
  %inc106 = add nsw i32 %95, 1
  store i32 %inc106, ptr %i, align 4
  br label %for.cond81, !llvm.loop !21

for.end107:                                       ; preds = %for.cond81
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  store i32 10, ptr %n, align 4
  %96 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 145, ptr noundef @.str.73, i32 noundef %96)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %97 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.74, i32 noundef %97)
  store i32 1, ptr %i, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc132, %for.end107
  %98 = load i32, ptr %i, align 4
  %99 = load i32, ptr %n, align 4
  %cmp109 = icmp sle i32 %98, %99
  br i1 %cmp109, label %for.body111, label %for.end134

for.body111:                                      ; preds = %for.cond108
  %100 = load i32, ptr %i, align 4
  %sub112 = sub nsw i32 %100, 1
  %101 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem113 = srem i32 %sub112, %101
  %cmp114 = icmp eq i32 %rem113, 0
  br i1 %cmp114, label %if.then116, label %if.end128

if.then116:                                       ; preds = %for.body111
  %call117 = call i32 @speedtest1_random()
  %102 = load i32, ptr %maxb, align 4
  %rem118 = urem i32 %call117, %102
  store i32 %rem118, ptr %x1, align 4
  %arrayidx119 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 37, ptr %arrayidx119, align 1
  %103 = load i32, ptr %i, align 4
  %arraydecay120 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %add.ptr121 = getelementptr inbounds i8, ptr %arraydecay120, i64 1
  %call122 = call i32 @speedtest1_numbername(i32 noundef %103, ptr noundef %add.ptr121, i32 noundef 1998)
  store i32 %call122, ptr %len, align 4
  %104 = load i32, ptr %len, align 4
  %idxprom123 = sext i32 %104 to i64
  %arrayidx124 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom123
  store i8 37, ptr %arrayidx124, align 1
  %105 = load i32, ptr %len, align 4
  %add125 = add nsw i32 %105, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 %idxprom126
  store i8 0, ptr %arrayidx127, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then116, %for.body111
  %106 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay129 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %107 = load i32, ptr %len, align 4
  %add130 = add nsw i32 %107, 1
  %call131 = call i32 @sqlite3_bind_text(ptr noundef %106, i32 noundef 1, ptr noundef %arraydecay129, i32 noundef %add130, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc132

for.inc132:                                       ; preds = %if.end128
  %108 = load i32, ptr %i, align 4
  %inc133 = add nsw i32 %108, 1
  store i32 %inc133, ptr %i, align 4
  br label %for.cond108, !llvm.loop !22

for.end134:                                       ; preds = %for.cond108
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 150, ptr noundef @.str.75)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.76)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.77)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.78)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.79)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.80)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.81)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.82)
  call void @speedtest1_end_test()
  %109 = load i32, ptr %sz, align 4
  %div135 = sdiv i32 %109, 5
  store i32 %div135, ptr %n, align 4
  %110 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 160, ptr noundef @.str.83, i32 noundef %110)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %111 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.84, i32 noundef %111)
  store i32 1, ptr %i, align 4
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc155, %for.end134
  %112 = load i32, ptr %i, align 4
  %113 = load i32, ptr %n, align 4
  %cmp137 = icmp sle i32 %112, %113
  br i1 %cmp137, label %for.body139, label %for.end157

for.body139:                                      ; preds = %for.cond136
  %114 = load i32, ptr %i, align 4
  %sub140 = sub nsw i32 %114, 1
  %115 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem141 = srem i32 %sub140, %115
  %cmp142 = icmp eq i32 %rem141, 0
  br i1 %cmp142, label %if.then144, label %if.end152

if.then144:                                       ; preds = %for.body139
  %call145 = call i32 @speedtest1_random()
  %116 = load i32, ptr %maxb, align 4
  %rem146 = urem i32 %call145, %116
  store i32 %rem146, ptr %x1, align 4
  %call147 = call i32 @speedtest1_random()
  %rem148 = urem i32 %call147, 10
  %117 = load i32, ptr %sz, align 4
  %div149 = sdiv i32 %117, 5000
  %add150 = add i32 %rem148, %div149
  %118 = load i32, ptr %x1, align 4
  %add151 = add i32 %add150, %118
  store i32 %add151, ptr %x2, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then144, %for.body139
  %119 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %120 = load i32, ptr %x1, align 4
  %call153 = call i32 @sqlite3_bind_int(ptr noundef %119, i32 noundef 1, i32 noundef %120)
  %121 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %122 = load i32, ptr %x2, align 4
  %call154 = call i32 @sqlite3_bind_int(ptr noundef %121, i32 noundef 2, i32 noundef %122)
  call void @speedtest1_run()
  br label %for.inc155

for.inc155:                                       ; preds = %if.end152
  %123 = load i32, ptr %i, align 4
  %inc156 = add nsw i32 %123, 1
  store i32 %inc156, ptr %i, align 4
  br label %for.cond136, !llvm.loop !23

for.end157:                                       ; preds = %for.cond136
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %124 = load i32, ptr %sz, align 4
  %div158 = sdiv i32 %124, 5
  store i32 %div158, ptr %n, align 4
  %125 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 161, ptr noundef @.str.85, i32 noundef %125)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %126 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.86, i32 noundef %126)
  store i32 1, ptr %i, align 4
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc178, %for.end157
  %127 = load i32, ptr %i, align 4
  %128 = load i32, ptr %n, align 4
  %cmp160 = icmp sle i32 %127, %128
  br i1 %cmp160, label %for.body162, label %for.end180

for.body162:                                      ; preds = %for.cond159
  %129 = load i32, ptr %i, align 4
  %sub163 = sub nsw i32 %129, 1
  %130 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem164 = srem i32 %sub163, %130
  %cmp165 = icmp eq i32 %rem164, 0
  br i1 %cmp165, label %if.then167, label %if.end175

if.then167:                                       ; preds = %for.body162
  %call168 = call i32 @speedtest1_random()
  %131 = load i32, ptr %maxb, align 4
  %rem169 = urem i32 %call168, %131
  store i32 %rem169, ptr %x1, align 4
  %call170 = call i32 @speedtest1_random()
  %rem171 = urem i32 %call170, 10
  %132 = load i32, ptr %sz, align 4
  %div172 = sdiv i32 %132, 5000
  %add173 = add i32 %rem171, %div172
  %133 = load i32, ptr %x1, align 4
  %add174 = add i32 %add173, %133
  store i32 %add174, ptr %x2, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then167, %for.body162
  %134 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %135 = load i32, ptr %x1, align 4
  %call176 = call i32 @sqlite3_bind_int(ptr noundef %134, i32 noundef 1, i32 noundef %135)
  %136 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %137 = load i32, ptr %x2, align 4
  %call177 = call i32 @sqlite3_bind_int(ptr noundef %136, i32 noundef 2, i32 noundef %137)
  call void @speedtest1_run()
  br label %for.inc178

for.inc178:                                       ; preds = %if.end175
  %138 = load i32, ptr %i, align 4
  %inc179 = add nsw i32 %138, 1
  store i32 %inc179, ptr %i, align 4
  br label %for.cond159, !llvm.loop !24

for.end180:                                       ; preds = %for.cond159
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %139 = load i32, ptr %sz, align 4
  %div181 = sdiv i32 %139, 5
  store i32 %div181, ptr %n, align 4
  %140 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 170, ptr noundef @.str.87, i32 noundef %140)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %141 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.88, i32 noundef %141)
  store i32 1, ptr %i, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc197, %for.end180
  %142 = load i32, ptr %i, align 4
  %143 = load i32, ptr %n, align 4
  %cmp183 = icmp sle i32 %142, %143
  br i1 %cmp183, label %for.body185, label %for.end199

for.body185:                                      ; preds = %for.cond182
  %144 = load i32, ptr %i, align 4
  %sub186 = sub nsw i32 %144, 1
  %145 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  %rem187 = srem i32 %sub186, %145
  %cmp188 = icmp eq i32 %rem187, 0
  br i1 %cmp188, label %if.then190, label %if.end194

if.then190:                                       ; preds = %for.body185
  %146 = load i32, ptr %i, align 4
  %147 = load i32, ptr %maxb, align 4
  %call191 = call i32 @swizzle(i32 noundef %146, i32 noundef %147)
  store i32 %call191, ptr %x1, align 4
  %148 = load i32, ptr %x1, align 4
  %arraydecay192 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call193 = call i32 @speedtest1_numbername(i32 noundef %148, ptr noundef %arraydecay192, i32 noundef 1999)
  store i32 %call193, ptr %len, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %for.body185
  %149 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay195 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %150 = load i32, ptr %len, align 4
  %call196 = call i32 @sqlite3_bind_text(ptr noundef %149, i32 noundef 1, ptr noundef %arraydecay195, i32 noundef %150, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc197

for.inc197:                                       ; preds = %if.end194
  %151 = load i32, ptr %i, align 4
  %inc198 = add nsw i32 %151, 1
  store i32 %inc198, ptr %i, align 4
  br label %for.cond182, !llvm.loop !25

for.end199:                                       ; preds = %for.cond182
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %152 = load i32, ptr %sz, align 4
  store i32 %152, ptr %n, align 4
  %153 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 180, ptr noundef @.str.89, i32 noundef %153)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call200 = call ptr @isTemp(i32 noundef 1)
  %154 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %155 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  %156 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %157 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %158 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.90, ptr noundef %call200, ptr noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.91)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.92)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.93)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %159 = load i32, ptr %sz, align 4
  store i32 %159, ptr %n, align 4
  %160 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 190, ptr noundef @.str.94, i32 noundef %160)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.95)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.96)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 200, ptr noundef @.str.97)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.97)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 210, ptr noundef @.str.98)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.99)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.100)
  call void @speedtest1_end_test()
  %161 = load i32, ptr %sz, align 4
  %div201 = sdiv i32 %161, 5
  store i32 %div201, ptr %n, align 4
  %162 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 230, ptr noundef @.str.101, i32 noundef %162)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %163 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.102, i32 noundef %163)
  store i32 1, ptr %i, align 4
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc215, %for.end199
  %164 = load i32, ptr %i, align 4
  %165 = load i32, ptr %n, align 4
  %cmp203 = icmp sle i32 %164, %165
  br i1 %cmp203, label %for.body205, label %for.end217

for.body205:                                      ; preds = %for.cond202
  %call206 = call i32 @speedtest1_random()
  %166 = load i32, ptr %maxb, align 4
  %rem207 = urem i32 %call206, %166
  store i32 %rem207, ptr %x1, align 4
  %call208 = call i32 @speedtest1_random()
  %rem209 = urem i32 %call208, 10
  %167 = load i32, ptr %sz, align 4
  %div210 = sdiv i32 %167, 5000
  %add211 = add i32 %rem209, %div210
  %168 = load i32, ptr %x1, align 4
  %add212 = add i32 %add211, %168
  store i32 %add212, ptr %x2, align 4
  %169 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %170 = load i32, ptr %x1, align 4
  %call213 = call i32 @sqlite3_bind_int(ptr noundef %169, i32 noundef 1, i32 noundef %170)
  %171 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %172 = load i32, ptr %x2, align 4
  %call214 = call i32 @sqlite3_bind_int(ptr noundef %171, i32 noundef 2, i32 noundef %172)
  call void @speedtest1_run()
  br label %for.inc215

for.inc215:                                       ; preds = %for.body205
  %173 = load i32, ptr %i, align 4
  %inc216 = add nsw i32 %173, 1
  store i32 %inc216, ptr %i, align 4
  br label %for.cond202, !llvm.loop !26

for.end217:                                       ; preds = %for.cond202
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %174 = load i32, ptr %sz, align 4
  store i32 %174, ptr %n, align 4
  %175 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 240, ptr noundef @.str.103, i32 noundef %175)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %176 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.104, i32 noundef %176)
  store i32 1, ptr %i, align 4
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc226, %for.end217
  %177 = load i32, ptr %i, align 4
  %178 = load i32, ptr %n, align 4
  %cmp219 = icmp sle i32 %177, %178
  br i1 %cmp219, label %for.body221, label %for.end228

for.body221:                                      ; preds = %for.cond218
  %call222 = call i32 @speedtest1_random()
  %179 = load i32, ptr %sz, align 4
  %rem223 = urem i32 %call222, %179
  %add224 = add i32 %rem223, 1
  store i32 %add224, ptr %x1, align 4
  %180 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %181 = load i32, ptr %x1, align 4
  %call225 = call i32 @sqlite3_bind_int(ptr noundef %180, i32 noundef 1, i32 noundef %181)
  call void @speedtest1_run()
  br label %for.inc226

for.inc226:                                       ; preds = %for.body221
  %182 = load i32, ptr %i, align 4
  %inc227 = add nsw i32 %182, 1
  store i32 %inc227, ptr %i, align 4
  br label %for.cond218, !llvm.loop !27

for.end228:                                       ; preds = %for.cond218
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %183 = load i32, ptr %sz, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 250, ptr noundef @.str.105, i32 noundef %183)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.106)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 260, ptr noundef @.str.107)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.100)
  call void @speedtest1_end_test()
  %184 = load i32, ptr %sz, align 4
  %div229 = sdiv i32 %184, 5
  store i32 %div229, ptr %n, align 4
  %185 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 270, ptr noundef @.str.108, i32 noundef %185)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %186 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.109, i32 noundef %186)
  store i32 1, ptr %i, align 4
  br label %for.cond230

for.cond230:                                      ; preds = %for.inc244, %for.end228
  %187 = load i32, ptr %i, align 4
  %188 = load i32, ptr %n, align 4
  %cmp231 = icmp sle i32 %187, %188
  br i1 %cmp231, label %for.body233, label %for.end246

for.body233:                                      ; preds = %for.cond230
  %call234 = call i32 @speedtest1_random()
  %189 = load i32, ptr %maxb, align 4
  %rem235 = urem i32 %call234, %189
  %add236 = add i32 %rem235, 1
  store i32 %add236, ptr %x1, align 4
  %call237 = call i32 @speedtest1_random()
  %rem238 = urem i32 %call237, 10
  %190 = load i32, ptr %sz, align 4
  %div239 = sdiv i32 %190, 5000
  %add240 = add i32 %rem238, %div239
  %191 = load i32, ptr %x1, align 4
  %add241 = add i32 %add240, %191
  store i32 %add241, ptr %x2, align 4
  %192 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %193 = load i32, ptr %x1, align 4
  %call242 = call i32 @sqlite3_bind_int(ptr noundef %192, i32 noundef 1, i32 noundef %193)
  %194 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %195 = load i32, ptr %x2, align 4
  %call243 = call i32 @sqlite3_bind_int(ptr noundef %194, i32 noundef 2, i32 noundef %195)
  call void @speedtest1_run()
  br label %for.inc244

for.inc244:                                       ; preds = %for.body233
  %196 = load i32, ptr %i, align 4
  %inc245 = add nsw i32 %196, 1
  store i32 %inc245, ptr %i, align 4
  br label %for.cond230, !llvm.loop !28

for.end246:                                       ; preds = %for.cond230
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %197 = load i32, ptr %sz, align 4
  store i32 %197, ptr %n, align 4
  %198 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 280, ptr noundef @.str.110, i32 noundef %198)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %199 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.111, i32 noundef %199)
  store i32 1, ptr %i, align 4
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc255, %for.end246
  %200 = load i32, ptr %i, align 4
  %201 = load i32, ptr %n, align 4
  %cmp248 = icmp sle i32 %200, %201
  br i1 %cmp248, label %for.body250, label %for.end257

for.body250:                                      ; preds = %for.cond247
  %call251 = call i32 @speedtest1_random()
  %202 = load i32, ptr %sz, align 4
  %rem252 = urem i32 %call251, %202
  %add253 = add i32 %rem252, 1
  store i32 %add253, ptr %x1, align 4
  %203 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %204 = load i32, ptr %x1, align 4
  %call254 = call i32 @sqlite3_bind_int(ptr noundef %203, i32 noundef 1, i32 noundef %204)
  call void @speedtest1_run()
  br label %for.inc255

for.inc255:                                       ; preds = %for.body250
  %205 = load i32, ptr %i, align 4
  %inc256 = add nsw i32 %205, 1
  store i32 %inc256, ptr %i, align 4
  br label %for.cond247, !llvm.loop !29

for.end257:                                       ; preds = %for.cond247
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %206 = load i32, ptr %sz, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 290, ptr noundef @.str.112, i32 noundef %206)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.113)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.114)
  call void @speedtest1_end_test()
  %207 = load i32, ptr %sz, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 300, ptr noundef @.str.115, i32 noundef %207)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.95)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.116)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.117)
  call void @speedtest1_end_test()
  %208 = load i32, ptr %sz, align 4
  %div258 = sdiv i32 %208, 5
  store i32 %div258, ptr %n, align 4
  %209 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 310, ptr noundef @.str.118, i32 noundef %209)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.119)
  store i32 1, ptr %i, align 4
  br label %for.cond259

for.cond259:                                      ; preds = %for.inc272, %for.end257
  %210 = load i32, ptr %i, align 4
  %211 = load i32, ptr %n, align 4
  %cmp260 = icmp sle i32 %210, %211
  br i1 %cmp260, label %for.body262, label %for.end274

for.body262:                                      ; preds = %for.cond259
  %call263 = call i32 @speedtest1_random()
  %212 = load i32, ptr %sz, align 4
  %rem264 = urem i32 %call263, %212
  %add265 = add i32 %rem264, 1
  store i32 %add265, ptr %x1, align 4
  %call266 = call i32 @speedtest1_random()
  %rem267 = urem i32 %call266, 10
  %213 = load i32, ptr %x1, align 4
  %add268 = add i32 %rem267, %213
  %add269 = add i32 %add268, 4
  store i32 %add269, ptr %x2, align 4
  %214 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %215 = load i32, ptr %x1, align 4
  %call270 = call i32 @sqlite3_bind_int(ptr noundef %214, i32 noundef 1, i32 noundef %215)
  %216 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %217 = load i32, ptr %x2, align 4
  %call271 = call i32 @sqlite3_bind_int(ptr noundef %216, i32 noundef 2, i32 noundef %217)
  call void @speedtest1_run()
  br label %for.inc272

for.inc272:                                       ; preds = %for.body262
  %218 = load i32, ptr %i, align 4
  %inc273 = add nsw i32 %218, 1
  store i32 %inc273, ptr %i, align 4
  br label %for.cond259, !llvm.loop !30

for.end274:                                       ; preds = %for.cond259
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %219 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 320, ptr noundef @.str.120, i32 noundef %219)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.121)
  %220 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %221 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %call275 = call i32 @est_square_root(i32 noundef %221)
  %mul276 = mul nsw i32 %call275, 50
  %call277 = call i32 @sqlite3_bind_int(ptr noundef %220, i32 noundef 1, i32 noundef %mul276)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  %222 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul278 = mul nsw i32 %222, 700
  store i32 %mul278, ptr %n, align 4
  store i32 %mul278, ptr %sz, align 4
  %arrayidx279 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 0, ptr %arrayidx279, align 1
  %223 = load i32, ptr %sz, align 4
  %div280 = sdiv i32 %223, 3
  %call281 = call i32 @roundup_allones(i32 noundef %div280)
  store i32 %call281, ptr %maxb, align 4
  %224 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 400, ptr noundef @.str.122, i32 noundef %224)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call282 = call ptr @isTemp(i32 noundef 9)
  %225 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.123, ptr noundef %call282, ptr noundef %225)
  %226 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.124, i32 noundef %226)
  store i32 1, ptr %i, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc295, %for.end274
  %227 = load i32, ptr %i, align 4
  %228 = load i32, ptr %n, align 4
  %cmp284 = icmp sle i32 %227, %228
  br i1 %cmp284, label %for.body286, label %for.end297

for.body286:                                      ; preds = %for.cond283
  %229 = load i32, ptr %i, align 4
  %230 = load i32, ptr %maxb, align 4
  %call287 = call i32 @swizzle(i32 noundef %229, i32 noundef %230)
  store i32 %call287, ptr %x1, align 4
  %231 = load i32, ptr %i, align 4
  %arraydecay288 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call289 = call i32 @speedtest1_numbername(i32 noundef %231, ptr noundef %arraydecay288, i32 noundef 2000)
  %232 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %233 = load i32, ptr %x1, align 4
  %conv290 = zext i32 %233 to i64
  %conv291 = trunc i64 %conv290 to i32
  %call292 = call i32 @sqlite3_bind_int(ptr noundef %232, i32 noundef 1, i32 noundef %conv291)
  %234 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay293 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call294 = call i32 @sqlite3_bind_text(ptr noundef %234, i32 noundef 2, ptr noundef %arraydecay293, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc295

for.inc295:                                       ; preds = %for.body286
  %235 = load i32, ptr %i, align 4
  %inc296 = add nsw i32 %235, 1
  store i32 %inc296, ptr %i, align 4
  br label %for.cond283, !llvm.loop !31

for.end297:                                       ; preds = %for.cond283
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %236 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 410, ptr noundef @.str.125, i32 noundef %236)
  %237 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 19), align 4
  %tobool = icmp ne i32 %237, 0
  br i1 %tobool, label %if.then298, label %if.end299

if.then298:                                       ; preds = %for.end297
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %for.end297
  %238 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.126, i32 noundef %238)
  store i32 1, ptr %i, align 4
  br label %for.cond300

for.cond300:                                      ; preds = %for.inc308, %if.end299
  %239 = load i32, ptr %i, align 4
  %240 = load i32, ptr %n, align 4
  %cmp301 = icmp sle i32 %239, %240
  br i1 %cmp301, label %for.body303, label %for.end310

for.body303:                                      ; preds = %for.cond300
  %241 = load i32, ptr %i, align 4
  %242 = load i32, ptr %maxb, align 4
  %call304 = call i32 @swizzle(i32 noundef %241, i32 noundef %242)
  store i32 %call304, ptr %x1, align 4
  %243 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %244 = load i32, ptr %x1, align 4
  %conv305 = zext i32 %244 to i64
  %conv306 = trunc i64 %conv305 to i32
  %call307 = call i32 @sqlite3_bind_int(ptr noundef %243, i32 noundef 1, i32 noundef %conv306)
  call void @speedtest1_run()
  br label %for.inc308

for.inc308:                                       ; preds = %for.body303
  %245 = load i32, ptr %i, align 4
  %inc309 = add nsw i32 %245, 1
  store i32 %inc309, ptr %i, align 4
  br label %for.cond300, !llvm.loop !32

for.end310:                                       ; preds = %for.cond300
  %246 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 19), align 4
  %tobool311 = icmp ne i32 %246, 0
  br i1 %tobool311, label %if.then312, label %if.end313

if.then312:                                       ; preds = %for.end310
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %for.end310
  call void @speedtest1_end_test()
  %247 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul314 = mul nsw i32 %247, 700
  store i32 %mul314, ptr %n, align 4
  store i32 %mul314, ptr %sz, align 4
  %arrayidx315 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  store i8 0, ptr %arrayidx315, align 1
  %248 = load i32, ptr %sz, align 4
  %div316 = sdiv i32 %248, 3
  %call317 = call i32 @roundup_allones(i32 noundef %div316)
  store i32 %call317, ptr %maxb, align 4
  %249 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 500, ptr noundef @.str.127, i32 noundef %249)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call318 = call ptr @isTemp(i32 noundef 9)
  %250 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %call319 = call i32 @sqlite3_libversion_number()
  %cmp320 = icmp sge i32 %call319, 3008002
  %251 = zext i1 %cmp320 to i64
  %cond = select i1 %cmp320, ptr @.str.129, ptr @.str.20
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.128, ptr noundef %call318, ptr noundef %250, ptr noundef %cond)
  %252 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.130, i32 noundef %252)
  store i32 1, ptr %i, align 4
  br label %for.cond322

for.cond322:                                      ; preds = %for.inc332, %if.end313
  %253 = load i32, ptr %i, align 4
  %254 = load i32, ptr %n, align 4
  %cmp323 = icmp sle i32 %253, %254
  br i1 %cmp323, label %for.body325, label %for.end334

for.body325:                                      ; preds = %for.cond322
  %255 = load i32, ptr %i, align 4
  %256 = load i32, ptr %maxb, align 4
  %call326 = call i32 @swizzle(i32 noundef %255, i32 noundef %256)
  store i32 %call326, ptr %x1, align 4
  %257 = load i32, ptr %x1, align 4
  %arraydecay327 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call328 = call i32 @speedtest1_numbername(i32 noundef %257, ptr noundef %arraydecay327, i32 noundef 2000)
  %258 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %259 = load i32, ptr %i, align 4
  %call329 = call i32 @sqlite3_bind_int(ptr noundef %258, i32 noundef 2, i32 noundef %259)
  %260 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay330 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call331 = call i32 @sqlite3_bind_text(ptr noundef %260, i32 noundef 1, ptr noundef %arraydecay330, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc332

for.inc332:                                       ; preds = %for.body325
  %261 = load i32, ptr %i, align 4
  %inc333 = add nsw i32 %261, 1
  store i32 %inc333, ptr %i, align 4
  br label %for.cond322, !llvm.loop !33

for.end334:                                       ; preds = %for.cond322
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %262 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 510, ptr noundef @.str.131, i32 noundef %262)
  %263 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 19), align 4
  %tobool335 = icmp ne i32 %263, 0
  br i1 %tobool335, label %if.then336, label %if.end337

if.then336:                                       ; preds = %for.end334
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %for.end334
  %264 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.132, i32 noundef %264)
  store i32 1, ptr %i, align 4
  br label %for.cond338

for.cond338:                                      ; preds = %for.inc347, %if.end337
  %265 = load i32, ptr %i, align 4
  %266 = load i32, ptr %n, align 4
  %cmp339 = icmp sle i32 %265, %266
  br i1 %cmp339, label %for.body341, label %for.end349

for.body341:                                      ; preds = %for.cond338
  %267 = load i32, ptr %i, align 4
  %268 = load i32, ptr %maxb, align 4
  %call342 = call i32 @swizzle(i32 noundef %267, i32 noundef %268)
  store i32 %call342, ptr %x1, align 4
  %269 = load i32, ptr %x1, align 4
  %arraydecay343 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call344 = call i32 @speedtest1_numbername(i32 noundef %269, ptr noundef %arraydecay343, i32 noundef 2000)
  %270 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay345 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call346 = call i32 @sqlite3_bind_text(ptr noundef %270, i32 noundef 1, ptr noundef %arraydecay345, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc347

for.inc347:                                       ; preds = %for.body341
  %271 = load i32, ptr %i, align 4
  %inc348 = add nsw i32 %271, 1
  store i32 %inc348, ptr %i, align 4
  br label %for.cond338, !llvm.loop !34

for.end349:                                       ; preds = %for.cond338
  %272 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 19), align 4
  %tobool350 = icmp ne i32 %272, 0
  br i1 %tobool350, label %if.then351, label %if.end352

if.then351:                                       ; preds = %for.end349
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  br label %if.end352

if.end352:                                        ; preds = %if.then351, %for.end349
  call void @speedtest1_end_test()
  %273 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 520, ptr noundef @.str.133, i32 noundef %273)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.134)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.135)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 980, ptr noundef @.str.136)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.136)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 990, ptr noundef @.str.137)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.137)
  call void @speedtest1_end_test()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @isTemp(i32 noundef %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 12), align 8
  %1 = load i32, ptr %N.addr, align 4
  %cmp = icmp sge i32 %0, %1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.365, ptr @.str.20
  ret ptr %cond
}

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #1

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @est_square_root(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, ptr %y0, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %y0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %cmp1 = icmp slt i32 %2, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, ptr %y0, align 4
  %5 = load i32, ptr %x.addr, align 4
  %6 = load i32, ptr %y0, align 4
  %div2 = sdiv i32 %5, %6
  %add = add nsw i32 %4, %div2
  %div3 = sdiv i32 %add, 2
  store i32 %div3, ptr %y1, align 4
  %7 = load i32, ptr %y1, align 4
  %8 = load i32, ptr %y0, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load i32, ptr %y1, align 4
  store i32 %9, ptr %y0, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %n, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %if.then, %land.end
  %11 = load i32, ptr %y0, align 4
  ret i32 %11
}

declare i32 @sqlite3_libversion_number() #1

; Function Attrs: nounwind ssp uwtable
define void @testset_cte() #0 {
entry:
  %zPuz = alloca ptr, align 8
  %rSpacing = alloca double, align 8
  %nElem = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @testset_cte.azPuzzle, align 8
  store ptr %1, ptr %zPuz, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %cmp1 = icmp slt i32 %2, 70
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @testset_cte.azPuzzle, i64 0, i64 1), align 8
  store ptr %3, ptr %zPuz, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  %4 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @testset_cte.azPuzzle, i64 0, i64 2), align 8
  store ptr %4, ptr %zPuz, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.141)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.142)
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %6 = load ptr, ptr %zPuz, align 8
  %call = call i32 @sqlite3_bind_text(ptr noundef %5, i32 noundef 1, ptr noundef %6, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 200, ptr noundef @.str.143)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.144)
  %7 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %8 = load ptr, ptr %zPuz, align 8
  %call5 = call i32 @sqlite3_bind_text(ptr noundef %7, i32 noundef 1, ptr noundef %8, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %conv = sitofp i32 %9 to double
  %div = fdiv double 5.000000e+00, %conv
  store double %div, ptr %rSpacing, align 8
  %10 = load double, ptr %rSpacing, align 8
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 300, ptr noundef @.str.145, double noundef %10)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.146)
  %11 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %12 = load double, ptr %rSpacing, align 8
  %mul = fmul double %12, 5.000000e-02
  %call6 = call i32 @sqlite3_bind_double(ptr noundef %11, i32 noundef 1, double noundef %mul)
  %13 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %14 = load double, ptr %rSpacing, align 8
  %call7 = call i32 @sqlite3_bind_double(ptr noundef %13, i32 noundef 2, double noundef %14)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul8 = mul nsw i32 10000, %15
  store i32 %mul8, ptr %nElem, align 4
  %16 = load i32, ptr %nElem, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 400, ptr noundef @.str.147, i32 noundef %16)
  %17 = load i32, ptr %nElem, align 4
  %18 = load i32, ptr %nElem, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.148, i32 noundef %17, i32 noundef %18)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  ret void
}

declare i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @speedtest1_random_ascii_fp(ptr noundef %zFP) #0 {
entry:
  %zFP.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %zFP, ptr %zFP.addr, align 8
  %call = call i32 @speedtest1_random()
  store i32 %call, ptr %x, align 4
  %call1 = call i32 @speedtest1_random()
  store i32 %call1, ptr %y, align 4
  %0 = load i32, ptr %y, align 4
  %rem = srem i32 %0, 10
  store i32 %rem, ptr %z, align 4
  %1 = load i32, ptr %z, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %z, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, ptr %z, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %y, align 4
  %div = sdiv i32 %3, 10
  store i32 %div, ptr %y, align 4
  %4 = load ptr, ptr %zFP.addr, align 8
  %5 = load i32, ptr %y, align 4
  %6 = load i32, ptr %z, align 4
  %7 = load i32, ptr %x, align 4
  %rem2 = srem i32 %7, 200
  %call3 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef %4, ptr noundef @.str.149, i32 noundef %5, i32 noundef %6, i32 noundef %rem2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @testset_fp() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %zFP1 = alloca [100 x i8], align 1
  %zFP2 = alloca [100 x i8], align 1
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %0, 5000
  store i32 %mul, ptr %n, align 4
  %1 = load i32, ptr %n, align 4
  %mul1 = mul nsw i32 %1, 2
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.150, i32 noundef %mul1)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  %call = call ptr @isTemp(i32 noundef 1)
  %2 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.151, ptr noundef %call, ptr noundef %2, ptr noundef %3)
  %4 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.152, i32 noundef %4)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %n, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay2)
  %7 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay3 = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  %call4 = call i32 @sqlite3_bind_text(ptr noundef %7, i32 noundef 1, ptr noundef %arraydecay3, i32 noundef -1, ptr noundef null)
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay5 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  %call6 = call i32 @sqlite3_bind_text(ptr noundef %8, i32 noundef 2, ptr noundef %arraydecay5, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %div = sdiv i32 %10, 25
  %add = add nsw i32 %div, 2
  store i32 %add, ptr %n, align 4
  %11 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.153, i32 noundef %11)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.154)
  store i32 1, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %n, align 4
  %cmp8 = icmp sle i32 %12, %13
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %arraydecay10 = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay10)
  %arraydecay11 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay11)
  %14 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay12 = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  %call13 = call i32 @sqlite3_bind_text(ptr noundef %14, i32 noundef 1, ptr noundef %arraydecay12, i32 noundef -1, ptr noundef null)
  %15 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay14 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  %call15 = call i32 @sqlite3_bind_text(ptr noundef %15, i32 noundef 2, ptr noundef %arraydecay14, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9
  %16 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond7, !llvm.loop !37

for.end18:                                        ; preds = %for.cond7
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 120, ptr noundef @.str.155)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.76)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.156)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.157)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.158)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.82)
  call void @speedtest1_end_test()
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %div19 = sdiv i32 %17, 3
  %add20 = add nsw i32 %div19, 2
  store i32 %add20, ptr %n, align 4
  %18 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.159, i32 noundef %18)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.154)
  store i32 1, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %for.end18
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %n, align 4
  %cmp22 = icmp sle i32 %19, %20
  br i1 %cmp22, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond21
  %arraydecay24 = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay24)
  %arraydecay25 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  call void @speedtest1_random_ascii_fp(ptr noundef %arraydecay25)
  %21 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay26 = getelementptr inbounds [100 x i8], ptr %zFP1, i64 0, i64 0
  %call27 = call i32 @sqlite3_bind_text(ptr noundef %21, i32 noundef 1, ptr noundef %arraydecay26, i32 noundef -1, ptr noundef null)
  %22 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay28 = getelementptr inbounds [100 x i8], ptr %zFP2, i64 0, i64 0
  %call29 = call i32 @sqlite3_bind_text(ptr noundef %22, i32 noundef 2, ptr noundef %arraydecay28, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23
  %23 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond21, !llvm.loop !38

for.end32:                                        ; preds = %for.cond21
  call void @speedtest1_end_test()
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul33 = mul nsw i32 %24, 5000
  store i32 %mul33, ptr %n, align 4
  %25 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 140, ptr noundef @.str.160, i32 noundef %25)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.161)
  call void @speedtest1_end_test()
  %26 = load i32, ptr %n, align 4
  %mul34 = mul nsw i32 %26, 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 150, ptr noundef @.str.162, i32 noundef %mul34)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.163)
  call void @speedtest1_end_test()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @testset_star() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %0, 50
  store i32 %mul, ptr %n, align 4
  %1 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.164, i32 noundef %1)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.165)
  %2 = load i32, ptr %n, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.166, i32 noundef %2)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.167)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.168, i32 noundef %4, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 120, ptr noundef @.str.169)
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %7, 8
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %i, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.170, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %12, 1
  %mul4 = mul nsw i32 4, %add
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %14, 1
  %mul6 = mul nsw i32 2, %add5
  %15 = load i32, ptr %i, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.171, i32 noundef %mul4, i32 noundef %13, i32 noundef %mul6, i32 noundef %15)
  %16 = load i32, ptr %i, align 4
  %and = and i32 %16, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %i, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.172, i32 noundef %17, i32 noundef %18, i32 noundef %19)
  br label %if.end

if.else:                                          ; preds = %for.body3
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %i, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.173, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %24 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %24, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond1, !llvm.loop !40

for.end9:                                         ; preds = %for.cond1
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.174)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.175)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.176)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.177)
  call void @speedtest1_end_test()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @testset_orm() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %nRow = alloca i32, align 4
  %x1 = alloca i32, align 4
  %len = alloca i32, align 4
  %zNum = alloca [2000 x i8], align 1
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %0, 250
  store i32 %mul, ptr %n, align 4
  store i32 %mul, ptr %nRow, align 4
  %1 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.178, i32 noundef %1)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.179)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.180)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %call = call i32 @speedtest1_random()
  store i32 %call, ptr %x1, align 4
  %4 = load i32, ptr %x1, align 4
  %rem = urem i32 %4, 1000
  %arraydecay = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call1 = call i32 @speedtest1_numbername(i32 noundef %rem, ptr noundef %arraydecay, i32 noundef 2000)
  %arraydecay2 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %len, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %6 = load i32, ptr %i, align 4
  %xor = xor i32 %6, 15
  %call4 = call i32 @sqlite3_bind_int(ptr noundef %5, i32 noundef 1, i32 noundef %xor)
  store i32 0, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [120 x i8], ptr @testset_orm.zType, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond5
  %9 = load i32, ptr %j, align 4
  %idxprom7 = zext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [120 x i8], ptr @testset_orm.zType, i64 0, i64 %idxprom7
  %10 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  switch i32 %conv9, label %sw.epilog [
    i32 73, label %sw.bb
    i32 84, label %sw.bb
    i32 70, label %sw.bb12
    i32 86, label %sw.bb16
    i32 66, label %sw.bb16
  ]

sw.bb:                                            ; preds = %for.body6, %for.body6
  %11 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %12 = load i32, ptr %j, align 4
  %add = add i32 %12, 2
  %13 = load i32, ptr %x1, align 4
  %conv10 = zext i32 %13 to i64
  %call11 = call i32 @sqlite3_bind_int64(ptr noundef %11, i32 noundef %add, i64 noundef %conv10)
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body6
  %14 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %15 = load i32, ptr %j, align 4
  %add13 = add i32 %15, 2
  %16 = load i32, ptr %x1, align 4
  %conv14 = uitofp i32 %16 to double
  %call15 = call i32 @sqlite3_bind_double(ptr noundef %14, i32 noundef %add13, double noundef %conv14)
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body6, %for.body6
  %17 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %18 = load i32, ptr %j, align 4
  %add17 = add i32 %18, 2
  %arraydecay18 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %19 = load i32, ptr %len, align 4
  %conv19 = zext i32 %19 to i64
  %call20 = call i32 @sqlite3_bind_text64(ptr noundef %17, i32 noundef %add17, ptr noundef %arraydecay18, i64 noundef %conv19, ptr noundef null, i8 noundef zeroext 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body6, %sw.bb16, %sw.bb12, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %20 = load i32, ptr %j, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond5, !llvm.loop !41

for.end:                                          ; preds = %for.cond5
  call void @speedtest1_run()
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %21 = load i32, ptr %i, align 4
  %inc22 = add i32 %21, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond, !llvm.loop !42

for.end23:                                        ; preds = %for.cond
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.82)
  call void @speedtest1_end_test()
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul24 = mul nsw i32 %22, 250
  store i32 %mul24, ptr %n, align 4
  %23 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.181, i32 noundef %23)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.182)
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %for.end23
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %n, align 4
  %cmp26 = icmp ult i32 %24, %25
  br i1 %cmp26, label %for.body28, label %for.end34

for.body28:                                       ; preds = %for.cond25
  %call29 = call i32 @speedtest1_random()
  %26 = load i32, ptr %nRow, align 4
  %rem30 = urem i32 %call29, %26
  store i32 %rem30, ptr %x1, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %28 = load i32, ptr %x1, align 4
  %call31 = call i32 @sqlite3_bind_int(ptr noundef %27, i32 noundef 1, i32 noundef %28)
  call void @speedtest1_run()
  br label %for.inc32

for.inc32:                                        ; preds = %for.body28
  %29 = load i32, ptr %i, align 4
  %inc33 = add i32 %29, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond25, !llvm.loop !43

for.end34:                                        ; preds = %for.cond25
  call void @speedtest1_end_test()
  ret void
}

declare i32 @sqlite3_bind_text64(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define void @testset_trigger() #0 {
entry:
  %jj = alloca i32, align 4
  %ii = alloca i32, align 4
  %zNum = alloca [2000 x i8], align 1
  %NROW = alloca i32, align 4
  %NROW2 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 500, %0
  store i32 %mul, ptr %NROW, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul1 = mul nsw i32 100, %1
  store i32 %mul1, ptr %NROW2, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.183)
  store i32 1, ptr %jj, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, ptr %jj, align 4
  %cmp = icmp sle i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %jj, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.184, i32 noundef %3)
  store i32 0, ptr %ii, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %ii, align 4
  %5 = load i32, ptr %NROW, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %call = call i32 @speedtest1_random()
  %6 = load i32, ptr %NROW, align 4
  %rem = urem i32 %call, %6
  store i32 %rem, ptr %x1, align 4
  %7 = load i32, ptr %x1, align 4
  %arraydecay = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call5 = call i32 @speedtest1_numbername(i32 noundef %7, ptr noundef %arraydecay, i32 noundef 2000)
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %9 = load i32, ptr %x1, align 4
  %call6 = call i32 @sqlite3_bind_int(ptr noundef %8, i32 noundef 1, i32 noundef %9)
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay7 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call8 = call i32 @sqlite3_bind_text(ptr noundef %10, i32 noundef 2, ptr noundef %arraydecay7, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond2, !llvm.loop !44

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, ptr %jj, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %jj, align 4
  br label %for.cond, !llvm.loop !45

for.end11:                                        ; preds = %for.cond
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.185)
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.186)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.187)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.188)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.189)
  call void @speedtest1_run()
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 120, ptr noundef @.str.190)
  store i32 1, ptr %jj, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.end11
  %13 = load i32, ptr %jj, align 4
  %cmp13 = icmp sle i32 %13, 3
  br i1 %cmp13, label %for.body14, label %for.end24

for.body14:                                       ; preds = %for.cond12
  %14 = load i32, ptr %jj, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.191, i32 noundef %14)
  store i32 0, ptr %ii, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc20, %for.body14
  %15 = load i32, ptr %ii, align 4
  %16 = load i32, ptr %NROW2, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body17, label %for.end21

for.body17:                                       ; preds = %for.cond15
  %17 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %18 = load i32, ptr %ii, align 4
  %mul18 = mul nsw i32 %18, 3
  %call19 = call i32 @sqlite3_bind_int(ptr noundef %17, i32 noundef 1, i32 noundef %mul18)
  call void @speedtest1_run()
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %19 = load i32, ptr %ii, align 4
  %add = add nsw i32 %19, 3
  store i32 %add, ptr %ii, align 4
  br label %for.cond15, !llvm.loop !46

for.end21:                                        ; preds = %for.cond15
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %20 = load i32, ptr %jj, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, ptr %jj, align 4
  br label %for.cond12, !llvm.loop !47

for.end24:                                        ; preds = %for.cond12
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.192)
  store i32 1, ptr %jj, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc36, %for.end24
  %21 = load i32, ptr %jj, align 4
  %cmp26 = icmp sle i32 %21, 3
  br i1 %cmp26, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond25
  %22 = load i32, ptr %jj, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.193, i32 noundef %22)
  store i32 0, ptr %ii, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc33, %for.body27
  %23 = load i32, ptr %ii, align 4
  %24 = load i32, ptr %NROW2, align 4
  %cmp29 = icmp slt i32 %23, %24
  br i1 %cmp29, label %for.body30, label %for.end35

for.body30:                                       ; preds = %for.cond28
  %25 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %26 = load i32, ptr %ii, align 4
  %mul31 = mul nsw i32 %26, 3
  %call32 = call i32 @sqlite3_bind_int(ptr noundef %25, i32 noundef 1, i32 noundef %mul31)
  call void @speedtest1_run()
  br label %for.inc33

for.inc33:                                        ; preds = %for.body30
  %27 = load i32, ptr %ii, align 4
  %add34 = add nsw i32 %27, 3
  store i32 %add34, ptr %ii, align 4
  br label %for.cond28, !llvm.loop !48

for.end35:                                        ; preds = %for.cond28
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %28 = load i32, ptr %jj, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, ptr %jj, align 4
  br label %for.cond25, !llvm.loop !49

for.end38:                                        ; preds = %for.cond25
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 140, ptr noundef @.str.192)
  store i32 1, ptr %jj, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc50, %for.end38
  %29 = load i32, ptr %jj, align 4
  %cmp40 = icmp sle i32 %29, 3
  br i1 %cmp40, label %for.body41, label %for.end52

for.body41:                                       ; preds = %for.cond39
  %30 = load i32, ptr %jj, align 4
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.193, i32 noundef %30)
  store i32 0, ptr %ii, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc47, %for.body41
  %31 = load i32, ptr %ii, align 4
  %32 = load i32, ptr %NROW2, align 4
  %cmp43 = icmp slt i32 %31, %32
  br i1 %cmp43, label %for.body44, label %for.end49

for.body44:                                       ; preds = %for.cond42
  %33 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %34 = load i32, ptr %ii, align 4
  %mul45 = mul nsw i32 %34, 3
  %call46 = call i32 @sqlite3_bind_int(ptr noundef %33, i32 noundef 1, i32 noundef %mul45)
  call void @speedtest1_run()
  br label %for.inc47

for.inc47:                                        ; preds = %for.body44
  %35 = load i32, ptr %ii, align 4
  %add48 = add nsw i32 %35, 3
  store i32 %add48, ptr %ii, align 4
  br label %for.cond42, !llvm.loop !50

for.end49:                                        ; preds = %for.cond42
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %36 = load i32, ptr %jj, align 4
  %inc51 = add nsw i32 %36, 1
  store i32 %inc51, ptr %jj, align 4
  br label %for.cond39, !llvm.loop !51

for.end52:                                        ; preds = %for.cond39
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 150, ptr noundef @.str.194)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.195)
  store i32 0, ptr %jj, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc58, %for.end52
  %37 = load i32, ptr %jj, align 4
  %38 = load i32, ptr %NROW2, align 4
  %cmp54 = icmp slt i32 %37, %38
  br i1 %cmp54, label %for.body55, label %for.end60

for.body55:                                       ; preds = %for.cond53
  %39 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %40 = load i32, ptr %jj, align 4
  %mul56 = mul nsw i32 %40, 3
  %call57 = call i32 @sqlite3_bind_int(ptr noundef %39, i32 noundef 1, i32 noundef %mul56)
  call void @speedtest1_run()
  br label %for.inc58

for.inc58:                                        ; preds = %for.body55
  %41 = load i32, ptr %jj, align 4
  %inc59 = add nsw i32 %41, 1
  store i32 %inc59, ptr %jj, align 4
  br label %for.cond53, !llvm.loop !52

for.end60:                                        ; preds = %for.cond53
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 160, ptr noundef @.str.196)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.57)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.197)
  store i32 0, ptr %jj, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc65, %for.end60
  %42 = load i32, ptr %jj, align 4
  %43 = load i32, ptr %NROW2, align 4
  %cmp62 = icmp slt i32 %42, %43
  br i1 %cmp62, label %for.body63, label %for.end67

for.body63:                                       ; preds = %for.cond61
  %44 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %45 = load i32, ptr %jj, align 4
  %call64 = call i32 @sqlite3_bind_int(ptr noundef %44, i32 noundef 1, i32 noundef %45)
  call void @speedtest1_run()
  br label %for.inc65

for.inc65:                                        ; preds = %for.body63
  %46 = load i32, ptr %jj, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, ptr %jj, align 4
  br label %for.cond61, !llvm.loop !53

for.end67:                                        ; preds = %for.cond61
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void @speedtest1_end_test()
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.198)
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 170, ptr noundef @.str.199)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.200)
  call void @speedtest1_end_test()
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.201)
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 180, ptr noundef @.str.202)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.203)
  store i32 0, ptr %jj, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc76, %for.end67
  %47 = load i32, ptr %jj, align 4
  %48 = load i32, ptr %NROW2, align 4
  %cmp69 = icmp slt i32 %47, %48
  br i1 %cmp69, label %for.body70, label %for.end78

for.body70:                                       ; preds = %for.cond68
  %49 = load i32, ptr %jj, align 4
  %arraydecay71 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call72 = call i32 @speedtest1_numbername(i32 noundef %49, ptr noundef %arraydecay71, i32 noundef 2000)
  %50 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %51 = load i32, ptr %jj, align 4
  %call73 = call i32 @sqlite3_bind_int(ptr noundef %50, i32 noundef 1, i32 noundef %51)
  %52 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay74 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call75 = call i32 @sqlite3_bind_text(ptr noundef %52, i32 noundef 2, ptr noundef %arraydecay74, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %53 = load i32, ptr %jj, align 4
  %inc77 = add nsw i32 %53, 1
  store i32 %inc77, ptr %jj, align 4
  br label %for.cond68, !llvm.loop !54

for.end78:                                        ; preds = %for.cond68
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 190, ptr noundef @.str.204)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.205)
  store i32 1, ptr %jj, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc91, %for.end78
  %54 = load i32, ptr %jj, align 4
  %55 = load i32, ptr %NROW2, align 4
  %mul80 = mul nsw i32 %55, 2
  %cmp81 = icmp sle i32 %54, %mul80
  br i1 %cmp81, label %for.body82, label %for.end93

for.body82:                                       ; preds = %for.cond79
  %56 = load i32, ptr %jj, align 4
  %mul83 = mul nsw i32 %56, 2
  %arraydecay84 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call85 = call i32 @speedtest1_numbername(i32 noundef %mul83, ptr noundef %arraydecay84, i32 noundef 2000)
  %57 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %58 = load i32, ptr %jj, align 4
  %mul86 = mul nsw i32 %58, 2
  %call87 = call i32 @sqlite3_bind_int(ptr noundef %57, i32 noundef 1, i32 noundef %mul86)
  %59 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay88 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call89 = call i32 @sqlite3_bind_text(ptr noundef %59, i32 noundef 2, ptr noundef %arraydecay88, i32 noundef -1, ptr noundef null)
  %60 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %61 = load i32, ptr %jj, align 4
  %call90 = call i32 @sqlite3_bind_int(ptr noundef %60, i32 noundef 3, i32 noundef %61)
  call void @speedtest1_run()
  br label %for.inc91

for.inc91:                                        ; preds = %for.body82
  %62 = load i32, ptr %jj, align 4
  %add92 = add nsw i32 %62, 2
  store i32 %add92, ptr %jj, align 4
  br label %for.cond79, !llvm.loop !55

for.end93:                                        ; preds = %for.cond79
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 200, ptr noundef @.str.206)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.207)
  store i32 1, ptr %jj, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc100, %for.end93
  %63 = load i32, ptr %jj, align 4
  %64 = load i32, ptr %NROW2, align 4
  %mul95 = mul nsw i32 %64, 2
  %cmp96 = icmp sle i32 %63, %mul95
  br i1 %cmp96, label %for.body97, label %for.end102

for.body97:                                       ; preds = %for.cond94
  %65 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %66 = load i32, ptr %jj, align 4
  %mul98 = mul nsw i32 %66, 2
  %call99 = call i32 @sqlite3_bind_int(ptr noundef %65, i32 noundef 1, i32 noundef %mul98)
  call void @speedtest1_run()
  br label %for.inc100

for.inc100:                                       ; preds = %for.body97
  %67 = load i32, ptr %jj, align 4
  %add101 = add nsw i32 %67, 2
  store i32 %add101, ptr %jj, align 4
  br label %for.cond94, !llvm.loop !56

for.end102:                                       ; preds = %for.cond94
  call void @speedtest1_end_test()
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.208)
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 210, ptr noundef @.str.209)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.203)
  store i32 0, ptr %jj, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc111, %for.end102
  %68 = load i32, ptr %jj, align 4
  %69 = load i32, ptr %NROW2, align 4
  %cmp104 = icmp slt i32 %68, %69
  br i1 %cmp104, label %for.body105, label %for.end113

for.body105:                                      ; preds = %for.cond103
  %70 = load i32, ptr %jj, align 4
  %arraydecay106 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call107 = call i32 @speedtest1_numbername(i32 noundef %70, ptr noundef %arraydecay106, i32 noundef 2000)
  %71 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %72 = load i32, ptr %jj, align 4
  %call108 = call i32 @sqlite3_bind_int(ptr noundef %71, i32 noundef 1, i32 noundef %72)
  %73 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay109 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call110 = call i32 @sqlite3_bind_text(ptr noundef %73, i32 noundef 2, ptr noundef %arraydecay109, i32 noundef -1, ptr noundef null)
  call void @speedtest1_run()
  br label %for.inc111

for.inc111:                                       ; preds = %for.body105
  %74 = load i32, ptr %jj, align 4
  %inc112 = add nsw i32 %74, 1
  store i32 %inc112, ptr %jj, align 4
  br label %for.cond103, !llvm.loop !57

for.end113:                                       ; preds = %for.cond103
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 210, ptr noundef @.str.210)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.205)
  store i32 1, ptr %jj, align 4
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc126, %for.end113
  %75 = load i32, ptr %jj, align 4
  %76 = load i32, ptr %NROW2, align 4
  %mul115 = mul nsw i32 %76, 2
  %cmp116 = icmp sle i32 %75, %mul115
  br i1 %cmp116, label %for.body117, label %for.end128

for.body117:                                      ; preds = %for.cond114
  %77 = load i32, ptr %jj, align 4
  %mul118 = mul nsw i32 %77, 2
  %arraydecay119 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call120 = call i32 @speedtest1_numbername(i32 noundef %mul118, ptr noundef %arraydecay119, i32 noundef 2000)
  %78 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %79 = load i32, ptr %jj, align 4
  %mul121 = mul nsw i32 %79, 2
  %call122 = call i32 @sqlite3_bind_int(ptr noundef %78, i32 noundef 1, i32 noundef %mul121)
  %80 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %arraydecay123 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call124 = call i32 @sqlite3_bind_text(ptr noundef %80, i32 noundef 2, ptr noundef %arraydecay123, i32 noundef -1, ptr noundef null)
  %81 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %82 = load i32, ptr %jj, align 4
  %call125 = call i32 @sqlite3_bind_int(ptr noundef %81, i32 noundef 3, i32 noundef %82)
  call void @speedtest1_run()
  br label %for.inc126

for.inc126:                                       ; preds = %for.body117
  %83 = load i32, ptr %jj, align 4
  %add127 = add nsw i32 %83, 2
  store i32 %add127, ptr %jj, align 4
  br label %for.cond114, !llvm.loop !58

for.end128:                                       ; preds = %for.cond114
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 220, ptr noundef @.str.211)
  call void (ptr, ...) @speedtest1_prepare(ptr noundef @.str.207)
  store i32 1, ptr %jj, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc135, %for.end128
  %84 = load i32, ptr %jj, align 4
  %85 = load i32, ptr %NROW2, align 4
  %mul130 = mul nsw i32 %85, 2
  %cmp131 = icmp sle i32 %84, %mul130
  br i1 %cmp131, label %for.body132, label %for.end137

for.body132:                                      ; preds = %for.cond129
  %86 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 3), align 8
  %87 = load i32, ptr %jj, align 4
  %mul133 = mul nsw i32 %87, 2
  %call134 = call i32 @sqlite3_bind_int(ptr noundef %86, i32 noundef 1, i32 noundef %mul133)
  call void @speedtest1_run()
  br label %for.inc135

for.inc135:                                       ; preds = %for.body132
  %88 = load i32, ptr %jj, align 4
  %add136 = add nsw i32 %88, 2
  store i32 %add136, ptr %jj, align 4
  br label %for.cond129, !llvm.loop !59

for.end137:                                       ; preds = %for.cond129
  call void @speedtest1_end_test()
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.60)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @testset_debug1() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %zNum = alloca [2000 x i8], align 1
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  store i32 %0, ptr %n, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp ule i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %call = call i32 @swizzle(i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %x1, align 4
  %5 = load i32, ptr %x1, align 4
  %6 = load i32, ptr %n, align 4
  %call1 = call i32 @swizzle(i32 noundef %5, i32 noundef %6)
  store i32 %call1, ptr %x2, align 4
  %7 = load i32, ptr %x1, align 4
  %arraydecay = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call2 = call i32 @speedtest1_numbername(i32 noundef %7, ptr noundef %arraydecay, i32 noundef 2000)
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %x1, align 4
  %10 = load i32, ptr %x2, align 4
  %arraydecay3 = getelementptr inbounds [2000 x i8], ptr %zNum, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.212, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %arraydecay3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @testset_json() #0 {
entry:
  %r = alloca i32, align 4
  store i32 305419896, ptr %r, align 4
  %0 = load i32, ptr %r, align 4
  %1 = load ptr, ptr @g, align 8
  %call = call i32 (i32, ...) @sqlite3_test_control(i32 noundef 28, i32 noundef %0, ptr noundef %1)
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %2, 5
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.213, i32 noundef %mul)
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul1 = mul nsw i32 %3, 5
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.214, i32 noundef %mul1)
  call void @speedtest1_end_test()
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.215, i32 noundef %4)
  %5 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.216, i32 noundef %5)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 120, ptr noundef @.str.217)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.218)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 130, ptr noundef @.str.219)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.220)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 140, ptr noundef @.str.221)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.222)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 141, ptr noundef @.str.223)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.224)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 150, ptr noundef @.str.225)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.226)
  call void @speedtest1_end_test()
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 160, ptr noundef @.str.227)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.228)
  call void @speedtest1_end_test()
  ret void
}

declare i32 @sqlite3_test_control(i32 noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @testset_parsenumber() #0 {
entry:
  %zSql1 = alloca ptr, align 8
  %zSql2 = alloca ptr, align 8
  %zSql3 = alloca ptr, align 8
  %zSql4 = alloca ptr, align 8
  %NROW = alloca i32, align 4
  %ii = alloca i32, align 4
  store ptr @.str.229, ptr %zSql1, align 8
  store ptr @.str.230, ptr %zSql2, align 8
  store ptr @.str.231, ptr %zSql3, align 8
  store ptr @.str.232, ptr %zSql4, align 8
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 100, %0
  store i32 %mul, ptr %NROW, align 4
  %1 = load i32, ptr %NROW, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.233, i32 noundef %1)
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ii, align 4
  %3 = load i32, ptr %NROW, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @g, align 8
  %5 = load ptr, ptr %zSql1, align 8
  %call = call i32 @sqlite3_exec(ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  call void @speedtest1_end_test()
  %7 = load i32, ptr %NROW, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.234, i32 noundef %7)
  store i32 0, ptr %ii, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %8 = load i32, ptr %ii, align 4
  %9 = load i32, ptr %NROW, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end7

for.body3:                                        ; preds = %for.cond1
  %10 = load ptr, ptr @g, align 8
  %11 = load ptr, ptr %zSql2, align 8
  %call4 = call i32 @sqlite3_exec(ptr noundef %10, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %12 = load i32, ptr %ii, align 4
  %inc6 = add nsw i32 %12, 1
  store i32 %inc6, ptr %ii, align 4
  br label %for.cond1, !llvm.loop !62

for.end7:                                         ; preds = %for.cond1
  call void @speedtest1_end_test()
  %13 = load i32, ptr %NROW, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 200, ptr noundef @.str.235, i32 noundef %13)
  store i32 0, ptr %ii, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %for.end7
  %14 = load i32, ptr %ii, align 4
  %15 = load i32, ptr %NROW, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %16 = load ptr, ptr @g, align 8
  %17 = load ptr, ptr %zSql3, align 8
  %call11 = call i32 @sqlite3_exec(ptr noundef %16, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %18 = load i32, ptr %ii, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, ptr %ii, align 4
  br label %for.cond8, !llvm.loop !63

for.end14:                                        ; preds = %for.cond8
  call void @speedtest1_end_test()
  %19 = load i32, ptr %NROW, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 210, ptr noundef @.str.236, i32 noundef %19)
  store i32 0, ptr %ii, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc19, %for.end14
  %20 = load i32, ptr %ii, align 4
  %21 = load i32, ptr %NROW, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body17, label %for.end21

for.body17:                                       ; preds = %for.cond15
  %22 = load ptr, ptr @g, align 8
  %23 = load ptr, ptr %zSql4, align 8
  %call18 = call i32 @sqlite3_exec(ptr noundef %22, ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body17
  %24 = load i32, ptr %ii, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, ptr %ii, align 4
  br label %for.cond15, !llvm.loop !64

for.end21:                                        ; preds = %for.cond15
  call void @speedtest1_end_test()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %doAutovac = alloca i32, align 4
  %cacheSize = alloca i32, align 4
  %doExclusive = alloca i32, align 4
  %doFullFSync = alloca i32, align 4
  %nHeap = alloca i32, align 4
  %mnHeap = alloca i32, align 4
  %doIncrvac = alloca i32, align 4
  %zJMode = alloca ptr, align 8
  %zKey = alloca ptr, align 8
  %nHardHeapLmt = alloca i32, align 4
  %nSoftHeapLmt = alloca i32, align 4
  %nLook = alloca i32, align 4
  %szLook = alloca i32, align 4
  %noSync = alloca i32, align 4
  %pageSize = alloca i32, align 4
  %nPCache = alloca i32, align 4
  %szPCache = alloca i32, align 4
  %doPCache = alloca i32, align 4
  %showStats = alloca i32, align 4
  %nThread = alloca i32, align 4
  %mmapSize = alloca i32, align 4
  %memDb = alloca i32, align 4
  %openFlags = alloca i32, align 4
  %zTSet = alloca ptr, align 8
  %doTrace = alloca i32, align 4
  %zEncoding = alloca ptr, align 8
  %pHeap = alloca ptr, align 8
  %pLook = alloca ptr, align 8
  %pPCache = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %iHi = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %z = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %zThisTest = alloca ptr, align 8
  %zSep = alloca ptr, align 8
  %zComma = alloca ptr, align 8
  %kk = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %zObj = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %doAutovac, align 4
  store i32 0, ptr %cacheSize, align 4
  store i32 0, ptr %doExclusive, align 4
  store i32 0, ptr %doFullFSync, align 4
  store i32 0, ptr %nHeap, align 4
  store i32 0, ptr %mnHeap, align 4
  store i32 0, ptr %doIncrvac, align 4
  store ptr null, ptr %zJMode, align 8
  store ptr null, ptr %zKey, align 8
  store i32 0, ptr %nHardHeapLmt, align 4
  store i32 0, ptr %nSoftHeapLmt, align 4
  store i32 -1, ptr %nLook, align 4
  store i32 0, ptr %szLook, align 4
  store i32 0, ptr %noSync, align 4
  store i32 0, ptr %pageSize, align 4
  store i32 0, ptr %nPCache, align 4
  store i32 0, ptr %szPCache, align 4
  store i32 0, ptr %doPCache, align 4
  store i32 0, ptr %showStats, align 4
  store i32 0, ptr %nThread, align 4
  store i32 0, ptr %mmapSize, align 4
  store i32 0, ptr %memDb, align 4
  store i32 6, ptr %openFlags, align 4
  store ptr @.str.237, ptr %zTSet, align 8
  store i32 0, ptr %doTrace, align 4
  store ptr null, ptr %zEncoding, align 8
  store ptr null, ptr %pHeap, align 8
  store ptr null, ptr %pLook, align 8
  store ptr null, ptr %pPCache, align 8
  %call = call ptr @sqlite3_libversion()
  %call1 = call ptr @sqlite3_sourceid()
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.238, ptr noundef %call, ptr noundef %call1)
  store ptr null, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  store ptr null, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 2), align 8
  store ptr @.str.20, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  store ptr @.str.20, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  store ptr @.str.239, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  store i32 100, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  store i32 100, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 14), align 8
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %z, align 8
  %5 = load ptr, ptr %z, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 45
  br i1 %cmp4, label %if.then, label %if.else592

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %7 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load ptr, ptr %z, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %do.body, label %do.end, !llvm.loop !65

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %z, align 8
  %call10 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.240)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end
  store i32 1, ptr %doAutovac, align 4
  br label %if.end591

if.else:                                          ; preds = %do.end
  %11 = load ptr, ptr %z, align 8
  %call14 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.241)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 19), align 4
  br label %if.end590

if.else18:                                        ; preds = %if.else
  %12 = load ptr, ptr %z, align 8
  %call19 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.242)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else31

if.then22:                                        ; preds = %if.else18
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %14, 1
  %cmp23 = icmp sge i32 %13, %sub
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.then22
  %15 = load ptr, ptr %argv.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %15, i64 %idxprom26
  %17 = load ptr, ptr %arrayidx27, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then22
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  %idxprom28 = sext i32 %inc to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %18, i64 %idxprom28
  %20 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @integerValue(ptr noundef %20)
  store i32 %call30, ptr %cacheSize, align 4
  br label %if.end589

if.else31:                                        ; preds = %if.else18
  %21 = load ptr, ptr %z, align 8
  %call32 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.244)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else31
  store i32 1, ptr %doExclusive, align 4
  br label %if.end588

if.else36:                                        ; preds = %if.else31
  %22 = load ptr, ptr %z, align 8
  %call37 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.245)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else36
  store i32 1, ptr %doFullFSync, align 4
  br label %if.end587

if.else41:                                        ; preds = %if.else36
  %23 = load ptr, ptr %z, align 8
  %call42 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.246)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else41
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 16), align 8
  br label %if.end586

if.else46:                                        ; preds = %if.else41
  %24 = load ptr, ptr %z, align 8
  %call47 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.247)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else46
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 9), align 4
  br label %if.end585

if.else51:                                        ; preds = %if.else46
  %25 = load ptr, ptr %z, align 8
  %call52 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.248)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else67

if.then55:                                        ; preds = %if.else51
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %argc.addr, align 4
  %sub56 = sub nsw i32 %27, 1
  %cmp57 = icmp sge i32 %26, %sub56
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.then55
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %29 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %28, i64 %idxprom60
  %30 = load ptr, ptr %arrayidx61, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %30)
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then55
  %31 = load ptr, ptr %argv.addr, align 8
  %32 = load i32, ptr %i, align 4
  %add = add nsw i32 %32, 1
  %idxprom63 = sext i32 %add to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %31, i64 %idxprom63
  %33 = load ptr, ptr %arrayidx64, align 8
  %call65 = call i32 @integerValue(ptr noundef %33)
  store i32 %call65, ptr %nHardHeapLmt, align 4
  %34 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %34, 1
  store i32 %add66, ptr %i, align 4
  br label %if.end584

if.else67:                                        ; preds = %if.else51
  %35 = load ptr, ptr %z, align 8
  %call68 = call i32 @strcmp(ptr noundef %35, ptr noundef @.str.249)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.else88

if.then71:                                        ; preds = %if.else67
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %argc.addr, align 4
  %sub72 = sub nsw i32 %37, 2
  %cmp73 = icmp sge i32 %36, %sub72
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.then71
  %38 = load ptr, ptr %argv.addr, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom76 = sext i32 %39 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %38, i64 %idxprom76
  %40 = load ptr, ptr %arrayidx77, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %40)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then71
  %41 = load ptr, ptr %argv.addr, align 8
  %42 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %42, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %41, i64 %idxprom80
  %43 = load ptr, ptr %arrayidx81, align 8
  %call82 = call i32 @integerValue(ptr noundef %43)
  store i32 %call82, ptr %nHeap, align 4
  %44 = load ptr, ptr %argv.addr, align 8
  %45 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %45, 2
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %44, i64 %idxprom84
  %46 = load ptr, ptr %arrayidx85, align 8
  %call86 = call i32 @integerValue(ptr noundef %46)
  store i32 %call86, ptr %mnHeap, align 4
  %47 = load i32, ptr %i, align 4
  %add87 = add nsw i32 %47, 2
  store i32 %add87, ptr %i, align 4
  br label %if.end583

if.else88:                                        ; preds = %if.else67
  %48 = load ptr, ptr %z, align 8
  %call89 = call i32 @strcmp(ptr noundef %48, ptr noundef @.str.250)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.else88
  store i32 1, ptr %doIncrvac, align 4
  br label %if.end582

if.else93:                                        ; preds = %if.else88
  %49 = load ptr, ptr %z, align 8
  %call94 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.251)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else108

if.then97:                                        ; preds = %if.else93
  %50 = load i32, ptr %i, align 4
  %51 = load i32, ptr %argc.addr, align 4
  %sub98 = sub nsw i32 %51, 1
  %cmp99 = icmp sge i32 %50, %sub98
  br i1 %cmp99, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.then97
  %52 = load ptr, ptr %argv.addr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds ptr, ptr %52, i64 %idxprom102
  %54 = load ptr, ptr %arrayidx103, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %54)
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.then97
  %55 = load ptr, ptr %argv.addr, align 8
  %56 = load i32, ptr %i, align 4
  %inc105 = add nsw i32 %56, 1
  store i32 %inc105, ptr %i, align 4
  %idxprom106 = sext i32 %inc105 to i64
  %arrayidx107 = getelementptr inbounds ptr, ptr %55, i64 %idxprom106
  %57 = load ptr, ptr %arrayidx107, align 8
  store ptr %57, ptr %zJMode, align 8
  br label %if.end581

if.else108:                                       ; preds = %if.else93
  %58 = load ptr, ptr %z, align 8
  %call109 = call i32 @strcmp(ptr noundef %58, ptr noundef @.str.252)
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.else123

if.then112:                                       ; preds = %if.else108
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %argc.addr, align 4
  %sub113 = sub nsw i32 %60, 1
  %cmp114 = icmp sge i32 %59, %sub113
  br i1 %cmp114, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.then112
  %61 = load ptr, ptr %argv.addr, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom117 = sext i32 %62 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %61, i64 %idxprom117
  %63 = load ptr, ptr %arrayidx118, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %63)
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.then112
  %64 = load ptr, ptr %argv.addr, align 8
  %65 = load i32, ptr %i, align 4
  %inc120 = add nsw i32 %65, 1
  store i32 %inc120, ptr %i, align 4
  %idxprom121 = sext i32 %inc120 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %64, i64 %idxprom121
  %66 = load ptr, ptr %arrayidx122, align 8
  store ptr %66, ptr %zKey, align 8
  br label %if.end580

if.else123:                                       ; preds = %if.else108
  %67 = load ptr, ptr %z, align 8
  %call124 = call i32 @strcmp(ptr noundef %67, ptr noundef @.str.253)
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.else144

if.then127:                                       ; preds = %if.else123
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %argc.addr, align 4
  %sub128 = sub nsw i32 %69, 2
  %cmp129 = icmp sge i32 %68, %sub128
  br i1 %cmp129, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.then127
  %70 = load ptr, ptr %argv.addr, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom132 = sext i32 %71 to i64
  %arrayidx133 = getelementptr inbounds ptr, ptr %70, i64 %idxprom132
  %72 = load ptr, ptr %arrayidx133, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %72)
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.then127
  %73 = load ptr, ptr %argv.addr, align 8
  %74 = load i32, ptr %i, align 4
  %add135 = add nsw i32 %74, 1
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %73, i64 %idxprom136
  %75 = load ptr, ptr %arrayidx137, align 8
  %call138 = call i32 @integerValue(ptr noundef %75)
  store i32 %call138, ptr %nLook, align 4
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %i, align 4
  %add139 = add nsw i32 %77, 2
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds ptr, ptr %76, i64 %idxprom140
  %78 = load ptr, ptr %arrayidx141, align 8
  %call142 = call i32 @integerValue(ptr noundef %78)
  store i32 %call142, ptr %szLook, align 4
  %79 = load i32, ptr %i, align 4
  %add143 = add nsw i32 %79, 2
  store i32 %add143, ptr %i, align 4
  br label %if.end579

if.else144:                                       ; preds = %if.else123
  %80 = load ptr, ptr %z, align 8
  %call145 = call i32 @strcmp(ptr noundef %80, ptr noundef @.str.254)
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.else149

if.then148:                                       ; preds = %if.else144
  store i32 1, ptr %memDb, align 4
  br label %if.end578

if.else149:                                       ; preds = %if.else144
  %81 = load ptr, ptr %z, align 8
  %call150 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.255)
  %cmp151 = icmp eq i32 %call150, 0
  br i1 %cmp151, label %if.then153, label %if.else155

if.then153:                                       ; preds = %if.else149
  %call154 = call i32 (i32, ...) @sqlite3_config(i32 noundef 2)
  br label %if.end577

if.else155:                                       ; preds = %if.else149
  %82 = load ptr, ptr %z, align 8
  %call156 = call i32 @strcmp(ptr noundef %82, ptr noundef @.str.256)
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %if.else161

if.then159:                                       ; preds = %if.else155
  %call160 = call i32 (i32, ...) @sqlite3_config(i32 noundef 9, i32 noundef 0)
  br label %if.end576

if.else161:                                       ; preds = %if.else155
  %83 = load ptr, ptr %z, align 8
  %call162 = call i32 @strcmp(ptr noundef %83, ptr noundef @.str.257)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.else177

if.then165:                                       ; preds = %if.else161
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %argc.addr, align 4
  %sub166 = sub nsw i32 %85, 1
  %cmp167 = icmp sge i32 %84, %sub166
  br i1 %cmp167, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.then165
  %86 = load ptr, ptr %argv.addr, align 8
  %87 = load i32, ptr %i, align 4
  %idxprom170 = sext i32 %87 to i64
  %arrayidx171 = getelementptr inbounds ptr, ptr %86, i64 %idxprom170
  %88 = load ptr, ptr %arrayidx171, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %88)
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.then165
  %89 = load ptr, ptr %argv.addr, align 8
  %90 = load i32, ptr %i, align 4
  %inc173 = add nsw i32 %90, 1
  store i32 %inc173, ptr %i, align 4
  %idxprom174 = sext i32 %inc173 to i64
  %arrayidx175 = getelementptr inbounds ptr, ptr %89, i64 %idxprom174
  %91 = load ptr, ptr %arrayidx175, align 8
  %call176 = call i32 @integerValue(ptr noundef %91)
  store i32 %call176, ptr %mmapSize, align 4
  br label %if.end575

if.else177:                                       ; preds = %if.else161
  %92 = load ptr, ptr %z, align 8
  %call178 = call i32 @strcmp(ptr noundef %92, ptr noundef @.str.258)
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.else182

if.then181:                                       ; preds = %if.else177
  %93 = load i32, ptr %openFlags, align 4
  %or = or i32 %93, 32768
  store i32 %or, ptr %openFlags, align 4
  br label %if.end574

if.else182:                                       ; preds = %if.else177
  %94 = load ptr, ptr %z, align 8
  %call183 = call i32 @strcmp(ptr noundef %94, ptr noundef @.str.259)
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.else187

if.then186:                                       ; preds = %if.else182
  store i32 1, ptr %noSync, align 4
  br label %if.end573

if.else187:                                       ; preds = %if.else182
  %95 = load ptr, ptr %z, align 8
  %call188 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.260)
  %cmp189 = icmp eq i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %if.else187
  store ptr @.str.261, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 21), align 8
  br label %if.end572

if.else192:                                       ; preds = %if.else187
  %96 = load ptr, ptr %z, align 8
  %call193 = call i32 @strcmp(ptr noundef %96, ptr noundef @.str.262)
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.else222

if.then196:                                       ; preds = %if.else192
  %97 = load i32, ptr %i, align 4
  %98 = load i32, ptr %argc.addr, align 4
  %sub197 = sub nsw i32 %98, 1
  %cmp198 = icmp sge i32 %97, %sub197
  br i1 %cmp198, label %if.then200, label %if.end203

if.then200:                                       ; preds = %if.then196
  %99 = load ptr, ptr %argv.addr, align 8
  %100 = load i32, ptr %i, align 4
  %idxprom201 = sext i32 %100 to i64
  %arrayidx202 = getelementptr inbounds ptr, ptr %99, i64 %idxprom201
  %101 = load ptr, ptr %arrayidx202, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %101)
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %if.then196
  %102 = load i32, ptr %i, align 4
  %inc204 = add nsw i32 %102, 1
  store i32 %inc204, ptr %i, align 4
  %103 = load ptr, ptr %argv.addr, align 8
  %104 = load i32, ptr %i, align 4
  %idxprom205 = sext i32 %104 to i64
  %arrayidx206 = getelementptr inbounds ptr, ptr %103, i64 %idxprom205
  %105 = load ptr, ptr %arrayidx206, align 8
  %call207 = call i32 @strcmp(ptr noundef %105, ptr noundef @.str.263)
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then210, label %if.else211

if.then210:                                       ; preds = %if.end203
  %106 = load ptr, ptr @__stdoutp, align 8
  store ptr %106, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  br label %if.end221

if.else211:                                       ; preds = %if.end203
  %107 = load ptr, ptr %argv.addr, align 8
  %108 = load i32, ptr %i, align 4
  %idxprom212 = sext i32 %108 to i64
  %arrayidx213 = getelementptr inbounds ptr, ptr %107, i64 %idxprom212
  %109 = load ptr, ptr %arrayidx213, align 8
  %call214 = call ptr @"\01_fopen"(ptr noundef %109, ptr noundef @.str.264)
  store ptr %call214, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %110 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 29), align 8
  %cmp215 = icmp eq ptr %110, null
  br i1 %cmp215, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.else211
  %111 = load ptr, ptr %argv.addr, align 8
  %112 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %112 to i64
  %arrayidx219 = getelementptr inbounds ptr, ptr %111, i64 %idxprom218
  %113 = load ptr, ptr %arrayidx219, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.265, ptr noundef %113)
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.else211
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then210
  br label %if.end571

if.else222:                                       ; preds = %if.else192
  %114 = load ptr, ptr %z, align 8
  %call223 = call i32 @strcmp(ptr noundef %114, ptr noundef @.str.266)
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then226, label %if.else238

if.then226:                                       ; preds = %if.else222
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %argc.addr, align 4
  %sub227 = sub nsw i32 %116, 1
  %cmp228 = icmp sge i32 %115, %sub227
  br i1 %cmp228, label %if.then230, label %if.end233

if.then230:                                       ; preds = %if.then226
  %117 = load ptr, ptr %argv.addr, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %118 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %117, i64 %idxprom231
  %119 = load ptr, ptr %arrayidx232, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %119)
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %if.then226
  %120 = load ptr, ptr %argv.addr, align 8
  %121 = load i32, ptr %i, align 4
  %inc234 = add nsw i32 %121, 1
  store i32 %inc234, ptr %i, align 4
  %idxprom235 = sext i32 %inc234 to i64
  %arrayidx236 = getelementptr inbounds ptr, ptr %120, i64 %idxprom235
  %122 = load ptr, ptr %arrayidx236, align 8
  %call237 = call i32 @integerValue(ptr noundef %122)
  store i32 %call237, ptr %pageSize, align 4
  br label %if.end570

if.else238:                                       ; preds = %if.else222
  %123 = load ptr, ptr %z, align 8
  %call239 = call i32 @strcmp(ptr noundef %123, ptr noundef @.str.267)
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.else259

if.then242:                                       ; preds = %if.else238
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %argc.addr, align 4
  %sub243 = sub nsw i32 %125, 2
  %cmp244 = icmp sge i32 %124, %sub243
  br i1 %cmp244, label %if.then246, label %if.end249

if.then246:                                       ; preds = %if.then242
  %126 = load ptr, ptr %argv.addr, align 8
  %127 = load i32, ptr %i, align 4
  %idxprom247 = sext i32 %127 to i64
  %arrayidx248 = getelementptr inbounds ptr, ptr %126, i64 %idxprom247
  %128 = load ptr, ptr %arrayidx248, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %128)
  br label %if.end249

if.end249:                                        ; preds = %if.then246, %if.then242
  %129 = load ptr, ptr %argv.addr, align 8
  %130 = load i32, ptr %i, align 4
  %add250 = add nsw i32 %130, 1
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds ptr, ptr %129, i64 %idxprom251
  %131 = load ptr, ptr %arrayidx252, align 8
  %call253 = call i32 @integerValue(ptr noundef %131)
  store i32 %call253, ptr %nPCache, align 4
  %132 = load ptr, ptr %argv.addr, align 8
  %133 = load i32, ptr %i, align 4
  %add254 = add nsw i32 %133, 2
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds ptr, ptr %132, i64 %idxprom255
  %134 = load ptr, ptr %arrayidx256, align 8
  %call257 = call i32 @integerValue(ptr noundef %134)
  store i32 %call257, ptr %szPCache, align 4
  store i32 1, ptr %doPCache, align 4
  %135 = load i32, ptr %i, align 4
  %add258 = add nsw i32 %135, 2
  store i32 %add258, ptr %i, align 4
  br label %if.end569

if.else259:                                       ; preds = %if.else238
  %136 = load ptr, ptr %z, align 8
  %call260 = call i32 @strcmp(ptr noundef %136, ptr noundef @.str.268)
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then263, label %if.else264

if.then263:                                       ; preds = %if.else259
  store ptr @.str.269, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  br label %if.end568

if.else264:                                       ; preds = %if.else259
  %137 = load ptr, ptr %z, align 8
  %call265 = call i32 @strcmp(ptr noundef %137, ptr noundef @.str.270)
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %if.then268, label %if.else280

if.then268:                                       ; preds = %if.else264
  %138 = load i32, ptr %i, align 4
  %139 = load i32, ptr %argc.addr, align 4
  %sub269 = sub nsw i32 %139, 1
  %cmp270 = icmp sge i32 %138, %sub269
  br i1 %cmp270, label %if.then272, label %if.end275

if.then272:                                       ; preds = %if.then268
  %140 = load ptr, ptr %argv.addr, align 8
  %141 = load i32, ptr %i, align 4
  %idxprom273 = sext i32 %141 to i64
  %arrayidx274 = getelementptr inbounds ptr, ptr %140, i64 %idxprom273
  %142 = load ptr, ptr %arrayidx274, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %142)
  br label %if.end275

if.end275:                                        ; preds = %if.then272, %if.then268
  %143 = load ptr, ptr %argv.addr, align 8
  %144 = load i32, ptr %i, align 4
  %inc276 = add nsw i32 %144, 1
  store i32 %inc276, ptr %i, align 4
  %idxprom277 = sext i32 %inc276 to i64
  %arrayidx278 = getelementptr inbounds ptr, ptr %143, i64 %idxprom277
  %145 = load ptr, ptr %arrayidx278, align 8
  %call279 = call i32 @integerValue(ptr noundef %145)
  store i32 %call279, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 15), align 4
  br label %if.end567

if.else280:                                       ; preds = %if.else264
  %146 = load ptr, ptr %z, align 8
  %call281 = call i32 @strcmp(ptr noundef %146, ptr noundef @.str.271)
  %cmp282 = icmp eq i32 %call281, 0
  br i1 %cmp282, label %if.then284, label %if.else285

if.then284:                                       ; preds = %if.else280
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 7), align 4
  br label %if.end566

if.else285:                                       ; preds = %if.else280
  %147 = load ptr, ptr %z, align 8
  %call286 = call i32 @strcmp(ptr noundef %147, ptr noundef @.str.272)
  %cmp287 = icmp eq i32 %call286, 0
  br i1 %cmp287, label %if.then289, label %if.else291

if.then289:                                       ; preds = %if.else285
  %call290 = call i32 (i32, ...) @sqlite3_config(i32 noundef 3)
  br label %if.end565

if.else291:                                       ; preds = %if.else285
  %148 = load ptr, ptr %z, align 8
  %call292 = call i32 @strcmp(ptr noundef %148, ptr noundef @.str.273)
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then295, label %if.else297

if.then295:                                       ; preds = %if.else291
  %call296 = call i32 (i32, ...) @sqlite3_config(i32 noundef 1)
  br label %if.end564

if.else297:                                       ; preds = %if.else291
  %149 = load ptr, ptr %z, align 8
  %call298 = call i32 @strcmp(ptr noundef %149, ptr noundef @.str.274)
  %cmp299 = icmp eq i32 %call298, 0
  br i1 %cmp299, label %if.then301, label %if.else322

if.then301:                                       ; preds = %if.else297
  %150 = load i32, ptr %i, align 4
  %151 = load i32, ptr %argc.addr, align 4
  %sub302 = sub nsw i32 %151, 1
  %cmp303 = icmp sge i32 %150, %sub302
  br i1 %cmp303, label %if.then305, label %if.end308

if.then305:                                       ; preds = %if.then301
  %152 = load ptr, ptr %argv.addr, align 8
  %153 = load i32, ptr %i, align 4
  %idxprom306 = sext i32 %153 to i64
  %arrayidx307 = getelementptr inbounds ptr, ptr %152, i64 %idxprom306
  %154 = load ptr, ptr %arrayidx307, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %154)
  br label %if.end308

if.end308:                                        ; preds = %if.then305, %if.then301
  %155 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool = icmp ne ptr %155, null
  br i1 %tobool, label %if.then309, label %if.end311

if.then309:                                       ; preds = %if.end308
  %156 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %call310 = call i32 @fclose(ptr noundef %156)
  br label %if.end311

if.end311:                                        ; preds = %if.then309, %if.end308
  %157 = load ptr, ptr %argv.addr, align 8
  %158 = load i32, ptr %i, align 4
  %inc312 = add nsw i32 %158, 1
  store i32 %inc312, ptr %i, align 4
  %idxprom313 = sext i32 %inc312 to i64
  %arrayidx314 = getelementptr inbounds ptr, ptr %157, i64 %idxprom313
  %159 = load ptr, ptr %arrayidx314, align 8
  %call315 = call ptr @"\01_fopen"(ptr noundef %159, ptr noundef @.str.264)
  store ptr %call315, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %160 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %cmp316 = icmp eq ptr %160, null
  br i1 %cmp316, label %if.then318, label %if.end321

if.then318:                                       ; preds = %if.end311
  %161 = load ptr, ptr %argv.addr, align 8
  %162 = load i32, ptr %i, align 4
  %idxprom319 = sext i32 %162 to i64
  %arrayidx320 = getelementptr inbounds ptr, ptr %161, i64 %idxprom319
  %163 = load ptr, ptr %arrayidx320, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.275, ptr noundef %163)
  br label %if.end321

if.end321:                                        ; preds = %if.then318, %if.end311
  br label %if.end563

if.else322:                                       ; preds = %if.else297
  %164 = load ptr, ptr %z, align 8
  %call323 = call i32 @strcmp(ptr noundef %164, ptr noundef @.str.276)
  %cmp324 = icmp eq i32 %call323, 0
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.else322
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 8), align 8
  br label %if.end562

if.else327:                                       ; preds = %if.else322
  %165 = load ptr, ptr %z, align 8
  %call328 = call i32 @strcmp(ptr noundef %165, ptr noundef @.str.277)
  %cmp329 = icmp eq i32 %call328, 0
  br i1 %cmp329, label %if.then331, label %if.else332

if.then331:                                       ; preds = %if.else327
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 11), align 4
  br label %if.end561

if.else332:                                       ; preds = %if.else327
  %166 = load ptr, ptr %z, align 8
  %call333 = call i32 @strcmp(ptr noundef %166, ptr noundef @.str.278)
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.else348

if.then336:                                       ; preds = %if.else332
  %167 = load i32, ptr %i, align 4
  %168 = load i32, ptr %argc.addr, align 4
  %sub337 = sub nsw i32 %168, 1
  %cmp338 = icmp sge i32 %167, %sub337
  br i1 %cmp338, label %if.then340, label %if.end343

if.then340:                                       ; preds = %if.then336
  %169 = load ptr, ptr %argv.addr, align 8
  %170 = load i32, ptr %i, align 4
  %idxprom341 = sext i32 %170 to i64
  %arrayidx342 = getelementptr inbounds ptr, ptr %169, i64 %idxprom341
  %171 = load ptr, ptr %arrayidx342, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %171)
  br label %if.end343

if.end343:                                        ; preds = %if.then340, %if.then336
  %172 = load ptr, ptr %argv.addr, align 8
  %173 = load i32, ptr %i, align 4
  %inc344 = add nsw i32 %173, 1
  store i32 %inc344, ptr %i, align 4
  %idxprom345 = sext i32 %inc344 to i64
  %arrayidx346 = getelementptr inbounds ptr, ptr %172, i64 %idxprom345
  %174 = load ptr, ptr %arrayidx346, align 8
  %call347 = call i32 @integerValue(ptr noundef %174)
  store i32 %call347, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 14), align 8
  store i32 %call347, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  br label %if.end560

if.else348:                                       ; preds = %if.else332
  %175 = load ptr, ptr %z, align 8
  %call349 = call i32 @strcmp(ptr noundef %175, ptr noundef @.str.279)
  %cmp350 = icmp eq i32 %call349, 0
  br i1 %cmp350, label %if.then352, label %if.else365

if.then352:                                       ; preds = %if.else348
  %176 = load i32, ptr %i, align 4
  %177 = load i32, ptr %argc.addr, align 4
  %sub353 = sub nsw i32 %177, 1
  %cmp354 = icmp sge i32 %176, %sub353
  br i1 %cmp354, label %if.then356, label %if.end359

if.then356:                                       ; preds = %if.then352
  %178 = load ptr, ptr %argv.addr, align 8
  %179 = load i32, ptr %i, align 4
  %idxprom357 = sext i32 %179 to i64
  %arrayidx358 = getelementptr inbounds ptr, ptr %178, i64 %idxprom357
  %180 = load ptr, ptr %arrayidx358, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %180)
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.then352
  %181 = load ptr, ptr %argv.addr, align 8
  %182 = load i32, ptr %i, align 4
  %add360 = add nsw i32 %182, 1
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds ptr, ptr %181, i64 %idxprom361
  %183 = load ptr, ptr %arrayidx362, align 8
  %call363 = call i32 @integerValue(ptr noundef %183)
  store i32 %call363, ptr %nSoftHeapLmt, align 4
  %184 = load i32, ptr %i, align 4
  %add364 = add nsw i32 %184, 1
  store i32 %add364, ptr %i, align 4
  br label %if.end559

if.else365:                                       ; preds = %if.else348
  %185 = load ptr, ptr %z, align 8
  %call366 = call i32 @strcmp(ptr noundef %185, ptr noundef @.str.280)
  %cmp367 = icmp eq i32 %call366, 0
  br i1 %cmp367, label %if.then369, label %if.else370

if.then369:                                       ; preds = %if.else365
  store i32 1, ptr %showStats, align 4
  br label %if.end558

if.else370:                                       ; preds = %if.else365
  %186 = load ptr, ptr %z, align 8
  %call371 = call i32 @strcmp(ptr noundef %186, ptr noundef @.str.281)
  %cmp372 = icmp eq i32 %call371, 0
  br i1 %cmp372, label %if.then374, label %if.else409

if.then374:                                       ; preds = %if.else370
  %187 = load i32, ptr %i, align 4
  %188 = load i32, ptr %argc.addr, align 4
  %sub375 = sub nsw i32 %188, 1
  %cmp376 = icmp sge i32 %187, %sub375
  br i1 %cmp376, label %if.then378, label %if.end381

if.then378:                                       ; preds = %if.then374
  %189 = load ptr, ptr %argv.addr, align 8
  %190 = load i32, ptr %i, align 4
  %idxprom379 = sext i32 %190 to i64
  %arrayidx380 = getelementptr inbounds ptr, ptr %189, i64 %idxprom379
  %191 = load ptr, ptr %arrayidx380, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %191)
  br label %if.end381

if.end381:                                        ; preds = %if.then378, %if.then374
  %192 = load i32, ptr %i, align 4
  %inc382 = add nsw i32 %192, 1
  store i32 %inc382, ptr %i, align 4
  %193 = load ptr, ptr %argv.addr, align 8
  %194 = load i32, ptr %i, align 4
  %idxprom383 = sext i32 %194 to i64
  %arrayidx384 = getelementptr inbounds ptr, ptr %193, i64 %idxprom383
  %195 = load ptr, ptr %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i8, ptr %195, i64 0
  %196 = load i8, ptr %arrayidx385, align 1
  %conv386 = sext i8 %196 to i32
  %cmp387 = icmp slt i32 %conv386, 48
  br i1 %cmp387, label %if.then402, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end381
  %197 = load ptr, ptr %argv.addr, align 8
  %198 = load i32, ptr %i, align 4
  %idxprom389 = sext i32 %198 to i64
  %arrayidx390 = getelementptr inbounds ptr, ptr %197, i64 %idxprom389
  %199 = load ptr, ptr %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i8, ptr %199, i64 0
  %200 = load i8, ptr %arrayidx391, align 1
  %conv392 = sext i8 %200 to i32
  %cmp393 = icmp sgt i32 %conv392, 57
  br i1 %cmp393, label %if.then402, label %lor.lhs.false395

lor.lhs.false395:                                 ; preds = %lor.lhs.false
  %201 = load ptr, ptr %argv.addr, align 8
  %202 = load i32, ptr %i, align 4
  %idxprom396 = sext i32 %202 to i64
  %arrayidx397 = getelementptr inbounds ptr, ptr %201, i64 %idxprom396
  %203 = load ptr, ptr %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i8, ptr %203, i64 1
  %204 = load i8, ptr %arrayidx398, align 1
  %conv399 = sext i8 %204 to i32
  %cmp400 = icmp ne i32 %conv399, 0
  br i1 %cmp400, label %if.then402, label %if.end403

if.then402:                                       ; preds = %lor.lhs.false395, %lor.lhs.false, %if.end381
  call void (ptr, ...) @fatal_error(ptr noundef @.str.282)
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %lor.lhs.false395
  %205 = load ptr, ptr %argv.addr, align 8
  %206 = load i32, ptr %i, align 4
  %idxprom404 = sext i32 %206 to i64
  %arrayidx405 = getelementptr inbounds ptr, ptr %205, i64 %idxprom404
  %207 = load ptr, ptr %arrayidx405, align 8
  %arrayidx406 = getelementptr inbounds i8, ptr %207, i64 0
  %208 = load i8, ptr %arrayidx406, align 1
  %conv407 = sext i8 %208 to i32
  %sub408 = sub nsw i32 %conv407, 48
  store i32 %sub408, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 12), align 8
  br label %if.end557

if.else409:                                       ; preds = %if.else370
  %209 = load ptr, ptr %z, align 8
  %call410 = call i32 @strcmp(ptr noundef %209, ptr noundef @.str.283)
  %cmp411 = icmp eq i32 %call410, 0
  br i1 %cmp411, label %if.then413, label %if.else424

if.then413:                                       ; preds = %if.else409
  %210 = load i32, ptr %i, align 4
  %211 = load i32, ptr %argc.addr, align 4
  %sub414 = sub nsw i32 %211, 1
  %cmp415 = icmp sge i32 %210, %sub414
  br i1 %cmp415, label %if.then417, label %if.end420

if.then417:                                       ; preds = %if.then413
  %212 = load ptr, ptr %argv.addr, align 8
  %213 = load i32, ptr %i, align 4
  %idxprom418 = sext i32 %213 to i64
  %arrayidx419 = getelementptr inbounds ptr, ptr %212, i64 %idxprom418
  %214 = load ptr, ptr %arrayidx419, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %214)
  br label %if.end420

if.end420:                                        ; preds = %if.then417, %if.then413
  %215 = load ptr, ptr %argv.addr, align 8
  %216 = load i32, ptr %i, align 4
  %inc421 = add nsw i32 %216, 1
  store i32 %inc421, ptr %i, align 4
  %idxprom422 = sext i32 %inc421 to i64
  %arrayidx423 = getelementptr inbounds ptr, ptr %215, i64 %idxprom422
  %217 = load ptr, ptr %arrayidx423, align 8
  store ptr %217, ptr %zTSet, align 8
  br label %if.end556

if.else424:                                       ; preds = %if.else409
  %218 = load ptr, ptr %z, align 8
  %call425 = call i32 @strcmp(ptr noundef %218, ptr noundef @.str.284)
  %cmp426 = icmp eq i32 %call425, 0
  br i1 %cmp426, label %if.then428, label %if.else429

if.then428:                                       ; preds = %if.else424
  store i32 1, ptr %doTrace, align 4
  br label %if.end555

if.else429:                                       ; preds = %if.else424
  %219 = load ptr, ptr %z, align 8
  %call430 = call i32 @strcmp(ptr noundef %219, ptr noundef @.str.285)
  %cmp431 = icmp eq i32 %call430, 0
  br i1 %cmp431, label %if.then433, label %if.else445

if.then433:                                       ; preds = %if.else429
  %220 = load i32, ptr %i, align 4
  %221 = load i32, ptr %argc.addr, align 4
  %sub434 = sub nsw i32 %221, 1
  %cmp435 = icmp sge i32 %220, %sub434
  br i1 %cmp435, label %if.then437, label %if.end440

if.then437:                                       ; preds = %if.then433
  %222 = load ptr, ptr %argv.addr, align 8
  %223 = load i32, ptr %i, align 4
  %idxprom438 = sext i32 %223 to i64
  %arrayidx439 = getelementptr inbounds ptr, ptr %222, i64 %idxprom438
  %224 = load ptr, ptr %arrayidx439, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %224)
  br label %if.end440

if.end440:                                        ; preds = %if.then437, %if.then433
  %225 = load ptr, ptr %argv.addr, align 8
  %226 = load i32, ptr %i, align 4
  %inc441 = add nsw i32 %226, 1
  store i32 %inc441, ptr %i, align 4
  %idxprom442 = sext i32 %inc441 to i64
  %arrayidx443 = getelementptr inbounds ptr, ptr %225, i64 %idxprom442
  %227 = load ptr, ptr %arrayidx443, align 8
  %call444 = call i32 @integerValue(ptr noundef %227)
  store i32 %call444, ptr %nThread, align 4
  br label %if.end554

if.else445:                                       ; preds = %if.else429
  %228 = load ptr, ptr %z, align 8
  %call446 = call i32 @strcmp(ptr noundef %228, ptr noundef @.str.286)
  %cmp447 = icmp eq i32 %call446, 0
  br i1 %cmp447, label %if.then449, label %if.else450

if.then449:                                       ; preds = %if.else445
  store ptr @.str.286, ptr %zEncoding, align 8
  br label %if.end553

if.else450:                                       ; preds = %if.else445
  %229 = load ptr, ptr %z, align 8
  %call451 = call i32 @strcmp(ptr noundef %229, ptr noundef @.str.287)
  %cmp452 = icmp eq i32 %call451, 0
  br i1 %cmp452, label %if.then454, label %if.else455

if.then454:                                       ; preds = %if.else450
  store ptr @.str.287, ptr %zEncoding, align 8
  br label %if.end552

if.else455:                                       ; preds = %if.else450
  %230 = load ptr, ptr %z, align 8
  %call456 = call i32 @strcmp(ptr noundef %230, ptr noundef @.str.288)
  %cmp457 = icmp eq i32 %call456, 0
  br i1 %cmp457, label %if.then459, label %if.else460

if.then459:                                       ; preds = %if.else455
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 10), align 8
  call void @HashInit()
  br label %if.end551

if.else460:                                       ; preds = %if.else455
  %231 = load ptr, ptr %z, align 8
  %call461 = call i32 @strcmp(ptr noundef %231, ptr noundef @.str.289)
  %cmp462 = icmp eq i32 %call461, 0
  br i1 %cmp462, label %if.then464, label %if.else475

if.then464:                                       ; preds = %if.else460
  %232 = load i32, ptr %i, align 4
  %233 = load i32, ptr %argc.addr, align 4
  %sub465 = sub nsw i32 %233, 1
  %cmp466 = icmp sge i32 %232, %sub465
  br i1 %cmp466, label %if.then468, label %if.end471

if.then468:                                       ; preds = %if.then464
  %234 = load ptr, ptr %argv.addr, align 8
  %235 = load i32, ptr %i, align 4
  %idxprom469 = sext i32 %235 to i64
  %arrayidx470 = getelementptr inbounds ptr, ptr %234, i64 %idxprom469
  %236 = load ptr, ptr %arrayidx470, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %236)
  br label %if.end471

if.end471:                                        ; preds = %if.then468, %if.then464
  %237 = load ptr, ptr %argv.addr, align 8
  %238 = load i32, ptr %i, align 4
  %inc472 = add nsw i32 %238, 1
  store i32 %inc472, ptr %i, align 4
  %idxprom473 = sext i32 %inc472 to i64
  %arrayidx474 = getelementptr inbounds ptr, ptr %237, i64 %idxprom473
  %239 = load ptr, ptr %arrayidx474, align 8
  store ptr %239, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 2), align 8
  br label %if.end550

if.else475:                                       ; preds = %if.else460
  %240 = load ptr, ptr %z, align 8
  %call476 = call i32 @strcmp(ptr noundef %240, ptr noundef @.str.290)
  %cmp477 = icmp eq i32 %call476, 0
  br i1 %cmp477, label %if.then479, label %if.else491

if.then479:                                       ; preds = %if.else475
  %241 = load i32, ptr %i, align 4
  %242 = load i32, ptr %argc.addr, align 4
  %sub480 = sub nsw i32 %242, 1
  %cmp481 = icmp sge i32 %241, %sub480
  br i1 %cmp481, label %if.then483, label %if.end486

if.then483:                                       ; preds = %if.then479
  %243 = load ptr, ptr %argv.addr, align 8
  %244 = load i32, ptr %i, align 4
  %idxprom484 = sext i32 %244 to i64
  %arrayidx485 = getelementptr inbounds ptr, ptr %243, i64 %idxprom484
  %245 = load ptr, ptr %arrayidx485, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.243, ptr noundef %245)
  br label %if.end486

if.end486:                                        ; preds = %if.then483, %if.then479
  %246 = load ptr, ptr %argv.addr, align 8
  %247 = load i32, ptr %i, align 4
  %inc487 = add nsw i32 %247, 1
  store i32 %inc487, ptr %i, align 4
  %idxprom488 = sext i32 %inc487 to i64
  %arrayidx489 = getelementptr inbounds ptr, ptr %246, i64 %idxprom488
  %248 = load ptr, ptr %arrayidx489, align 8
  %call490 = call i32 @atoi(ptr noundef %248)
  store i32 %call490, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 17), align 4
  br label %if.end549

if.else491:                                       ; preds = %if.else475
  %249 = load ptr, ptr %z, align 8
  %call492 = call i32 @strcmp(ptr noundef %249, ptr noundef @.str.291)
  %cmp493 = icmp eq i32 %call492, 0
  br i1 %cmp493, label %if.then495, label %if.else496

if.then495:                                       ; preds = %if.else491
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 18), align 8
  br label %if.end548

if.else496:                                       ; preds = %if.else491
  %250 = load ptr, ptr %z, align 8
  %call497 = call i32 @strcmp(ptr noundef %250, ptr noundef @.str.292)
  %cmp498 = icmp eq i32 %call497, 0
  br i1 %cmp498, label %if.then500, label %if.else513

if.then500:                                       ; preds = %if.else496
  %251 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  %call501 = call ptr @strstr(ptr noundef %251, ptr noundef @.str.293)
  %cmp502 = icmp ne ptr %call501, null
  br i1 %cmp502, label %if.then504, label %if.else505

if.then504:                                       ; preds = %if.then500
  br label %if.end512

if.else505:                                       ; preds = %if.then500
  %252 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  %call506 = call ptr @strstr(ptr noundef %252, ptr noundef @.str.294)
  %cmp507 = icmp ne ptr %call506, null
  br i1 %cmp507, label %if.then509, label %if.else510

if.then509:                                       ; preds = %if.else505
  store ptr @.str.295, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  br label %if.end511

if.else510:                                       ; preds = %if.else505
  store ptr @.str.129, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  br label %if.end511

if.end511:                                        ; preds = %if.else510, %if.then509
  br label %if.end512

if.end512:                                        ; preds = %if.end511, %if.then504
  store ptr @.str.269, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 22), align 8
  br label %if.end547

if.else513:                                       ; preds = %if.else496
  %253 = load ptr, ptr %z, align 8
  %call514 = call i32 @strcmp(ptr noundef %253, ptr noundef @.str.296)
  %cmp515 = icmp eq i32 %call514, 0
  br i1 %cmp515, label %if.then517, label %if.else530

if.then517:                                       ; preds = %if.else513
  %254 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  %call518 = call ptr @strstr(ptr noundef %254, ptr noundef @.str.294)
  %cmp519 = icmp ne ptr %call518, null
  br i1 %cmp519, label %if.then521, label %if.else522

if.then521:                                       ; preds = %if.then517
  br label %if.end529

if.else522:                                       ; preds = %if.then517
  %255 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  %call523 = call ptr @strstr(ptr noundef %255, ptr noundef @.str.293)
  %cmp524 = icmp ne ptr %call523, null
  br i1 %cmp524, label %if.then526, label %if.else527

if.then526:                                       ; preds = %if.else522
  store ptr @.str.295, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  br label %if.end528

if.else527:                                       ; preds = %if.else522
  store ptr @.str.294, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 20), align 8
  br label %if.end528

if.end528:                                        ; preds = %if.else527, %if.then526
  br label %if.end529

if.end529:                                        ; preds = %if.end528, %if.then521
  br label %if.end546

if.else530:                                       ; preds = %if.else513
  %256 = load ptr, ptr %z, align 8
  %call531 = call i32 @strcmp(ptr noundef %256, ptr noundef @.str.297)
  %cmp532 = icmp eq i32 %call531, 0
  br i1 %cmp532, label %if.then538, label %lor.lhs.false534

lor.lhs.false534:                                 ; preds = %if.else530
  %257 = load ptr, ptr %z, align 8
  %call535 = call i32 @strcmp(ptr noundef %257, ptr noundef @.str.298)
  %cmp536 = icmp eq i32 %call535, 0
  br i1 %cmp536, label %if.then538, label %if.else541

if.then538:                                       ; preds = %lor.lhs.false534, %if.else530
  %258 = load ptr, ptr %argv.addr, align 8
  %arrayidx539 = getelementptr inbounds ptr, ptr %258, i64 0
  %259 = load ptr, ptr %arrayidx539, align 8
  %call540 = call i32 (ptr, ...) @printf(ptr noundef @zHelp, ptr noundef %259)
  call void @exit(i32 noundef 0) #11
  unreachable

if.else541:                                       ; preds = %lor.lhs.false534
  %260 = load ptr, ptr %argv.addr, align 8
  %261 = load i32, ptr %i, align 4
  %idxprom542 = sext i32 %261 to i64
  %arrayidx543 = getelementptr inbounds ptr, ptr %260, i64 %idxprom542
  %262 = load ptr, ptr %arrayidx543, align 8
  %263 = load ptr, ptr %argv.addr, align 8
  %arrayidx544 = getelementptr inbounds ptr, ptr %263, i64 0
  %264 = load ptr, ptr %arrayidx544, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.299, ptr noundef %262, ptr noundef %264)
  br label %if.end545

if.end545:                                        ; preds = %if.else541
  br label %if.end546

if.end546:                                        ; preds = %if.end545, %if.end529
  br label %if.end547

if.end547:                                        ; preds = %if.end546, %if.end512
  br label %if.end548

if.end548:                                        ; preds = %if.end547, %if.then495
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %if.end486
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.end471
  br label %if.end551

if.end551:                                        ; preds = %if.end550, %if.then459
  br label %if.end552

if.end552:                                        ; preds = %if.end551, %if.then454
  br label %if.end553

if.end553:                                        ; preds = %if.end552, %if.then449
  br label %if.end554

if.end554:                                        ; preds = %if.end553, %if.end440
  br label %if.end555

if.end555:                                        ; preds = %if.end554, %if.then428
  br label %if.end556

if.end556:                                        ; preds = %if.end555, %if.end420
  br label %if.end557

if.end557:                                        ; preds = %if.end556, %if.end403
  br label %if.end558

if.end558:                                        ; preds = %if.end557, %if.then369
  br label %if.end559

if.end559:                                        ; preds = %if.end558, %if.end359
  br label %if.end560

if.end560:                                        ; preds = %if.end559, %if.end343
  br label %if.end561

if.end561:                                        ; preds = %if.end560, %if.then331
  br label %if.end562

if.end562:                                        ; preds = %if.end561, %if.then326
  br label %if.end563

if.end563:                                        ; preds = %if.end562, %if.end321
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.then295
  br label %if.end565

if.end565:                                        ; preds = %if.end564, %if.then289
  br label %if.end566

if.end566:                                        ; preds = %if.end565, %if.then284
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %if.end275
  br label %if.end568

if.end568:                                        ; preds = %if.end567, %if.then263
  br label %if.end569

if.end569:                                        ; preds = %if.end568, %if.end249
  br label %if.end570

if.end570:                                        ; preds = %if.end569, %if.end233
  br label %if.end571

if.end571:                                        ; preds = %if.end570, %if.end221
  br label %if.end572

if.end572:                                        ; preds = %if.end571, %if.then191
  br label %if.end573

if.end573:                                        ; preds = %if.end572, %if.then186
  br label %if.end574

if.end574:                                        ; preds = %if.end573, %if.then181
  br label %if.end575

if.end575:                                        ; preds = %if.end574, %if.end172
  br label %if.end576

if.end576:                                        ; preds = %if.end575, %if.then159
  br label %if.end577

if.end577:                                        ; preds = %if.end576, %if.then153
  br label %if.end578

if.end578:                                        ; preds = %if.end577, %if.then148
  br label %if.end579

if.end579:                                        ; preds = %if.end578, %if.end134
  br label %if.end580

if.end580:                                        ; preds = %if.end579, %if.end119
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.end104
  br label %if.end582

if.end582:                                        ; preds = %if.end581, %if.then92
  br label %if.end583

if.end583:                                        ; preds = %if.end582, %if.end78
  br label %if.end584

if.end584:                                        ; preds = %if.end583, %if.end62
  br label %if.end585

if.end585:                                        ; preds = %if.end584, %if.then50
  br label %if.end586

if.end586:                                        ; preds = %if.end585, %if.then45
  br label %if.end587

if.end587:                                        ; preds = %if.end586, %if.then40
  br label %if.end588

if.end588:                                        ; preds = %if.end587, %if.then35
  br label %if.end589

if.end589:                                        ; preds = %if.end588, %if.end
  br label %if.end590

if.end590:                                        ; preds = %if.end589, %if.then17
  br label %if.end591

if.end591:                                        ; preds = %if.end590, %if.then13
  br label %if.end603

if.else592:                                       ; preds = %for.body
  %265 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %cmp593 = icmp eq ptr %265, null
  br i1 %cmp593, label %if.then595, label %if.else598

if.then595:                                       ; preds = %if.else592
  %266 = load ptr, ptr %argv.addr, align 8
  %267 = load i32, ptr %i, align 4
  %idxprom596 = sext i32 %267 to i64
  %arrayidx597 = getelementptr inbounds ptr, ptr %266, i64 %idxprom596
  %268 = load ptr, ptr %arrayidx597, align 8
  store ptr %268, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  br label %if.end602

if.else598:                                       ; preds = %if.else592
  %269 = load ptr, ptr %argv.addr, align 8
  %270 = load i32, ptr %i, align 4
  %idxprom599 = sext i32 %270 to i64
  %arrayidx600 = getelementptr inbounds ptr, ptr %269, i64 %idxprom599
  %271 = load ptr, ptr %arrayidx600, align 8
  %272 = load ptr, ptr %argv.addr, align 8
  %arrayidx601 = getelementptr inbounds ptr, ptr %272, i64 0
  %273 = load ptr, ptr %arrayidx601, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.300, ptr noundef %271, ptr noundef %273)
  br label %if.end602

if.end602:                                        ; preds = %if.else598, %if.then595
  br label %if.end603

if.end603:                                        ; preds = %if.end602, %if.end591
  br label %for.inc

for.inc:                                          ; preds = %if.end603
  %274 = load i32, ptr %i, align 4
  %inc604 = add nsw i32 %274, 1
  store i32 %inc604, ptr %i, align 4
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %275 = load i32, ptr %nHeap, align 4
  %cmp605 = icmp sgt i32 %275, 0
  br i1 %cmp605, label %if.then607, label %if.end618

if.then607:                                       ; preds = %for.end
  %276 = load i32, ptr %nHeap, align 4
  %conv608 = sext i32 %276 to i64
  %call609 = call ptr @malloc(i64 noundef %conv608) #13
  store ptr %call609, ptr %pHeap, align 8
  %277 = load ptr, ptr %pHeap, align 8
  %cmp610 = icmp eq ptr %277, null
  br i1 %cmp610, label %if.then612, label %if.end613

if.then612:                                       ; preds = %if.then607
  %278 = load i32, ptr %nHeap, align 4
  call void (ptr, ...) @fatal_error(ptr noundef @.str.301, i32 noundef %278)
  br label %if.end613

if.end613:                                        ; preds = %if.then612, %if.then607
  %279 = load ptr, ptr %pHeap, align 8
  %280 = load i32, ptr %nHeap, align 4
  %281 = load i32, ptr %mnHeap, align 4
  %call614 = call i32 (i32, ...) @sqlite3_config(i32 noundef 8, ptr noundef %279, i32 noundef %280, i32 noundef %281)
  store i32 %call614, ptr %rc, align 4
  %282 = load i32, ptr %rc, align 4
  %tobool615 = icmp ne i32 %282, 0
  br i1 %tobool615, label %if.then616, label %if.end617

if.then616:                                       ; preds = %if.end613
  %283 = load i32, ptr %rc, align 4
  call void (ptr, ...) @fatal_error(ptr noundef @.str.302, i32 noundef %283)
  br label %if.end617

if.end617:                                        ; preds = %if.then616, %if.end613
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %for.end
  %284 = load i32, ptr %doPCache, align 4
  %tobool619 = icmp ne i32 %284, 0
  br i1 %tobool619, label %if.then620, label %if.end641

if.then620:                                       ; preds = %if.end618
  %285 = load i32, ptr %nPCache, align 4
  %cmp621 = icmp sgt i32 %285, 0
  br i1 %cmp621, label %land.lhs.true, label %if.end636

land.lhs.true:                                    ; preds = %if.then620
  %286 = load i32, ptr %szPCache, align 4
  %cmp623 = icmp sgt i32 %286, 0
  br i1 %cmp623, label %if.then625, label %if.end636

if.then625:                                       ; preds = %land.lhs.true
  %287 = load i32, ptr %nPCache, align 4
  %conv626 = sext i32 %287 to i64
  %288 = load i32, ptr %szPCache, align 4
  %conv627 = sext i32 %288 to i64
  %mul = mul nsw i64 %conv626, %conv627
  %call628 = call ptr @malloc(i64 noundef %mul) #13
  store ptr %call628, ptr %pPCache, align 8
  %289 = load ptr, ptr %pPCache, align 8
  %cmp629 = icmp eq ptr %289, null
  br i1 %cmp629, label %if.then631, label %if.end635

if.then631:                                       ; preds = %if.then625
  %290 = load i32, ptr %nPCache, align 4
  %conv632 = sext i32 %290 to i64
  %291 = load i32, ptr %szPCache, align 4
  %conv633 = sext i32 %291 to i64
  %mul634 = mul nsw i64 %conv632, %conv633
  call void (ptr, ...) @fatal_error(ptr noundef @.str.303, i64 noundef %mul634)
  br label %if.end635

if.end635:                                        ; preds = %if.then631, %if.then625
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %land.lhs.true, %if.then620
  %292 = load ptr, ptr %pPCache, align 8
  %293 = load i32, ptr %szPCache, align 4
  %294 = load i32, ptr %nPCache, align 4
  %call637 = call i32 (i32, ...) @sqlite3_config(i32 noundef 7, ptr noundef %292, i32 noundef %293, i32 noundef %294)
  store i32 %call637, ptr %rc, align 4
  %295 = load i32, ptr %rc, align 4
  %tobool638 = icmp ne i32 %295, 0
  br i1 %tobool638, label %if.then639, label %if.end640

if.then639:                                       ; preds = %if.end636
  %296 = load i32, ptr %rc, align 4
  call void (ptr, ...) @fatal_error(ptr noundef @.str.304, i32 noundef %296)
  br label %if.end640

if.end640:                                        ; preds = %if.then639, %if.end636
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %if.end618
  %297 = load i32, ptr %nLook, align 4
  %cmp642 = icmp sge i32 %297, 0
  br i1 %cmp642, label %if.then644, label %if.end646

if.then644:                                       ; preds = %if.end641
  %call645 = call i32 (i32, ...) @sqlite3_config(i32 noundef 13, i32 noundef 0, i32 noundef 0)
  br label %if.end646

if.end646:                                        ; preds = %if.then644, %if.end641
  %call647 = call i32 @sqlite3_initialize()
  %298 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %cmp648 = icmp ne ptr %298, null
  br i1 %cmp648, label %if.then650, label %if.end658

if.then650:                                       ; preds = %if.end646
  %299 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 2), align 8
  %call651 = call ptr @sqlite3_vfs_find(ptr noundef %299)
  store ptr %call651, ptr %pVfs, align 8
  %300 = load ptr, ptr %pVfs, align 8
  %cmp652 = icmp ne ptr %300, null
  br i1 %cmp652, label %if.then654, label %if.end656

if.then654:                                       ; preds = %if.then650
  %301 = load ptr, ptr %pVfs, align 8
  %xDelete = getelementptr inbounds %struct.sqlite3_vfs, ptr %301, i32 0, i32 7
  %302 = load ptr, ptr %xDelete, align 8
  %303 = load ptr, ptr %pVfs, align 8
  %304 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %call655 = call i32 %302(ptr noundef %303, ptr noundef %304, i32 noundef 1)
  br label %if.end656

if.end656:                                        ; preds = %if.then654, %if.then650
  %305 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %call657 = call i32 @unlink(ptr noundef %305)
  br label %if.end658

if.end658:                                        ; preds = %if.end656, %if.end646
  %306 = load i32, ptr %memDb, align 4
  %tobool659 = icmp ne i32 %306, 0
  br i1 %tobool659, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end658
  br label %cond.end

cond.false:                                       ; preds = %if.end658
  %307 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.305, %cond.true ], [ %307, %cond.false ]
  %308 = load i32, ptr %openFlags, align 4
  %309 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 2), align 8
  %call660 = call i32 @sqlite3_open_v2(ptr noundef %cond, ptr noundef @g, i32 noundef %308, ptr noundef %309)
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %if.then662, label %if.end663

if.then662:                                       ; preds = %cond.end
  %310 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.306, ptr noundef %310)
  br label %if.end663

if.end663:                                        ; preds = %if.then662, %cond.end
  %311 = load i32, ptr %nLook, align 4
  %cmp664 = icmp sgt i32 %311, 0
  br i1 %cmp664, label %land.lhs.true666, label %if.end677

land.lhs.true666:                                 ; preds = %if.end663
  %312 = load i32, ptr %szLook, align 4
  %cmp667 = icmp sgt i32 %312, 0
  br i1 %cmp667, label %if.then669, label %if.end677

if.then669:                                       ; preds = %land.lhs.true666
  %313 = load i32, ptr %nLook, align 4
  %314 = load i32, ptr %szLook, align 4
  %mul670 = mul nsw i32 %313, %314
  %conv671 = sext i32 %mul670 to i64
  %call672 = call ptr @malloc(i64 noundef %conv671) #13
  store ptr %call672, ptr %pLook, align 8
  %315 = load ptr, ptr @g, align 8
  %316 = load ptr, ptr %pLook, align 8
  %317 = load i32, ptr %szLook, align 4
  %318 = load i32, ptr %nLook, align 4
  %call673 = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %315, i32 noundef 1001, ptr noundef %316, i32 noundef %317, i32 noundef %318)
  store i32 %call673, ptr %rc, align 4
  %319 = load i32, ptr %rc, align 4
  %tobool674 = icmp ne i32 %319, 0
  br i1 %tobool674, label %if.then675, label %if.end676

if.then675:                                       ; preds = %if.then669
  %320 = load i32, ptr %rc, align 4
  call void (ptr, ...) @fatal_error(ptr noundef @.str.307, i32 noundef %320)
  br label %if.end676

if.end676:                                        ; preds = %if.then675, %if.then669
  br label %if.end677

if.end677:                                        ; preds = %if.end676, %land.lhs.true666, %if.end663
  %321 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 17), align 4
  %cmp678 = icmp sgt i32 %321, 0
  br i1 %cmp678, label %if.then680, label %if.end682

if.then680:                                       ; preds = %if.end677
  %322 = load ptr, ptr @g, align 8
  %call681 = call i32 @sqlite3_file_control(ptr noundef %322, ptr noundef null, i32 noundef 38, ptr noundef getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 17))
  br label %if.end682

if.end682:                                        ; preds = %if.then680, %if.end677
  %323 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 18), align 8
  %tobool683 = icmp ne i32 %323, 0
  br i1 %tobool683, label %if.then684, label %if.end686

if.then684:                                       ; preds = %if.end682
  %324 = load ptr, ptr @g, align 8
  %call685 = call i32 (ptr, i32, ...) @sqlite3_db_config(ptr noundef %324, i32 noundef 1018, i32 noundef 1, i32 noundef 0)
  br label %if.end686

if.end686:                                        ; preds = %if.then684, %if.end682
  %325 = load ptr, ptr @g, align 8
  %call687 = call i32 @sqlite3_create_function(ptr noundef %325, ptr noundef @.str.308, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef @randomFunc, ptr noundef null, ptr noundef null)
  %326 = load i32, ptr %doTrace, align 4
  %tobool688 = icmp ne i32 %326, 0
  br i1 %tobool688, label %if.then689, label %if.end691

if.then689:                                       ; preds = %if.end686
  %327 = load ptr, ptr @g, align 8
  %call690 = call ptr @sqlite3_trace(ptr noundef %327, ptr noundef @traceCallback, ptr noundef null)
  br label %if.end691

if.end691:                                        ; preds = %if.then689, %if.end686
  %328 = load i32, ptr %memDb, align 4
  %cmp692 = icmp sgt i32 %328, 0
  br i1 %cmp692, label %if.then694, label %if.end695

if.then694:                                       ; preds = %if.end691
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.309)
  br label %if.end695

if.end695:                                        ; preds = %if.then694, %if.end691
  %329 = load i32, ptr %mmapSize, align 4
  %cmp696 = icmp sgt i32 %329, 0
  br i1 %cmp696, label %if.then698, label %if.end699

if.then698:                                       ; preds = %if.end695
  %330 = load i32, ptr %mmapSize, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.310, i32 noundef %330)
  br label %if.end699

if.end699:                                        ; preds = %if.then698, %if.end695
  %331 = load i32, ptr %nThread, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.311, i32 noundef %331)
  %332 = load ptr, ptr %zKey, align 8
  %tobool700 = icmp ne ptr %332, null
  br i1 %tobool700, label %if.then701, label %if.end702

if.then701:                                       ; preds = %if.end699
  %333 = load ptr, ptr %zKey, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.312, ptr noundef %333)
  br label %if.end702

if.end702:                                        ; preds = %if.then701, %if.end699
  %334 = load ptr, ptr %zEncoding, align 8
  %tobool703 = icmp ne ptr %334, null
  br i1 %tobool703, label %if.then704, label %if.end705

if.then704:                                       ; preds = %if.end702
  %335 = load ptr, ptr %zEncoding, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.313, ptr noundef %335)
  br label %if.end705

if.end705:                                        ; preds = %if.then704, %if.end702
  %336 = load i32, ptr %doAutovac, align 4
  %tobool706 = icmp ne i32 %336, 0
  br i1 %tobool706, label %if.then707, label %if.else708

if.then707:                                       ; preds = %if.end705
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.314)
  br label %if.end712

if.else708:                                       ; preds = %if.end705
  %337 = load i32, ptr %doIncrvac, align 4
  %tobool709 = icmp ne i32 %337, 0
  br i1 %tobool709, label %if.then710, label %if.end711

if.then710:                                       ; preds = %if.else708
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.315)
  br label %if.end711

if.end711:                                        ; preds = %if.then710, %if.else708
  br label %if.end712

if.end712:                                        ; preds = %if.end711, %if.then707
  %338 = load i32, ptr %pageSize, align 4
  %tobool713 = icmp ne i32 %338, 0
  br i1 %tobool713, label %if.then714, label %if.end715

if.then714:                                       ; preds = %if.end712
  %339 = load i32, ptr %pageSize, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.316, i32 noundef %339)
  br label %if.end715

if.end715:                                        ; preds = %if.then714, %if.end712
  %340 = load i32, ptr %cacheSize, align 4
  %tobool716 = icmp ne i32 %340, 0
  br i1 %tobool716, label %if.then717, label %if.end718

if.then717:                                       ; preds = %if.end715
  %341 = load i32, ptr %cacheSize, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.317, i32 noundef %341)
  br label %if.end718

if.end718:                                        ; preds = %if.then717, %if.end715
  %342 = load i32, ptr %noSync, align 4
  %tobool719 = icmp ne i32 %342, 0
  br i1 %tobool719, label %if.then720, label %if.else721

if.then720:                                       ; preds = %if.end718
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.318)
  br label %if.end725

if.else721:                                       ; preds = %if.end718
  %343 = load i32, ptr %doFullFSync, align 4
  %tobool722 = icmp ne i32 %343, 0
  br i1 %tobool722, label %if.then723, label %if.end724

if.then723:                                       ; preds = %if.else721
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.319)
  br label %if.end724

if.end724:                                        ; preds = %if.then723, %if.else721
  br label %if.end725

if.end725:                                        ; preds = %if.end724, %if.then720
  %344 = load i32, ptr %doExclusive, align 4
  %tobool726 = icmp ne i32 %344, 0
  br i1 %tobool726, label %if.then727, label %if.end728

if.then727:                                       ; preds = %if.end725
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.320)
  br label %if.end728

if.end728:                                        ; preds = %if.then727, %if.end725
  %345 = load ptr, ptr %zJMode, align 8
  %tobool729 = icmp ne ptr %345, null
  br i1 %tobool729, label %if.then730, label %if.end731

if.then730:                                       ; preds = %if.end728
  %346 = load ptr, ptr %zJMode, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.321, ptr noundef %346)
  br label %if.end731

if.end731:                                        ; preds = %if.then730, %if.end728
  %347 = load i32, ptr %nHardHeapLmt, align 4
  %cmp732 = icmp sgt i32 %347, 0
  br i1 %cmp732, label %if.then734, label %if.end735

if.then734:                                       ; preds = %if.end731
  %348 = load i32, ptr %nHardHeapLmt, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.322, i32 noundef %348)
  br label %if.end735

if.end735:                                        ; preds = %if.then734, %if.end731
  %349 = load i32, ptr %nSoftHeapLmt, align 4
  %cmp736 = icmp sgt i32 %349, 0
  br i1 %cmp736, label %if.then738, label %if.end739

if.then738:                                       ; preds = %if.end735
  %350 = load i32, ptr %nSoftHeapLmt, align 4
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.323, i32 noundef %350)
  br label %if.end739

if.end739:                                        ; preds = %if.then738, %if.end735
  %351 = load ptr, ptr %zJMode, align 8
  %tobool740 = icmp ne ptr %351, null
  br i1 %tobool740, label %if.then741, label %if.end742

if.then741:                                       ; preds = %if.end739
  %352 = load ptr, ptr %zJMode, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.321, ptr noundef %352)
  br label %if.end742

if.end742:                                        ; preds = %if.then741, %if.end739
  %353 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 9), align 4
  %tobool743 = icmp ne i32 %353, 0
  br i1 %tobool743, label %if.then744, label %if.end746

if.then744:                                       ; preds = %if.end742
  %call745 = call i32 (ptr, ...) @printf(ptr noundef @.str.324)
  br label %if.end746

if.end746:                                        ; preds = %if.then744, %if.end742
  %354 = load ptr, ptr %zTSet, align 8
  %call747 = call i32 @strcmp(ptr noundef %354, ptr noundef @.str.237)
  %cmp748 = icmp eq i32 %call747, 0
  br i1 %cmp748, label %if.then750, label %if.end751

if.then750:                                       ; preds = %if.end746
  store ptr @main.zMix1Tests, ptr %zTSet, align 8
  br label %if.end751

if.end751:                                        ; preds = %if.then750, %if.end746
  br label %do.body752

do.body752:                                       ; preds = %do.cond887, %if.end751
  %355 = load ptr, ptr %zTSet, align 8
  store ptr %355, ptr %zThisTest, align 8
  %356 = load ptr, ptr %zThisTest, align 8
  %call753 = call ptr @strchr(ptr noundef %356, i32 noundef 44)
  store ptr %call753, ptr %zComma, align 8
  %357 = load ptr, ptr %zComma, align 8
  %tobool754 = icmp ne ptr %357, null
  br i1 %tobool754, label %if.then755, label %if.else756

if.then755:                                       ; preds = %do.body752
  %358 = load ptr, ptr %zComma, align 8
  store i8 0, ptr %358, align 1
  %359 = load ptr, ptr %zComma, align 8
  %add.ptr = getelementptr inbounds i8, ptr %359, i64 1
  store ptr %add.ptr, ptr %zTSet, align 8
  br label %if.end757

if.else756:                                       ; preds = %do.body752
  store ptr @.str.20, ptr %zTSet, align 8
  br label %if.end757

if.end757:                                        ; preds = %if.else756, %if.then755
  %360 = load ptr, ptr %zThisTest, align 8
  %call758 = call ptr @strchr(ptr noundef %360, i32 noundef 47)
  store ptr %call758, ptr %zSep, align 8
  %361 = load ptr, ptr %zSep, align 8
  %tobool759 = icmp ne ptr %361, null
  br i1 %tobool759, label %if.then760, label %if.else793

if.then760:                                       ; preds = %if.end757
  store i32 1, ptr %kk, align 4
  br label %for.cond761

for.cond761:                                      ; preds = %for.inc772, %if.then760
  %362 = load ptr, ptr %zSep, align 8
  %363 = load i32, ptr %kk, align 4
  %idxprom762 = sext i32 %363 to i64
  %arrayidx763 = getelementptr inbounds i8, ptr %362, i64 %idxprom762
  %364 = load i8, ptr %arrayidx763, align 1
  %conv764 = sext i8 %364 to i32
  %tobool765 = icmp ne i32 %conv764, 0
  br i1 %tobool765, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond761
  %365 = load ptr, ptr %zSep, align 8
  %366 = load i32, ptr %kk, align 4
  %idxprom766 = sext i32 %366 to i64
  %arrayidx767 = getelementptr inbounds i8, ptr %365, i64 %idxprom766
  %367 = load i8, ptr %arrayidx767, align 1
  %conv768 = zext i8 %367 to i32
  %call769 = call i32 @isdigit(i32 noundef %conv768) #10
  %tobool770 = icmp ne i32 %call769, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond761
  %368 = phi i1 [ false, %for.cond761 ], [ %tobool770, %land.rhs ]
  br i1 %368, label %for.body771, label %for.end774

for.body771:                                      ; preds = %land.end
  br label %for.inc772

for.inc772:                                       ; preds = %for.body771
  %369 = load i32, ptr %kk, align 4
  %inc773 = add nsw i32 %369, 1
  store i32 %inc773, ptr %kk, align 4
  br label %for.cond761, !llvm.loop !67

for.end774:                                       ; preds = %land.end
  %370 = load i32, ptr %kk, align 4
  %cmp775 = icmp eq i32 %370, 1
  br i1 %cmp775, label %if.then783, label %lor.lhs.false777

lor.lhs.false777:                                 ; preds = %for.end774
  %371 = load ptr, ptr %zSep, align 8
  %372 = load i32, ptr %kk, align 4
  %idxprom778 = sext i32 %372 to i64
  %arrayidx779 = getelementptr inbounds i8, ptr %371, i64 %idxprom778
  %373 = load i8, ptr %arrayidx779, align 1
  %conv780 = sext i8 %373 to i32
  %cmp781 = icmp ne i32 %conv780, 0
  br i1 %cmp781, label %if.then783, label %if.end784

if.then783:                                       ; preds = %lor.lhs.false777, %for.end774
  %374 = load ptr, ptr %zThisTest, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.325, ptr noundef %374)
  br label %if.end784

if.end784:                                        ; preds = %if.then783, %lor.lhs.false777
  %375 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 14), align 8
  %376 = load ptr, ptr %zSep, align 8
  %add.ptr785 = getelementptr inbounds i8, ptr %376, i64 1
  %call786 = call i32 @integerValue(ptr noundef %add.ptr785)
  %mul787 = mul nsw i32 %375, %call786
  %div = sdiv i32 %mul787, 100
  store i32 %div, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %377 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %cmp788 = icmp sle i32 %377, 0
  br i1 %cmp788, label %if.then790, label %if.end791

if.then790:                                       ; preds = %if.end784
  store i32 1, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  br label %if.end791

if.end791:                                        ; preds = %if.then790, %if.end784
  %378 = load ptr, ptr %zSep, align 8
  %arrayidx792 = getelementptr inbounds i8, ptr %378, i64 0
  store i8 0, ptr %arrayidx792, align 1
  br label %if.end794

if.else793:                                       ; preds = %if.end757
  %379 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 14), align 8
  store i32 %379, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  br label %if.end794

if.end794:                                        ; preds = %if.else793, %if.end791
  %380 = load i64, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 5), align 8
  %cmp795 = icmp sgt i64 %380, 0
  br i1 %cmp795, label %if.then800, label %lor.lhs.false797

lor.lhs.false797:                                 ; preds = %if.end794
  %381 = load ptr, ptr %zComma, align 8
  %cmp798 = icmp eq ptr %381, null
  br i1 %cmp798, label %if.then800, label %if.end802

if.then800:                                       ; preds = %lor.lhs.false797, %if.end794
  %382 = load ptr, ptr %zThisTest, align 8
  %call801 = call i32 (ptr, ...) @printf(ptr noundef @.str.326, ptr noundef %382)
  br label %if.end802

if.end802:                                        ; preds = %if.then800, %lor.lhs.false797
  %383 = load ptr, ptr %zThisTest, align 8
  %call803 = call i32 @strcmp(ptr noundef %383, ptr noundef @.str.327)
  %cmp804 = icmp eq i32 %call803, 0
  br i1 %cmp804, label %if.then806, label %if.else807

if.then806:                                       ; preds = %if.end802
  call void @testset_main()
  br label %if.end868

if.else807:                                       ; preds = %if.end802
  %384 = load ptr, ptr %zThisTest, align 8
  %call808 = call i32 @strcmp(ptr noundef %384, ptr noundef @.str.328)
  %cmp809 = icmp eq i32 %call808, 0
  br i1 %cmp809, label %if.then811, label %if.else812

if.then811:                                       ; preds = %if.else807
  call void @testset_debug1()
  br label %if.end867

if.else812:                                       ; preds = %if.else807
  %385 = load ptr, ptr %zThisTest, align 8
  %call813 = call i32 @strcmp(ptr noundef %385, ptr noundef @.str.329)
  %cmp814 = icmp eq i32 %call813, 0
  br i1 %cmp814, label %if.then816, label %if.else817

if.then816:                                       ; preds = %if.else812
  call void @testset_orm()
  br label %if.end866

if.else817:                                       ; preds = %if.else812
  %386 = load ptr, ptr %zThisTest, align 8
  %call818 = call i32 @strcmp(ptr noundef %386, ptr noundef @.str.330)
  %cmp819 = icmp eq i32 %call818, 0
  br i1 %cmp819, label %if.then821, label %if.else822

if.then821:                                       ; preds = %if.else817
  call void @testset_cte()
  br label %if.end865

if.else822:                                       ; preds = %if.else817
  %387 = load ptr, ptr %zThisTest, align 8
  %call823 = call i32 @strcmp(ptr noundef %387, ptr noundef @.str.331)
  %cmp824 = icmp eq i32 %call823, 0
  br i1 %cmp824, label %if.then826, label %if.else827

if.then826:                                       ; preds = %if.else822
  call void @testset_star()
  br label %if.end864

if.else827:                                       ; preds = %if.else822
  %388 = load ptr, ptr %zThisTest, align 8
  %call828 = call i32 @strcmp(ptr noundef %388, ptr noundef @.str.332)
  %cmp829 = icmp eq i32 %call828, 0
  br i1 %cmp829, label %if.then831, label %if.else832

if.then831:                                       ; preds = %if.else827
  call void @testset_app()
  br label %if.end863

if.else832:                                       ; preds = %if.else827
  %389 = load ptr, ptr %zThisTest, align 8
  %call833 = call i32 @strcmp(ptr noundef %389, ptr noundef @.str.333)
  %cmp834 = icmp eq i32 %call833, 0
  br i1 %cmp834, label %if.then836, label %if.else837

if.then836:                                       ; preds = %if.else832
  call void @testset_fp()
  br label %if.end862

if.else837:                                       ; preds = %if.else832
  %390 = load ptr, ptr %zThisTest, align 8
  %call838 = call i32 @strcmp(ptr noundef %390, ptr noundef @.str.334)
  %cmp839 = icmp eq i32 %call838, 0
  br i1 %cmp839, label %if.then841, label %if.else842

if.then841:                                       ; preds = %if.else837
  call void @testset_json()
  br label %if.end861

if.else842:                                       ; preds = %if.else837
  %391 = load ptr, ptr %zThisTest, align 8
  %call843 = call i32 @strcmp(ptr noundef %391, ptr noundef @.str.335)
  %cmp844 = icmp eq i32 %call843, 0
  br i1 %cmp844, label %if.then846, label %if.else847

if.then846:                                       ; preds = %if.else842
  call void @testset_trigger()
  br label %if.end860

if.else847:                                       ; preds = %if.else842
  %392 = load ptr, ptr %zThisTest, align 8
  %call848 = call i32 @strcmp(ptr noundef %392, ptr noundef @.str.336)
  %cmp849 = icmp eq i32 %call848, 0
  br i1 %cmp849, label %if.then851, label %if.else852

if.then851:                                       ; preds = %if.else847
  call void @testset_parsenumber()
  br label %if.end859

if.else852:                                       ; preds = %if.else847
  %393 = load ptr, ptr %zThisTest, align 8
  %call853 = call i32 @strcmp(ptr noundef %393, ptr noundef @.str.337)
  %cmp854 = icmp eq i32 %call853, 0
  br i1 %cmp854, label %if.then856, label %if.else857

if.then856:                                       ; preds = %if.else852
  call void (ptr, ...) @fatal_error(ptr noundef @.str.338)
  br label %if.end858

if.else857:                                       ; preds = %if.else852
  %394 = load ptr, ptr %zThisTest, align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.339, ptr noundef %394)
  br label %if.end858

if.end858:                                        ; preds = %if.else857, %if.then856
  br label %if.end859

if.end859:                                        ; preds = %if.end858, %if.then851
  br label %if.end860

if.end860:                                        ; preds = %if.end859, %if.then846
  br label %if.end861

if.end861:                                        ; preds = %if.end860, %if.then841
  br label %if.end862

if.end862:                                        ; preds = %if.end861, %if.then836
  br label %if.end863

if.end863:                                        ; preds = %if.end862, %if.then831
  br label %if.end864

if.end864:                                        ; preds = %if.end863, %if.then826
  br label %if.end865

if.end865:                                        ; preds = %if.end864, %if.then821
  br label %if.end866

if.end866:                                        ; preds = %if.end865, %if.then816
  br label %if.end867

if.end867:                                        ; preds = %if.end866, %if.then811
  br label %if.end868

if.end868:                                        ; preds = %if.end867, %if.then806
  %395 = load ptr, ptr %zTSet, align 8
  %arrayidx869 = getelementptr inbounds i8, ptr %395, i64 0
  %396 = load i8, ptr %arrayidx869, align 1
  %tobool870 = icmp ne i8 %396, 0
  br i1 %tobool870, label %if.then871, label %if.end886

if.then871:                                       ; preds = %if.end868
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 999, ptr noundef @.str.340)
  br label %while.body

while.body:                                       ; preds = %if.then871, %if.end876
  %call872 = call ptr (ptr, ...) @speedtest1_once(ptr noundef @.str.341)
  store ptr %call872, ptr %zObj, align 8
  %397 = load ptr, ptr %zObj, align 8
  %cmp873 = icmp eq ptr %397, null
  br i1 %cmp873, label %if.then875, label %if.end876

if.then875:                                       ; preds = %while.body
  br label %while.end

if.end876:                                        ; preds = %while.body
  %398 = load ptr, ptr %zObj, align 8
  %call877 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.342, ptr noundef %398)
  store ptr %call877, ptr %zSql, align 8
  %399 = load ptr, ptr %zSql, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef %399)
  %400 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %400)
  %401 = load ptr, ptr %zObj, align 8
  call void @sqlite3_free(ptr noundef %401)
  br label %while.body

while.end:                                        ; preds = %if.then875
  br label %while.body878

while.body878:                                    ; preds = %while.end, %if.end883
  %call879 = call ptr (ptr, ...) @speedtest1_once(ptr noundef @.str.343)
  store ptr %call879, ptr %zObj, align 8
  %402 = load ptr, ptr %zObj, align 8
  %cmp880 = icmp eq ptr %402, null
  br i1 %cmp880, label %if.then882, label %if.end883

if.then882:                                       ; preds = %while.body878
  br label %while.end885

if.end883:                                        ; preds = %while.body878
  %403 = load ptr, ptr %zObj, align 8
  %call884 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.342, ptr noundef %403)
  store ptr %call884, ptr %zSql, align 8
  %404 = load ptr, ptr %zSql, align 8
  call void (ptr, ...) @speedtest1_exec(ptr noundef %404)
  %405 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %405)
  %406 = load ptr, ptr %zObj, align 8
  call void @sqlite3_free(ptr noundef %406)
  br label %while.body878

while.end885:                                     ; preds = %if.then882
  call void @speedtest1_end_test()
  br label %if.end886

if.end886:                                        ; preds = %while.end885, %if.end868
  br label %do.cond887

do.cond887:                                       ; preds = %if.end886
  %407 = load ptr, ptr %zTSet, align 8
  %arrayidx888 = getelementptr inbounds i8, ptr %407, i64 0
  %408 = load i8, ptr %arrayidx888, align 1
  %tobool889 = icmp ne i8 %408, 0
  br i1 %tobool889, label %do.body752, label %do.end890, !llvm.loop !68

do.end890:                                        ; preds = %do.cond887
  call void @speedtest1_final()
  %409 = load i32, ptr %showStats, align 4
  %tobool891 = icmp ne i32 %409, 0
  br i1 %tobool891, label %if.then892, label %if.end894

if.then892:                                       ; preds = %do.end890
  %410 = load ptr, ptr @g, align 8
  %call893 = call i32 @sqlite3_exec(ptr noundef %410, ptr noundef @.str.344, ptr noundef @xCompileOptions, ptr noundef null, ptr noundef null)
  br label %if.end894

if.end894:                                        ; preds = %if.then892, %do.end890
  %411 = load i32, ptr %showStats, align 4
  %tobool895 = icmp ne i32 %411, 0
  br i1 %tobool895, label %if.then896, label %if.end917

if.then896:                                       ; preds = %if.end894
  %412 = load ptr, ptr @g, align 8
  %call897 = call i32 @sqlite3_db_status(ptr noundef %412, i32 noundef 0, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %413 = load i32, ptr %iCur, align 4
  %414 = load i32, ptr %iHi, align 4
  %call898 = call i32 (ptr, ...) @printf(ptr noundef @.str.345, i32 noundef %413, i32 noundef %414)
  %415 = load ptr, ptr @g, align 8
  %call899 = call i32 @sqlite3_db_status(ptr noundef %415, i32 noundef 4, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %416 = load i32, ptr %iHi, align 4
  %call900 = call i32 (ptr, ...) @printf(ptr noundef @.str.346, i32 noundef %416)
  %417 = load ptr, ptr @g, align 8
  %call901 = call i32 @sqlite3_db_status(ptr noundef %417, i32 noundef 5, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %418 = load i32, ptr %iHi, align 4
  %call902 = call i32 (ptr, ...) @printf(ptr noundef @.str.347, i32 noundef %418)
  %419 = load ptr, ptr @g, align 8
  %call903 = call i32 @sqlite3_db_status(ptr noundef %419, i32 noundef 6, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %420 = load i32, ptr %iHi, align 4
  %call904 = call i32 (ptr, ...) @printf(ptr noundef @.str.348, i32 noundef %420)
  %421 = load ptr, ptr @g, align 8
  %call905 = call i32 @sqlite3_db_status(ptr noundef %421, i32 noundef 1, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %422 = load i32, ptr %iCur, align 4
  %call906 = call i32 (ptr, ...) @printf(ptr noundef @.str.349, i32 noundef %422)
  %423 = load ptr, ptr @g, align 8
  %call907 = call i32 @sqlite3_db_status(ptr noundef %423, i32 noundef 7, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 1)
  %424 = load i32, ptr %iCur, align 4
  %call908 = call i32 (ptr, ...) @printf(ptr noundef @.str.350, i32 noundef %424)
  %425 = load ptr, ptr @g, align 8
  %call909 = call i32 @sqlite3_db_status(ptr noundef %425, i32 noundef 8, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 1)
  %426 = load i32, ptr %iCur, align 4
  %call910 = call i32 (ptr, ...) @printf(ptr noundef @.str.351, i32 noundef %426)
  %427 = load ptr, ptr @g, align 8
  %call911 = call i32 @sqlite3_db_status(ptr noundef %427, i32 noundef 9, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 1)
  %428 = load i32, ptr %iCur, align 4
  %call912 = call i32 (ptr, ...) @printf(ptr noundef @.str.352, i32 noundef %428)
  %429 = load ptr, ptr @g, align 8
  %call913 = call i32 @sqlite3_db_status(ptr noundef %429, i32 noundef 2, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %430 = load i32, ptr %iCur, align 4
  %call914 = call i32 (ptr, ...) @printf(ptr noundef @.str.353, i32 noundef %430)
  %431 = load ptr, ptr @g, align 8
  %call915 = call i32 @sqlite3_db_status(ptr noundef %431, i32 noundef 3, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %432 = load i32, ptr %iCur, align 4
  %call916 = call i32 (ptr, ...) @printf(ptr noundef @.str.354, i32 noundef %432)
  br label %if.end917

if.end917:                                        ; preds = %if.then896, %if.end894
  %433 = load ptr, ptr @g, align 8
  %call918 = call i32 @sqlite3_close(ptr noundef %433)
  %434 = load i32, ptr %showStats, align 4
  %tobool919 = icmp ne i32 %434, 0
  br i1 %tobool919, label %if.then920, label %if.end931

if.then920:                                       ; preds = %if.end917
  %call921 = call i32 @sqlite3_status(i32 noundef 0, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %435 = load i32, ptr %iCur, align 4
  %436 = load i32, ptr %iHi, align 4
  %call922 = call i32 (ptr, ...) @printf(ptr noundef @.str.355, i32 noundef %435, i32 noundef %436)
  %call923 = call i32 @sqlite3_status(i32 noundef 9, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %437 = load i32, ptr %iCur, align 4
  %438 = load i32, ptr %iHi, align 4
  %call924 = call i32 (ptr, ...) @printf(ptr noundef @.str.356, i32 noundef %437, i32 noundef %438)
  %call925 = call i32 @sqlite3_status(i32 noundef 2, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %439 = load i32, ptr %iCur, align 4
  %440 = load i32, ptr %iHi, align 4
  %call926 = call i32 (ptr, ...) @printf(ptr noundef @.str.357, i32 noundef %439, i32 noundef %440)
  %call927 = call i32 @sqlite3_status(i32 noundef 5, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %441 = load i32, ptr %iHi, align 4
  %call928 = call i32 (ptr, ...) @printf(ptr noundef @.str.358, i32 noundef %441)
  %call929 = call i32 @sqlite3_status(i32 noundef 7, ptr noundef %iCur, ptr noundef %iHi, i32 noundef 0)
  %442 = load i32, ptr %iHi, align 4
  %call930 = call i32 (ptr, ...) @printf(ptr noundef @.str.359, i32 noundef %442)
  br label %if.end931

if.end931:                                        ; preds = %if.then920, %if.end917
  %443 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %tobool932 = icmp ne ptr %443, null
  br i1 %tobool932, label %if.then933, label %if.end935

if.then933:                                       ; preds = %if.end931
  %444 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 28), align 8
  %call934 = call i32 @fclose(ptr noundef %444)
  br label %if.end935

if.end935:                                        ; preds = %if.then933, %if.end931
  %445 = load ptr, ptr %pLook, align 8
  call void @free(ptr noundef %445)
  %446 = load ptr, ptr %pPCache, align 8
  call void @free(ptr noundef %446)
  %447 = load ptr, ptr %pHeap, align 8
  call void @free(ptr noundef %447)
  ret i32 0
}

declare ptr @sqlite3_libversion() #1

declare ptr @sqlite3_sourceid() #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @integerValue(ptr noundef %zArg) #0 {
entry:
  %zArg.addr = alloca ptr, align 8
  %v = alloca i64, align 8
  %i = alloca i32, align 4
  %isNeg = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %zArg, ptr %zArg.addr, align 8
  store i64 0, ptr %v, align 8
  store i32 0, ptr %isNeg, align 4
  %0 = load ptr, ptr %zArg.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %isNeg, align 4
  %2 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zArg.addr, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %zArg.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %5 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr7, ptr %zArg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %zArg.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 48
  br i1 %cmp11, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.end8
  %8 = load ptr, ptr %zArg.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 120
  br i1 %cmp15, label %if.then17, label %if.else23

if.then17:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %zArg.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 2
  store ptr %add.ptr, ptr %zArg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %11 = load ptr, ptr %zArg.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx18, align 1
  %call = call i32 @hexDigitValue(i8 noundef signext %12)
  store i32 %call, ptr %x, align 4
  %cmp19 = icmp sge i32 %call, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, ptr %v, align 8
  %shl = shl i64 %13, 4
  %14 = load i32, ptr %x, align 4
  %conv21 = sext i32 %14 to i64
  %add = add nsw i64 %shl, %conv21
  store i64 %add, ptr %v, align 8
  %15 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr22, ptr %zArg.addr, align 8
  br label %while.cond, !llvm.loop !69

while.end:                                        ; preds = %while.cond
  br label %if.end34

if.else23:                                        ; preds = %land.lhs.true, %if.end8
  br label %while.cond24

while.cond24:                                     ; preds = %while.body28, %if.else23
  %16 = load ptr, ptr %zArg.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %17 to i32
  %call27 = call i32 @isdigit(i32 noundef %conv26) #10
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %while.body28, label %while.end33

while.body28:                                     ; preds = %while.cond24
  %18 = load i64, ptr %v, align 8
  %mul = mul nsw i64 %18, 10
  %19 = load ptr, ptr %zArg.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %20 to i64
  %add31 = add nsw i64 %mul, %conv30
  %sub = sub nsw i64 %add31, 48
  store i64 %sub, ptr %v, align 8
  %21 = load ptr, ptr %zArg.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr32, ptr %zArg.addr, align 8
  br label %while.cond24, !llvm.loop !70

while.end33:                                      ; preds = %while.cond24
  br label %if.end34

if.end34:                                         ; preds = %while.end33, %while.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end34
  %22 = load i32, ptr %i, align 4
  %conv35 = sext i32 %22 to i64
  %cmp36 = icmp ult i64 %conv35, 9
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx38 = getelementptr inbounds [9 x %struct.anon], ptr @integerValue.aMult, i64 0, i64 %idxprom
  %zSuffix = getelementptr inbounds %struct.anon, ptr %arrayidx38, i32 0, i32 0
  %24 = load ptr, ptr %zSuffix, align 8
  %25 = load ptr, ptr %zArg.addr, align 8
  %call39 = call i32 @sqlite3_stricmp(ptr noundef %24, ptr noundef %25)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end47

if.then42:                                        ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [9 x %struct.anon], ptr @integerValue.aMult, i64 0, i64 %idxprom43
  %iMult = getelementptr inbounds %struct.anon, ptr %arrayidx44, i32 0, i32 1
  %27 = load i32, ptr %iMult, align 8
  %conv45 = sext i32 %27 to i64
  %28 = load i64, ptr %v, align 8
  %mul46 = mul nsw i64 %28, %conv45
  store i64 %mul46, ptr %v, align 8
  br label %for.end

if.end47:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %if.then42, %for.cond
  %30 = load i64, ptr %v, align 8
  %cmp48 = icmp sgt i64 %30, 2147483647
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.end
  call void (ptr, ...) @fatal_error(ptr noundef @.str.375)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %for.end
  %31 = load i32, ptr %isNeg, align 4
  %tobool52 = icmp ne i32 %31, 0
  br i1 %tobool52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end51
  %32 = load i64, ptr %v, align 8
  %sub53 = sub nsw i64 0, %32
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  %33 = load i64, ptr %v, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub53, %cond.true ], [ %33, %cond.false ]
  %conv54 = trunc i64 %cond to i32
  ret i32 %conv54
}

declare i32 @sqlite3_config(i32 noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @HashInit() #0 {
entry:
  %k = alloca i32, align 4
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 1), align 1
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 2), align 2
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, ptr %k, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 30, i32 3), i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %k, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @atoi(ptr noundef) #1

declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #6

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

declare i32 @sqlite3_initialize() #1

declare i32 @unlink(ptr noundef) #1

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_db_config(ptr noundef, i32 noundef, ...) #1

declare i32 @sqlite3_file_control(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @randomFunc(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %NotUsed2) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %NotUsed2.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %NotUsed2, ptr %NotUsed2.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call i32 @speedtest1_random()
  %conv = zext i32 %call to i64
  call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %conv)
  ret void
}

declare ptr @sqlite3_trace(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @traceCallback(ptr noundef %NotUsed, ptr noundef %zSql) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  %0 = load ptr, ptr %zSql.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %zSql.addr, align 8
  %3 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 59
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %zSql.addr, align 8
  %6 = load i32, ptr %n, align 4
  %sub5 = sub nsw i32 %6, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %call9 = call i32 @isspace(i32 noundef %conv8) #10
  %tobool = icmp ne i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, ptr %n, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond, !llvm.loop !73

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %zSql.addr, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.361, i32 noundef %12, ptr noundef %13)
  ret void
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal void @testset_app() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %dbMain = alloca ptr, align 8
  %dbAux = alloca ptr, align 8
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 100, ptr noundef @.str.376)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.377)
  %call = call i32 @sqlite3_compileoption_used(ptr noundef @.str.378)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.379)
  br label %if.end

if.else:                                          ; preds = %entry
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.380)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.381)
  call void @speedtest1_end_test()
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 13), align 4
  %mul = mul nsw i32 %0, 3
  store i32 %mul, ptr %n, align 4
  %1 = load i32, ptr %n, align 4
  call void (i32, ptr, ...) @speedtest1_begin_test(i32 noundef 110, ptr noundef @.str.382, i32 noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @g, align 8
  store ptr %4, ptr %dbMain, align 8
  store ptr null, ptr %dbAux, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 2), align 8
  %call4 = call i32 @sqlite3_open_v2(ptr noundef %8, ptr noundef %dbAux, i32 noundef 2, ptr noundef %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 1), align 8
  call void (ptr, ...) @fatal_error(ptr noundef @.str.306, ptr noundef %10)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3
  %11 = load ptr, ptr %dbAux, align 8
  store ptr %11, ptr @g, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %for.body
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.383)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.384)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.385)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.386)
  call void (ptr, ...) @speedtest1_exec(ptr noundef @.str.387)
  %12 = load ptr, ptr %dbAux, align 8
  %call9 = call i32 @sqlite3_close(ptr noundef %12)
  %13 = load ptr, ptr %dbMain, align 8
  store ptr %13, ptr @g, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  call void @speedtest1_end_test()
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @xCompileOptions(ptr noundef %pCtx, i32 noundef %nVal, ptr noundef %azVal, ptr noundef %azCol) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nVal.addr = alloca i32, align 4
  %azVal.addr = alloca ptr, align 8
  %azCol.addr = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nVal, ptr %nVal.addr, align 4
  store ptr %azVal, ptr %azVal.addr, align 8
  store ptr %azCol, ptr %azCol.addr, align 8
  %0 = load ptr, ptr %azVal.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.388, ptr noundef %1)
  ret i32 0
}

declare i32 @sqlite3_db_status(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sqlite3_close(ptr noundef) #1

declare i32 @sqlite3_status(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @free(ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #8

declare i32 @sqlite3_strglob(ptr noundef, ptr noundef) #1

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @hexDigitValue(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, ptr %c.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 48
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8, ptr %c.addr, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp sge i32 %conv6, 97
  br i1 %cmp7, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %4 = load i8, ptr %c.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 102
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true9
  %5 = load i8, ptr %c.addr, align 1
  %conv14 = sext i8 %5 to i32
  %sub15 = sub nsw i32 %conv14, 97
  %add = add nsw i32 %sub15, 10
  store i32 %add, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true9, %if.end
  %6 = load i8, ptr %c.addr, align 1
  %conv17 = sext i8 %6 to i32
  %cmp18 = icmp sge i32 %conv17, 65
  br i1 %cmp18, label %land.lhs.true20, label %if.end28

land.lhs.true20:                                  ; preds = %if.end16
  %7 = load i8, ptr %c.addr, align 1
  %conv21 = sext i8 %7 to i32
  %cmp22 = icmp sle i32 %conv21, 70
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %land.lhs.true20
  %8 = load i8, ptr %c.addr, align 1
  %conv25 = sext i8 %8 to i32
  %sub26 = sub nsw i32 %conv25, 65
  %add27 = add nsw i32 %sub26, 10
  store i32 %add27, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true20, %if.end16
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then24, %if.then13, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

declare i32 @sqlite3_compileoption_used(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { cold noreturn }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define void @pc_inline_source_snapshot_public_repos_sqlite_test_speedtest1_0()  alwaysinline#0 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @g, align 8
  %call = call i32 @sqlite3_db_release_memory(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define void @pc_inline_source_snapshot_public_repos_sqlite_test_speedtest1_1()  alwaysinline#0 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @g, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @g, align 8
  %call = call i32 @sqlite3_db_release_memory(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
