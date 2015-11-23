.class public Lcom/xiaomi/push/service/h;
.super Ljava/lang/Object;
.source "MIPushAccount.java"


# instance fields
.field protected final aCU:I

.field protected final aFi:Ljava/lang/String;

.field public final aIB:Ljava/lang/String;

.field protected final appId:Ljava/lang/String;

.field protected final packageName:Ljava/lang/String;

.field protected final security:Ljava/lang/String;

.field protected final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/push/service/h;->aIB:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaomi/push/service/h;->token:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xiaomi/push/service/h;->security:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/xiaomi/push/service/h;->appId:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/xiaomi/push/service/h;->aFi:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/xiaomi/push/service/h;->packageName:Ljava/lang/String;

    .line 35
    iput p7, p0, Lcom/xiaomi/push/service/h;->aCU:I

    .line 36
    return-void
.end method

.method private static cz(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/y;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    new-instance v1, Lcom/xiaomi/push/service/y;

    invoke-direct {v1, p1}, Lcom/xiaomi/push/service/y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->pkgName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->aIB:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->userId:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->security:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->security:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->token:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->token:Ljava/lang/String;

    .line 48
    const-string v0, "5"

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->aJd:Ljava/lang/String;

    .line 49
    const-string v0, "XMPUSH-PASS"

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->aIZ:Ljava/lang/String;

    .line 50
    iput-boolean v5, v1, Lcom/xiaomi/push/service/y;->aJa:Z

    .line 51
    const-string v0, "sdk_ver:6"

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->aJb:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/xiaomi/push/service/h;->cz(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1000271"

    .line 53
    :goto_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "appid"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "locale"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->aJc:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->BZ()Lcom/xiaomi/push/service/b;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/y;->aJe:Lcom/xiaomi/push/service/b;

    .line 55
    return-object v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/h;->appId:Ljava/lang/String;

    goto :goto_0
.end method
