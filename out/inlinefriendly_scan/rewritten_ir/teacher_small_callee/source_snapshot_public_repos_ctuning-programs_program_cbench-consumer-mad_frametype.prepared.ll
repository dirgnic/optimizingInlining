; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/frametype.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/frametype.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_frametype = type { ptr, i32, ptr, i32, ptr }

@fields_text = internal constant [2 x i32] [i32 0, i32 6], align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown text information frame\00", align 1
@id3_frametype_text = constant %struct.id3_frametype { ptr null, i32 2, ptr @fields_text, i32 0, ptr @.str }, align 8
@fields_url = internal constant [1 x i32] [i32 1], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown URL link frame\00", align 1
@id3_frametype_url = constant %struct.id3_frametype { ptr null, i32 1, ptr @fields_url, i32 0, ptr @.str.1 }, align 8
@fields_unknown = internal constant [1 x i32] [i32 15], align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Experimental frame\00", align 1
@id3_frametype_experimental = constant %struct.id3_frametype { ptr null, i32 1, ptr @fields_unknown, i32 0, ptr @.str.2 }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Unknown frame\00", align 1
@id3_frametype_unknown = constant %struct.id3_frametype { ptr null, i32 1, ptr @fields_unknown, i32 0, ptr @.str.3 }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Obsolete frame\00", align 1
@id3_frametype_obsolete = constant %struct.id3_frametype { ptr null, i32 1, ptr @fields_unknown, i32 24576, ptr @.str.4 }, align 8
@id3_frametype_lookup.wordlist = internal constant [84 x %struct.id3_frametype] [%struct.id3_frametype { ptr @.str.5, i32 2, ptr @fields_text, i32 0, ptr @.str.6 }, %struct.id3_frametype { ptr @.str.7, i32 2, ptr @fields_text, i32 0, ptr @.str.8 }, %struct.id3_frametype { ptr @.str.9, i32 4, ptr @fields_COMM, i32 0, ptr @.str.10 }, %struct.id3_frametype { ptr @.str.11, i32 2, ptr @fields_text, i32 0, ptr @.str.12 }, %struct.id3_frametype { ptr @.str.13, i32 2, ptr @fields_text, i32 0, ptr @.str.14 }, %struct.id3_frametype { ptr @.str.15, i32 2, ptr @fields_text, i32 0, ptr @.str.16 }, %struct.id3_frametype { ptr @.str.17, i32 6, ptr @fields_MLLT, i32 8192, ptr @.str.18 }, %struct.id3_frametype { ptr @.str.19, i32 9, ptr @fields_COMR, i32 0, ptr @.str.20 }, %struct.id3_frametype { ptr @.str.21, i32 2, ptr @fields_text, i32 0, ptr @.str.22 }, %struct.id3_frametype { ptr @.str.23, i32 2, ptr @fields_text, i32 0, ptr @.str.24 }, %struct.id3_frametype { ptr @.str.25, i32 2, ptr @fields_text, i32 0, ptr @.str.26 }, %struct.id3_frametype { ptr @.str.27, i32 2, ptr @fields_text, i32 0, ptr @.str.28 }, %struct.id3_frametype { ptr @.str.29, i32 2, ptr @fields_text, i32 0, ptr @.str.30 }, %struct.id3_frametype { ptr @.str.31, i32 2, ptr @fields_ETCO, i32 8192, ptr @.str.32 }, %struct.id3_frametype { ptr @.str.33, i32 2, ptr @fields_text, i32 0, ptr @.str.34 }, %struct.id3_frametype { ptr @.str.35, i32 2, ptr @fields_text, i32 0, ptr @.str.36 }, %struct.id3_frametype { ptr @.str.37, i32 2, ptr @fields_text, i32 0, ptr @.str.38 }, %struct.id3_frametype { ptr @.str.39, i32 2, ptr @fields_text, i32 0, ptr @.str.40 }, %struct.id3_frametype { ptr @.str.41, i32 2, ptr @fields_text, i32 0, ptr @.str.42 }, %struct.id3_frametype { ptr @.str.43, i32 2, ptr @fields_text, i32 0, ptr @.str.44 }, %struct.id3_frametype { ptr @.str.45, i32 2, ptr @fields_text, i32 0, ptr @.str.46 }, %struct.id3_frametype { ptr @.str.47, i32 1, ptr @fields_url, i32 0, ptr @.str.48 }, %struct.id3_frametype { ptr @.str.49, i32 2, ptr @fields_text, i32 8192, ptr @.str.50 }, %struct.id3_frametype { ptr @.str.51, i32 2, ptr @fields_text, i32 0, ptr @.str.52 }, %struct.id3_frametype { ptr @.str.53, i32 2, ptr @fields_text, i32 8192, ptr @.str.54 }, %struct.id3_frametype { ptr @.str.55, i32 1, ptr @fields_MCDI, i32 0, ptr @.str.56 }, %struct.id3_frametype { ptr @.str.57, i32 2, ptr @fields_SYTC, i32 8192, ptr @.str.58 }, %struct.id3_frametype { ptr @.str.59, i32 2, ptr @fields_text, i32 0, ptr @.str.60 }, %struct.id3_frametype { ptr @.str.61, i32 6, ptr @fields_SYLT, i32 8192, ptr @.str.62 }, %struct.id3_frametype { ptr @.str.63, i32 2, ptr @fields_text, i32 0, ptr @.str.64 }, %struct.id3_frametype { ptr @.str.65, i32 2, ptr @fields_text, i32 0, ptr @.str.66 }, %struct.id3_frametype { ptr @.str.67, i32 3, ptr @fields_ENCR, i32 0, ptr @.str.68 }, %struct.id3_frametype { ptr @.str.69, i32 2, ptr @fields_text, i32 0, ptr @.str.70 }, %struct.id3_frametype { ptr @.str.71, i32 2, ptr @fields_text, i32 0, ptr @.str.72 }, %struct.id3_frametype { ptr @.str.73, i32 2, ptr @fields_text, i32 0, ptr @.str.74 }, %struct.id3_frametype { ptr @.str.75, i32 2, ptr @fields_text, i32 0, ptr @.str.76 }, %struct.id3_frametype { ptr @.str.77, i32 2, ptr @fields_text, i32 0, ptr @.str.78 }, %struct.id3_frametype { ptr @.str.79, i32 1, ptr @fields_url, i32 0, ptr @.str.80 }, %struct.id3_frametype { ptr @.str.81, i32 4, ptr @fields_USLT, i32 0, ptr @.str.82 }, %struct.id3_frametype { ptr @.str.83, i32 2, ptr @fields_text, i32 0, ptr @.str.84 }, %struct.id3_frametype { ptr @.str.85, i32 2, ptr @fields_text, i32 0, ptr @.str.86 }, %struct.id3_frametype { ptr @.str.87, i32 2, ptr @fields_text, i32 0, ptr @.str.88 }, %struct.id3_frametype { ptr @.str.89, i32 2, ptr @fields_POSS, i32 8192, ptr @.str.90 }, %struct.id3_frametype { ptr @.str.91, i32 1, ptr @fields_PCNT, i32 0, ptr @.str.92 }, %struct.id3_frametype { ptr @.str.93, i32 3, ptr @fields_LINK, i32 0, ptr @.str.94 }, %struct.id3_frametype { ptr @.str.95, i32 2, ptr @fields_text, i32 0, ptr @.str.96 }, %struct.id3_frametype { ptr @.str.97, i32 2, ptr @fields_text, i32 0, ptr @.str.98 }, %struct.id3_frametype { ptr @.str.99, i32 2, ptr @fields_text, i32 0, ptr @.str.100 }, %struct.id3_frametype { ptr @.str.101, i32 4, ptr @fields_AENC, i32 8192, ptr @.str.102 }, %struct.id3_frametype { ptr @.str.103, i32 2, ptr @fields_SIGN, i32 0, ptr @.str.104 }, %struct.id3_frametype { ptr @.str.105, i32 2, ptr @fields_text, i32 0, ptr @.str.106 }, %struct.id3_frametype { ptr @.str.107, i32 1, ptr @fields_url, i32 0, ptr @.str.108 }, %struct.id3_frametype { ptr @.str.109, i32 2, ptr @fields_text, i32 0, ptr @.str.110 }, %struct.id3_frametype { ptr @.str.111, i32 4, ptr @fields_OWNE, i32 0, ptr @.str.112 }, %struct.id3_frametype { ptr @.str.113, i32 5, ptr @fields_APIC, i32 0, ptr @.str.114 }, %struct.id3_frametype { ptr @.str.115, i32 1, ptr @fields_url, i32 0, ptr @.str.116 }, %struct.id3_frametype { ptr @.str.117, i32 1, ptr @fields_url, i32 0, ptr @.str.118 }, %struct.id3_frametype { ptr @.str.119, i32 2, ptr @fields_text, i32 0, ptr @.str.120 }, %struct.id3_frametype { ptr @.str.121, i32 5, ptr @fields_ASPI, i32 8192, ptr @.str.122 }, %struct.id3_frametype { ptr @.str.123, i32 1, ptr @fields_url, i32 0, ptr @.str.124 }, %struct.id3_frametype { ptr @.str.125, i32 2, ptr @fields_text, i32 0, ptr @.str.126 }, %struct.id3_frametype { ptr @.str.127, i32 2, ptr @fields_text, i32 0, ptr @.str.128 }, %struct.id3_frametype { ptr @.str.129, i32 3, ptr @fields_USER, i32 0, ptr @.str.130 }, %struct.id3_frametype { ptr @.str.131, i32 2, ptr @fields_text, i32 0, ptr @.str.132 }, %struct.id3_frametype { ptr @.str.133, i32 3, ptr @fields_POPM, i32 0, ptr @.str.134 }, %struct.id3_frametype { ptr @.str.135, i32 2, ptr @fields_ZOBS, i32 24576, ptr @.str.4 }, %struct.id3_frametype { ptr @.str.136, i32 3, ptr @fields_EQU2, i32 8192, ptr @.str.137 }, %struct.id3_frametype { ptr @.str.138, i32 2, ptr @fields_text, i32 0, ptr @.str.139 }, %struct.id3_frametype { ptr @.str.140, i32 1, ptr @fields_SEEK, i32 8192, ptr @.str.141 }, %struct.id3_frametype { ptr @.str.142, i32 2, ptr @fields_text, i32 0, ptr @.str.143 }, %struct.id3_frametype { ptr @.str.144, i32 2, ptr @fields_UFID, i32 0, ptr @.str.145 }, %struct.id3_frametype { ptr @.str.146, i32 3, ptr @fields_GRID, i32 0, ptr @.str.147 }, %struct.id3_frametype { ptr @.str.148, i32 2, ptr @fields_text, i32 0, ptr @.str.149 }, %struct.id3_frametype { ptr @.str.150, i32 2, ptr @fields_PRIV, i32 0, ptr @.str.151 }, %struct.id3_frametype { ptr @.str.152, i32 2, ptr @fields_text, i32 0, ptr @.str.153 }, %struct.id3_frametype { ptr @.str.154, i32 5, ptr @fields_GEOB, i32 0, ptr @.str.155 }, %struct.id3_frametype { ptr @.str.156, i32 3, ptr @fields_RBUF, i32 0, ptr @.str.157 }, %struct.id3_frametype { ptr @.str.158, i32 10, ptr @fields_RVRB, i32 0, ptr @.str.159 }, %struct.id3_frametype { ptr @.str.160, i32 2, ptr @fields_RVA2, i32 8192, ptr @.str.161 }, %struct.id3_frametype { ptr @.str.162, i32 2, ptr @fields_text, i32 0, ptr @.str.163 }, %struct.id3_frametype { ptr @.str.164, i32 3, ptr @fields_TXXX, i32 0, ptr @.str.165 }, %struct.id3_frametype { ptr @.str.166, i32 1, ptr @fields_url, i32 0, ptr @.str.167 }, %struct.id3_frametype { ptr @.str.168, i32 1, ptr @fields_url, i32 0, ptr @.str.169 }, %struct.id3_frametype { ptr @.str.170, i32 3, ptr @fields_WXXX, i32 0, ptr @.str.171 }], align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"TMOO\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Mood\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TCOM\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Composer\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@fields_COMM = internal constant [4 x i32] [i32 0, i32 7, i32 4, i32 5], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"Comments\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"TIT3\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Subtitle/description refinement\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TMCL\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Musician credits list\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TSOT\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Title sort order\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"MLLT\00", align 1
@fields_MLLT = internal constant [6 x i32] [i32 11, i32 12, i32 12, i32 10, i32 10, i32 15], align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"MPEG location lookup table\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"COMR\00", align 1
@fields_COMR = internal constant [9 x i32] [i32 0, i32 1, i32 9, i32 1, i32 10, i32 4, i32 4, i32 1, i32 15], align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"Commercial frame\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"TSST\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Set subtitle\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Content type\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"TFLT\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"File type\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TRSO\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Internet radio station owner\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TSRC\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"ISRC (international standard recording code)\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"ETCO\00", align 1
@fields_ETCO = internal constant [2 x i32] [i32 10, i32 15], align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"Event timing codes\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"TIT2\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Title/songname/content description\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"TOFN\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Original filename\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"TIT1\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Content group description\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"TOAL\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Original album/movie/show title\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"TRSN\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Internet radio station name\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"TSOA\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Album sort order\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"TSSE\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"Software/hardware and settings used for encoding\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"WCOM\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Commercial information\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"TENC\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Encoded by\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"TOLY\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Original lyricist(s)/text writer(s)\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"TLEN\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"MCDI\00", align 1
@fields_MCDI = internal constant [1 x i32] [i32 15], align 4
@.str.56 = private unnamed_addr constant [20 x i8] c"Music CD identifier\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"SYTC\00", align 1
@fields_SYTC = internal constant [2 x i32] [i32 10, i32 15], align 4
@.str.58 = private unnamed_addr constant [25 x i8] c"Synchronised tempo codes\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"TCOP\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Copyright message\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"SYLT\00", align 1
@fields_SYLT = internal constant [6 x i32] [i32 0, i32 7, i32 10, i32 10, i32 4, i32 15], align 4
@.str.62 = private unnamed_addr constant [24 x i8] c"Synchronised lyric/text\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"TLAN\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Language(s)\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"TIPL\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Involved people list\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"ENCR\00", align 1
@fields_ENCR = internal constant [3 x i32] [i32 1, i32 10, i32 15], align 4
@.str.68 = private unnamed_addr constant [31 x i8] c"Encryption method registration\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"TOWN\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"File owner/licensee\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"TPOS\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Part of a set\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"TSOP\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"Performer sort order\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"TDOR\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Original release time\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"TDRC\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"Recording time\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"WORS\00", align 1
@.str.80 = private unnamed_addr constant [41 x i8] c"Official Internet radio station homepage\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"USLT\00", align 1
@fields_USLT = internal constant [4 x i32] [i32 0, i32 7, i32 4, i32 5], align 4
@.str.82 = private unnamed_addr constant [40 x i8] c"Unsynchronised lyric/text transcription\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"TRCK\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"Track number/position in set\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"TPRO\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Produced notice\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"TDRL\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"Release time\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"POSS\00", align 1
@fields_POSS = internal constant [2 x i32] [i32 10, i32 15], align 4
@.str.90 = private unnamed_addr constant [31 x i8] c"Position synchronisation frame\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"PCNT\00", align 1
@fields_PCNT = internal constant [1 x i32] [i32 14], align 4
@.str.92 = private unnamed_addr constant [13 x i8] c"Play counter\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@fields_LINK = internal constant [3 x i32] [i32 8, i32 1, i32 3], align 4
@.str.94 = private unnamed_addr constant [19 x i8] c"Linked information\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"TMED\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"Media type\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"Lyricist/text writer\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"TOPE\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"Original artist(s)/performer(s)\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"AENC\00", align 1
@fields_AENC = internal constant [4 x i32] [i32 1, i32 11, i32 11, i32 15], align 4
@.str.102 = private unnamed_addr constant [17 x i8] c"Audio encryption\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"SIGN\00", align 1
@fields_SIGN = internal constant [2 x i32] [i32 10, i32 15], align 4
@.str.104 = private unnamed_addr constant [16 x i8] c"Signature frame\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"TPE3\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"Conductor/performer refinement\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"WOAS\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"Official audio source webpage\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"TALB\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"Album/movie/show title\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"OWNE\00", align 1
@fields_OWNE = internal constant [4 x i32] [i32 0, i32 1, i32 9, i32 4], align 4
@.str.112 = private unnamed_addr constant [16 x i8] c"Ownership frame\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@fields_APIC = internal constant [5 x i32] [i32 0, i32 1, i32 10, i32 4, i32 15], align 4
@.str.114 = private unnamed_addr constant [17 x i8] c"Attached picture\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"WOAR\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"Official artist/performer webpage\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"WOAF\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"Official audio file webpage\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"TDEN\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"Encoding time\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"ASPI\00", align 1
@fields_ASPI = internal constant [5 x i32] [i32 13, i32 13, i32 11, i32 10, i32 15], align 4
@.str.122 = private unnamed_addr constant [23 x i8] c"Audio seek point index\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"WCOP\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"Copyright/legal information\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"TDLY\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"Playlist delay\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"TBPM\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"BPM (beats per minute)\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@fields_USER = internal constant [3 x i32] [i32 0, i32 7, i32 4], align 4
@.str.130 = private unnamed_addr constant [13 x i8] c"Terms of use\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"TDTG\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"Tagging time\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"POPM\00", align 1
@fields_POPM = internal constant [3 x i32] [i32 1, i32 10, i32 14], align 4
@.str.134 = private unnamed_addr constant [14 x i8] c"Popularimeter\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"ZOBS\00", align 1
@fields_ZOBS = internal constant [2 x i32] [i32 8, i32 15], align 4
@.str.136 = private unnamed_addr constant [5 x i8] c"EQU2\00", align 1
@fields_EQU2 = internal constant [3 x i32] [i32 10, i32 1, i32 15], align 4
@.str.137 = private unnamed_addr constant [17 x i8] c"Equalisation (2)\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"TPE2\00", align 1
@.str.139 = private unnamed_addr constant [29 x i8] c"Band/orchestra/accompaniment\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@fields_SEEK = internal constant [1 x i32] [i32 13], align 4
@.str.141 = private unnamed_addr constant [11 x i8] c"Seek frame\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"TPE1\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"Lead performer(s)/soloist(s)\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"UFID\00", align 1
@fields_UFID = internal constant [2 x i32] [i32 1, i32 15], align 4
@.str.145 = private unnamed_addr constant [23 x i8] c"Unique file identifier\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"GRID\00", align 1
@fields_GRID = internal constant [3 x i32] [i32 1, i32 10, i32 15], align 4
@.str.147 = private unnamed_addr constant [34 x i8] c"Group identification registration\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"TKEY\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"Initial key\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"PRIV\00", align 1
@fields_PRIV = internal constant [2 x i32] [i32 1, i32 15], align 4
@.str.151 = private unnamed_addr constant [14 x i8] c"Private frame\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"TPE4\00", align 1
@.str.153 = private unnamed_addr constant [47 x i8] c"Interpreted, remixed, or otherwise modified by\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"GEOB\00", align 1
@fields_GEOB = internal constant [5 x i32] [i32 0, i32 1, i32 4, i32 4, i32 15], align 4
@.str.155 = private unnamed_addr constant [28 x i8] c"General encapsulated object\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"RBUF\00", align 1
@fields_RBUF = internal constant [3 x i32] [i32 12, i32 10, i32 13], align 4
@.str.157 = private unnamed_addr constant [24 x i8] c"Recommended buffer size\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"RVRB\00", align 1
@fields_RVRB = internal constant [10 x i32] [i32 11, i32 11, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], align 4
@.str.159 = private unnamed_addr constant [7 x i8] c"Reverb\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"RVA2\00", align 1
@fields_RVA2 = internal constant [2 x i32] [i32 1, i32 15], align 4
@.str.161 = private unnamed_addr constant [31 x i8] c"Relative volume adjustment (2)\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"TPUB\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"Publisher\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"TXXX\00", align 1
@fields_TXXX = internal constant [3 x i32] [i32 0, i32 4, i32 4], align 4
@.str.165 = private unnamed_addr constant [36 x i8] c"User defined text information frame\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"WPAY\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"Payment\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"WPUB\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"Publishers official webpage\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"WXXX\00", align 1
@fields_WXXX = internal constant [3 x i32] [i32 0, i32 4, i32 1], align 4
@.str.171 = private unnamed_addr constant [28 x i8] c"User defined URL link frame\00", align 1
@id3_frametype_lookup.lookup = internal constant [112 x i16] [i16 0, i16 -92, i16 3, i16 -1, i16 4, i16 5, i16 6, i16 -83, i16 -2, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 -1, i16 13, i16 -1, i16 14, i16 15, i16 16, i16 -1, i16 17, i16 18, i16 19, i16 -183, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 -179, i16 30, i16 -177, i16 -175, i16 35, i16 -173, i16 -168, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 -166, i16 49, i16 50, i16 -164, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 -162, i16 61, i16 62, i16 -1, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 -1, i16 -159, i16 77, i16 -9, i16 -2, i16 78, i16 -25, i16 -2, i16 -33, i16 -2, i16 -37, i16 -2, i16 -45, i16 -2, i16 79, i16 -1, i16 80, i16 -48, i16 -3, i16 -51, i16 -2, i16 -53, i16 -2, i16 -56, i16 -2, i16 -1, i16 81, i16 -64, i16 -2, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 82, i16 -1, i16 83], align 2
@hash.asso_values = internal constant [256 x i8] c"ppppppppppppppppppppppppppppppppppppppppppppppppp\14\12\02\19pppppppppppp\13\1A\01\1C\0F\09\1Fp\00p\1D\03\00\0A\00\1E\00\08\05\00\1D\1F\18\1D\18\1Eppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @id3_frametype_lookup(ptr noundef %str, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %index = alloca i32, align 4
  %s = alloca ptr, align 8
  %offset = alloca i32, align 4
  %wordptr = alloca ptr, align 8
  %wordendptr = alloca ptr, align 8
  %s39 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp ule i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp uge i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.end57

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i32, ptr %len.addr, align 4
  %call = call i32 @hash(ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %key, align 4
  %4 = load i32, ptr %key, align 4
  %cmp2 = icmp sle i32 %4, 111
  br i1 %cmp2, label %land.lhs.true3, label %if.end56

land.lhs.true3:                                   ; preds = %if.then
  %5 = load i32, ptr %key, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end56

if.then5:                                         ; preds = %land.lhs.true3
  %6 = load i32, ptr %key, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [112 x i16], ptr @id3_frametype_lookup.lookup, i64 0, i64 %idxprom
  %7 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, ptr %index, align 4
  %8 = load i32, ptr %index, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %9 = load i32, ptr %index, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [84 x %struct.id3_frametype], ptr @id3_frametype_lookup.wordlist, i64 0, i64 %idxprom9
  %id = getelementptr inbounds %struct.id3_frametype, ptr %arrayidx10, i32 0, i32 0
  %10 = load ptr, ptr %id, align 8
  store ptr %10, ptr %s, align 8
  %11 = load ptr, ptr %str.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv11 = sext i8 %12 to i32
  %13 = load ptr, ptr %s, align 8
  %14 = load i8, ptr %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %if.then8
  %15 = load ptr, ptr %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load ptr, ptr %s, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i32, ptr %len.addr, align 4
  %sub = sub i32 %17, 1
  %conv17 = zext i32 %sub to i64
  %call18 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %add.ptr16, i64 noundef %conv17)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end, label %if.then19

