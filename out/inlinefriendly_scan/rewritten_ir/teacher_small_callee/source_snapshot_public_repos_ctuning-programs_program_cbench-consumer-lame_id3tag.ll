; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_id3tag.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/id3tag.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\C3\BF\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@genre_last = global i32 147, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Blues\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Classic Rock\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Dance\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Disco\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Funk\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Grunge\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Hip-Hop\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Jazz\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"New Age\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Oldies\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Pop\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"R&B\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Rap\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Reggae\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Rock\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Techno\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Alternative\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Ska\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Death Metal\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Pranks\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Soundtrack\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Euro-Techno\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Trip-Hop\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Vocal\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Jazz+Funk\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Fusion\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Trance\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Instrumental\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Acid\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"House\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Gospel\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"AlternRock\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Soul\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Punk\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Meditative\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"Instrumental Pop\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Instrumental Rock\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Ethnic\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"Gothic\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"Darkwave\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Techno-Industrial\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Electronic\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"Pop-Folk\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Eurodance\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Dream\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Southern Rock\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Gangsta\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Top 40\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Christian Rap\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Pop/Funk\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Jungle\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Native American\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"Cabaret\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"New Wave\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Psychadelic\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Rave\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"Showtunes\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"Trailer\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"Lo-Fi\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Tribal\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Acid Punk\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"Acid Jazz\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Polka\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"Retro\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"Musical\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Rock & Roll\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"Hard Rock\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Folk\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Folk/Rock\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"National Folk\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Swing\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Fast-Fusion\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Bebob\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"Revival\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"Celtic\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Bluegrass\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Avantgarde\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"Gothic Rock\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Progressive Rock\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Psychedelic Rock\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"Symphonic Rock\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"Slow Rock\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Big Band\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"Easy Listening\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"Acoustic\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Humour\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Speech\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"Chanson\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"Chamber Music\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Sonata\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"Symphony\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"Booty Bass\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"Primus\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"Porn Groove\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Satire\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"Slow Jam\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"Club\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Tango\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"Samba\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"Folklore\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"Ballad\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"Power Ballad\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"Rhythmic Soul\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"Freestyle\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"Duet\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Punk Rock\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"Drum Solo\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"A capella\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Euro-House\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"Dance Hall\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"Goa\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"Drum & Bass\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"Club House\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"Hardcore\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"Terror\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"Indie\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"BritPop\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"NegerPunk\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"Polsk Punk\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"Beat\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"Christian Gangsta\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Heavy Metal\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"Black Metal\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Crossover\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Contemporary C\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"Christian Rock\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"Merengue\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"Salsa\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Thrash Metal\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"Anime\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"JPop\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"SynthPop\00", align 1
@genre_list = global [148 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], align 8
@id3tag = global %struct.ID3TAGDATA zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define void @id3_inittag(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %title = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 2
  store i8 0, ptr %title, align 1
  %artist = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 3
  store i8 0, ptr %artist, align 1
  %album = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 4
  store i8 0, ptr %album, align 1
  %0 = load ptr, ptr %tag.addr, align 8
  %year = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 5
  store i8 0, ptr %year, align 1
  %comment = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 6
  store i8 0, ptr %comment, align 1
  %genre = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 8
  %1 = call ptr @__memcpy_chk(ptr nonnull %genre, ptr nonnull @.str.1, i64 3, i64 1)
  %2 = load ptr, ptr %tag.addr, align 8
  %track = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 9
  store i8 0, ptr %track, align 2
  %valid = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 1
  store i32 0, ptr %valid, align 4
  ret void
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @id3_buildtag(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %tagtext = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 7
  store i32 4669780, ptr %tagtext, align 1
  %title = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 2
  call void @id3_pad(ptr noundef nonnull %title, i32 noundef 30)
  %tagtext2 = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 7
  %title4 = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 2
  %call6 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext2, ptr noundef nonnull %title4, i64 noundef 30, i64 noundef 128) #5
  %0 = load ptr, ptr %tag.addr, align 8
  %artist = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 3
  call void @id3_pad(ptr noundef nonnull %artist, i32 noundef 30)
  %tagtext8 = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 7
  %artist10 = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 3
  %call12 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext8, ptr noundef nonnull %artist10, i64 noundef 30, i64 noundef 128) #5
  %album = getelementptr inbounds %struct.ID3TAGDATA, ptr %0, i64 0, i32 4
  call void @id3_pad(ptr noundef nonnull %album, i32 noundef 30)
  %1 = load ptr, ptr %tag.addr, align 8
  %tagtext14 = getelementptr inbounds %struct.ID3TAGDATA, ptr %1, i64 0, i32 7
  %album16 = getelementptr inbounds %struct.ID3TAGDATA, ptr %1, i64 0, i32 4
  %call18 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext14, ptr noundef nonnull %album16, i64 noundef 30, i64 noundef 128) #5
  %year = getelementptr inbounds %struct.ID3TAGDATA, ptr %1, i64 0, i32 5
  call void @id3_pad(ptr noundef nonnull %year, i32 noundef 4)
  %tagtext20 = getelementptr inbounds %struct.ID3TAGDATA, ptr %1, i64 0, i32 7
  %2 = load ptr, ptr %tag.addr, align 8
  %year22 = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 5
  %call24 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext20, ptr noundef nonnull %year22, i64 noundef 4, i64 noundef 128) #5
  %comment = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 6
  call void @id3_pad(ptr noundef nonnull %comment, i32 noundef 30)
  %tagtext26 = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 7
  %comment28 = getelementptr inbounds %struct.ID3TAGDATA, ptr %2, i64 0, i32 6
  %call30 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext26, ptr noundef nonnull %comment28, i64 noundef 30, i64 noundef 128) #5
  %3 = load ptr, ptr %tag.addr, align 8
  %genre = getelementptr inbounds %struct.ID3TAGDATA, ptr %3, i64 0, i32 8
  call void @id3_pad(ptr noundef nonnull %genre, i32 noundef 1)
  %tagtext32 = getelementptr inbounds %struct.ID3TAGDATA, ptr %3, i64 0, i32 7
  %genre34 = getelementptr inbounds %struct.ID3TAGDATA, ptr %3, i64 0, i32 8
  %call36 = call ptr @__strncat_chk(ptr noundef nonnull %tagtext32, ptr noundef nonnull %genre34, i64 noundef 1, i64 noundef 128) #5
  %track = getelementptr inbounds %struct.ID3TAGDATA, ptr %3, i64 0, i32 9
  %4 = load i8, ptr %track, align 2
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tag.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ID3TAGDATA, ptr %5, i64 0, i32 7, i64 125
  store i8 0, ptr %arrayidx, align 1
  %track39 = getelementptr inbounds %struct.ID3TAGDATA, ptr %5, i64 0, i32 9
  %6 = load i8, ptr %track39, align 2
  %arrayidx41 = getelementptr inbounds %struct.ID3TAGDATA, ptr %5, i64 0, i32 7, i64 126
  store i8 %6, ptr %arrayidx41, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tag.addr, align 8
  %valid = getelementptr inbounds %struct.ID3TAGDATA, ptr %7, i64 0, i32 1
  store i32 1, ptr %valid, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @id3_pad(ptr noundef %string, i32 noundef %length) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #5
  %conv = trunc i64 %call to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi i32 [ %conv, %entry ], [ %inc, %while.body ]
  store i32 %storemerge, ptr %l, align 4
  %0 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %string.addr, align 8
  %2 = load i32, ptr %l, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store i8 32, ptr %arrayidx, align 1
  %inc = add nsw i32 %2, 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %string.addr, align 8
  %4 = load i32, ptr %l, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @id3_writetag(ptr noundef %filename, ptr noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  %valid = getelementptr inbounds %struct.ID3TAGDATA, ptr %tag, i64 0, i32 1
  %0 = load i32, ptr %valid, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  store ptr %call, ptr %f, align 8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %f, align 8
  %call4 = call i32 @fseek(ptr noundef %2, i64 noundef 0, i32 noundef 2) #5
  %3 = load ptr, ptr %tag.addr, align 8
  %tagtext = getelementptr inbounds %struct.ID3TAGDATA, ptr %3, i64 0, i32 7
  %call5 = call i64 @"\01_fwrite"(ptr noundef nonnull %tagtext, i64 noundef 1, i64 noundef 128, ptr noundef %2) #5
  %call6 = call i32 @fclose(ptr noundef %2) #5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i64 @strlen(ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr, ptr, i64, i64) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { nounwind }

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
