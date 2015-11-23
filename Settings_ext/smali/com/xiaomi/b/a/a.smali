.class public Lcom/xiaomi/b/a/a;
.super Ljava/lang/Object;
.source "AndroidDebugger.java"

# interfaces
.implements Lcom/xiaomi/smack/a/a;


# static fields
.field public static aEV:Z


# instance fields
.field private aEW:Ljava/text/SimpleDateFormat;

.field private aEX:Lcom/xiaomi/smack/a;

.field private aEY:Lcom/xiaomi/smack/g;

.field private aEZ:Lcom/xiaomi/smack/e;

.field private aFa:Ljava/io/Writer;

.field private aFb:Ljava/io/Reader;

.field private aFc:Lcom/xiaomi/smack/d/f;

.field private aFd:Lcom/xiaomi/smack/d/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/b/a/a;->aEV:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/a;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aEW:Ljava/text/SimpleDateFormat;

    .line 39
    iput-object v2, p0, Lcom/xiaomi/b/a/a;->aEX:Lcom/xiaomi/smack/a;

    .line 41
    iput-object v2, p0, Lcom/xiaomi/b/a/a;->aEY:Lcom/xiaomi/smack/g;

    .line 43
    iput-object v2, p0, Lcom/xiaomi/b/a/a;->aEZ:Lcom/xiaomi/smack/e;

    .line 55
    iput-object p1, p0, Lcom/xiaomi/b/a/a;->aEX:Lcom/xiaomi/smack/a;

    .line 56
    iput-object p2, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    .line 57
    iput-object p3, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    .line 58
    invoke-direct {p0}, Lcom/xiaomi/b/a/a;->zA()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/b/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aEW:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/smack/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aEX:Lcom/xiaomi/smack/a;

    return-object v0
.end method

.method private zA()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    .line 68
    new-instance v1, Lcom/xiaomi/b/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/b/a/b;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v1, p0, Lcom/xiaomi/b/a/a;->aFc:Lcom/xiaomi/smack/d/f;

    .line 77
    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFc:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    .line 81
    new-instance v1, Lcom/xiaomi/smack/d/b;

    iget-object v2, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    .line 82
    new-instance v2, Lcom/xiaomi/b/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/b/a/c;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v2, p0, Lcom/xiaomi/b/a/a;->aFd:Lcom/xiaomi/smack/d/n;

    .line 91
    iget-object v2, p0, Lcom/xiaomi/b/a/a;->aFd:Lcom/xiaomi/smack/d/n;

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/n;)V

    .line 96
    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    .line 97
    iput-object v1, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    .line 104
    new-instance v0, Lcom/xiaomi/b/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/d;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aEY:Lcom/xiaomi/smack/g;

    .line 116
    new-instance v0, Lcom/xiaomi/b/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/b/a/e;-><init>(Lcom/xiaomi/b/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aEZ:Lcom/xiaomi/smack/e;

    .line 151
    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/smack/d/a;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFc:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->b(Lcom/xiaomi/smack/d/f;)V

    .line 155
    new-instance v0, Lcom/xiaomi/smack/d/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/a;-><init>(Ljava/io/Reader;)V

    .line 156
    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFc:Lcom/xiaomi/smack/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/a;->a(Lcom/xiaomi/smack/d/f;)V

    .line 157
    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    .line 158
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/smack/d/b;

    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFd:Lcom/xiaomi/smack/d/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->b(Lcom/xiaomi/smack/d/n;)V

    .line 163
    new-instance v0, Lcom/xiaomi/smack/d/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/smack/d/b;-><init>(Ljava/io/Writer;)V

    .line 164
    iget-object v1, p0, Lcom/xiaomi/b/a/a;->aFd:Lcom/xiaomi/smack/d/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/d/b;->a(Lcom/xiaomi/smack/d/n;)V

    .line 165
    iput-object v0, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    .line 166
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFb:Ljava/io/Reader;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aFa:Ljava/io/Writer;

    return-object v0
.end method

.method public zB()Lcom/xiaomi/smack/g;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xiaomi/b/a/a;->aEY:Lcom/xiaomi/smack/g;

    return-object v0
.end method

.method public zC()Lcom/xiaomi/smack/g;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method