if.then19:                                        ; preds = %land.lhs.true15
  %18 = load i32, ptr %index, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [84 x %struct.id3_frametype], ptr @id3_frametype_lookup.wordlist, i64 0, i64 %idxprom20
  store ptr %arrayidx21, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true15, %if.then8
  br label %if.end55

if.else:                                          ; preds = %if.then5
  %19 = load i32, ptr %index, align 4
  %cmp22 = icmp slt i32 %19, -84
  br i1 %cmp22, label %if.then24, label %if.end54

if.then24:                                        ; preds = %if.else
  %20 = load i32, ptr %index, align 4
  %sub25 = sub nsw i32 -85, %20
  store i32 %sub25, ptr %offset, align 4
  %21 = load i32, ptr %offset, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [112 x i16], ptr @id3_frametype_lookup.lookup, i64 0, i64 %idxprom26
  %22 = load i16, ptr %arrayidx27, align 2
  %conv28 = sext i16 %22 to i32
  %add = add nsw i32 84, %conv28
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [84 x %struct.id3_frametype], ptr @id3_frametype_lookup.wordlist, i64 0, i64 %idxprom29
  store ptr %arrayidx30, ptr %wordptr, align 8
  %23 = load ptr, ptr %wordptr, align 8
  %24 = load i32, ptr %offset, align 4
  %add31 = add nsw i32 %24, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [112 x i16], ptr @id3_frametype_lookup.lookup, i64 0, i64 %idxprom32
  %25 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %25 to i32
  %sub35 = sub nsw i32 0, %conv34
  %idx.ext = sext i32 %sub35 to i64
  %add.ptr36 = getelementptr inbounds %struct.id3_frametype, ptr %23, i64 %idx.ext
  store ptr %add.ptr36, ptr %wordendptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.then24
  %26 = load ptr, ptr %wordptr, align 8
  %27 = load ptr, ptr %wordendptr, align 8
  %cmp37 = icmp ult ptr %26, %27
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load ptr, ptr %wordptr, align 8
  %id40 = getelementptr inbounds %struct.id3_frametype, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %id40, align 8
  store ptr %29, ptr %s39, align 8
  %30 = load ptr, ptr %str.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv41 = sext i8 %31 to i32
  %32 = load ptr, ptr %s39, align 8
  %33 = load i8, ptr %32, align 1
  %conv42 = sext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv41, %conv42
  br i1 %cmp43, label %land.lhs.true45, label %if.end53

