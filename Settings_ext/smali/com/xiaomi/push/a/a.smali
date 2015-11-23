.class Lcom/xiaomi/push/a/a;
.super Ljava/lang/Object;
.source "LogFilter.java"


# static fields
.field private static aHF:Ljava/lang/String;


# instance fields
.field private final aEW:Ljava/text/SimpleDateFormat;

.field private aHG:Ljava/lang/String;

.field private aHH:Ljava/lang/String;

.field private aHI:Z

.field private aHJ:I

.field private aHK:I

.field private aHL:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "/MiPushLog"

    sput-object v0, Lcom/xiaomi/push/a/a;->aHF:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aEW:Ljava/text/SimpleDateFormat;

    .line 53
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/xiaomi/push/a/a;->aHK:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aHL:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/util/regex/Pattern;)V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 84
    const/16 v0, 0x1000

    new-array v6, v0, [C

    .line 88
    invoke-virtual {p1, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    move v4, v5

    .line 89
    :goto_0
    if-eq v2, v11, :cond_2

    if-eq v4, v3, :cond_2

    .line 90
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 91
    invoke-virtual {p3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v1, v5

    move v0, v5

    .line 96
    :goto_1
    if-ge v1, v2, :cond_6

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 98
    iget-object v9, p0, Lcom/xiaomi/push/a/a;->aHG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v7, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 99
    iget-boolean v10, p0, Lcom/xiaomi/push/a/a;->aHI:Z

    if-nez v10, :cond_1

    .line 100
    iget-object v10, p0, Lcom/xiaomi/push/a/a;->aHG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 102
    iput-boolean v3, p0, Lcom/xiaomi/push/a/a;->aHI:Z

    move v0, v1

    .line 111
    :cond_0
    const/16 v9, 0xa

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 112
    if-eq v9, v11, :cond_3

    .line 113
    add-int/2addr v1, v9

    goto :goto_1

    .line 105
    :cond_1
    iget-object v10, p0, Lcom/xiaomi/push/a/a;->aHH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    move v2, v3

    .line 119
    :goto_2
    iget-boolean v4, p0, Lcom/xiaomi/push/a/a;->aHI:Z

    if-eqz v4, :cond_5

    .line 120
    sub-int/2addr v1, v0

    .line 121
    iget v4, p0, Lcom/xiaomi/push/a/a;->aHJ:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/xiaomi/push/a/a;->aHJ:I

    .line 122
    if-eqz v2, :cond_4

    .line 123
    invoke-virtual {p2, v6, v0, v1}, Ljava/io/BufferedWriter;->write([CII)V

    .line 135
    :cond_2
    return-void

    .line 115
    :cond_3
    iget-object v9, p0, Lcom/xiaomi/push/a/a;->aHG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {p2, v6, v0, v1}, Ljava/io/BufferedWriter;->write([CII)V

    .line 128
    iget v0, p0, Lcom/xiaomi/push/a/a;->aHJ:I

    iget v1, p0, Lcom/xiaomi/push/a/a;->aHK:I

    if-gt v0, v1, :cond_2

    .line 133
    :cond_5
    invoke-virtual {p1, v6}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    move v4, v2

    move v2, v0

    .line 134
    goto :goto_0

    :cond_6
    move v1, v2

    move v2, v4

    goto :goto_2
.end method

.method private j(Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"

    .line 141
    const-string v0, "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v3, "model :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, "; os :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v3, "; uid :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/smack/d/h;->CP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v3, "; lng :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "; sdk :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/a/a;->aHJ:I

    .line 159
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aHL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    move-object v3, v2

    :goto_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 160
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    :try_start_3
    invoke-direct {p0, v2, v1, v4}, Lcom/xiaomi/push/a/a;->a(Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/util/regex/Pattern;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v2

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Writer;)V

    .line 171
    invoke-static {v3}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    .line 173
    :goto_1
    return-void

    .line 165
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 166
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG: filter error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Writer;)V

    .line 171
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 168
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOG: filter error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Writer;)V

    .line 171
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Writer;)V

    .line 171
    invoke-static {v2}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/Reader;)V

    throw v0

    .line 170
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 167
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    .line 165
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method a(Ljava/util/Date;Ljava/util/Date;)Lcom/xiaomi/push/a/a;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aEW:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aHG:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aEW:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aHH:Ljava/lang/String;

    .line 67
    :goto_0
    return-object p0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aEW:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aHG:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aEW:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/a/a;->aHH:Ljava/lang/String;

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Ljava/io/File;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 208
    .line 212
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 214
    new-instance v2, Ljava/io/File;

    const-string v3, "xmsf.log.1"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/a/a;->i(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    .line 215
    new-instance v2, Ljava/io/File;

    const-string v3, "xmsf.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/a/a;->i(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    .line 223
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 249
    :cond_0
    :goto_1
    return-object v0

    .line 218
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/a/a;->aHF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/io/File;

    const-string v3, "log0.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/a/a;->i(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    .line 220
    new-instance v2, Ljava/io/File;

    const-string v3, "log1.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/a/a;->i(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    goto :goto_0

    .line 227
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 230
    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/push/a/a;->a(Ljava/util/Date;Ljava/util/Date;)Lcom/xiaomi/push/a/a;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    new-instance v4, Ljava/io/File;

    const-string v5, "log.txt"

    invoke-direct {v4, p4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v4}, Lcom/xiaomi/push/a/a;->j(Ljava/io/File;)V

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOG: filter cost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 242
    invoke-static {v0, v4}, Lcom/xiaomi/a/a/b/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOG: zip cost = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/c/c;->v(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move-object v0, v1

    .line 249
    goto/16 :goto_1
.end method

.method dY(I)V
    .locals 0

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iput p1, p0, Lcom/xiaomi/push/a/a;->aHK:I

    .line 74
    :cond_0
    return-void
.end method

.method i(Ljava/io/File;)Lcom/xiaomi/push/a/a;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/push/a/a;->aHL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-object p0
.end method
