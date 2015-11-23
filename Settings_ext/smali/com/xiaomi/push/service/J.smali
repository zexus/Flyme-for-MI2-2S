.class public Lcom/xiaomi/push/service/J;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# static fields
.field private static aJM:Lcom/xiaomi/push/service/J;


# instance fields
.field private aJJ:Ljava/util/List;

.field private aJK:Lcom/xiaomi/push/b/b;

.field private aJL:Lcom/xiaomi/a/a/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/xiaomi/push/service/J;

    invoke-direct {v0}, Lcom/xiaomi/push/service/J;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/J;->aJM:Lcom/xiaomi/push/service/J;

    .line 54
    sget-object v0, Lcom/xiaomi/push/service/J;->aJM:Lcom/xiaomi/push/service/J;

    invoke-direct {v0}, Lcom/xiaomi/push/service/J;->load()V

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/J;->aJJ:Ljava/util/List;

    .line 62
    return-void
.end method

.method public static BQ()Lcom/xiaomi/push/service/J;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/push/service/J;->aJM:Lcom/xiaomi/push/service/J;

    return-object v0
.end method

.method private BS()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJL:Lcom/xiaomi/a/a/d/f;

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/K;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/K;-><init>(Lcom/xiaomi/push/service/J;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/J;->aJL:Lcom/xiaomi/a/a/d/f;

    .line 145
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJL:Lcom/xiaomi/a/a/d/f;

    invoke-static {v0}, Lcom/xiaomi/smack/d/i;->c(Lcom/xiaomi/a/a/d/f;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/J;Lcom/xiaomi/a/a/d/f;)Lcom/xiaomi/a/a/d/f;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xiaomi/push/service/J;->aJL:Lcom/xiaomi/a/a/d/f;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/J;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/J;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xiaomi/push/service/J;->save()V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/J;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/push/service/J;)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    return-object v0
.end method

.method private load()V
    .locals 5

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/xiaomi/smack/d/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    const-string v2, "XMCloudCfg"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 154
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    invoke-static {v0}, Lcom/google/protobuf/micro/a;->b(Ljava/io/InputStream;)Lcom/google/protobuf/micro/a;

    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/xiaomi/push/b/b;->c(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/b;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    .line 157
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/InputStream;)V

    .line 164
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save config failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/a/a/b/a;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 159
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private save()V
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/xiaomi/smack/d/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    const-string v1, "XMCloudCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/b;->a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public BR()Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    return-object v0
.end method

.method Bi()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJK:Lcom/xiaomi/push/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/b;->Bi()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/L;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method b(Lcom/xiaomi/push/b/d;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->Bx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->Bw()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/J;->Bi()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/push/service/J;->BS()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/L;

    .line 93
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/L;->a(Lcom/xiaomi/push/b/d;)V

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/push/service/J;->aJJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    return-void
.end method