land.lhs.true45:                                  ; preds = %while.body
  %34 = load ptr, ptr %str.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load ptr, ptr %s39, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i32, ptr %len.addr, align 4
  %sub48 = sub i32 %36, 1
  %conv49 = zext i32 %sub48 to i64
  %call50 = call i32 @strncmp(ptr noundef %add.ptr46, ptr noundef %add.ptr47, i64 noundef %conv49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %land.lhs.true45
  %37 = load ptr, ptr %wordptr, align 8
  store ptr %37, ptr %retval, align 8
  br label %return

if.end53:                                         ; preds = %land.lhs.true45, %while.body
  %38 = load ptr, ptr %wordptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.id3_frametype, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %wordptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end54

if.end54:                                         ; preds = %while.end, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %land.lhs.true3, %if.then
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.then52, %if.then19
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash(ptr noundef %str, i32 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %hval = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %hval, align 4
  %0 = load i32, ptr %len.addr, align 4
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb8
    i32 1, label %sw.bb14
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load ptr, ptr %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 3
  %2 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %hval, align 4
  %add = add nsw i32 %4, %conv
  store i32 %add, ptr %hval, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %5 = load ptr, ptr %str.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %6 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i32, ptr %hval, align 4
  %add7 = add nsw i32 %8, %conv6
  store i32 %add7, ptr %hval, align 4
  br label %sw.bb8

sw.bb8:                                           ; preds = %entry, %sw.bb2
  %9 = load ptr, ptr %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx9, align 1
  %idxprom10 = zext i8 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom10
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %12 = load i32, ptr %hval, align 4
  %add13 = add nsw i32 %12, %conv12
  store i32 %add13, ptr %hval, align 4
  br label %sw.bb14

sw.bb14:                                          ; preds = %entry, %sw.bb8
  %13 = load ptr, ptr %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx15, align 1
  %idxprom16 = zext i8 %14 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom16
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %16 = load i32, ptr %hval, align 4
  %add19 = add nsw i32 %16, %conv18
  store i32 %add19, ptr %hval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14
  %17 = load i32, ptr %hval, align 4
  ret i32 %17
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
