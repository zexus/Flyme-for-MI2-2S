.class public Lcom/xiaomi/mipush/sdk/p;
.super Ljava/lang/Object;
.source "PushServiceClient.java"


# static fields
.field private static aFA:Lcom/xiaomi/mipush/sdk/p;

.field private static final aFC:Ljava/util/ArrayList;


# instance fields
.field private aFB:Ljava/lang/String;

.field private aFD:Landroid/content/Intent;

.field private aFE:Ljava/lang/Integer;

.field private aFz:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFz:Z

    .line 246
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    .line 307
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->aFB:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFz:Z

    .line 73
    return-void
.end method

.method private Aa()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 211
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    .line 212
    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 217
    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method

.method private Ab()V
    .locals 4

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Ac()V
    .locals 4

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Ah()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 343
    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/p;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/p;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/p;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    return-object v0
.end method

.method public static co(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFA:Lcom/xiaomi/mipush/sdk/p;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/xiaomi/mipush/sdk/p;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/p;->aFA:Lcom/xiaomi/mipush/sdk/p;

    .line 66
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFA:Lcom/xiaomi/mipush/sdk/p;

    return-object v0
.end method

.method private zY()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 172
    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 174
    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private zZ()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p;->Ad()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->Aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->Ab()V

    .line 202
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->Ac()V

    .line 198
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public Ad()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/p;->aFz:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->yN()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ae()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    .line 253
    :cond_0
    return-void
.end method

.method public Af()V
    .locals 9

    .prologue
    .line 271
    sget-object v7, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    monitor-enter v7

    .line 272
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/r;

    .line 273
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/r;->aFG:Lorg/apache/thrift/TBase;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/r;->aFH:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/r;->aFI:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 275
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    return-void
.end method

.method public Ag()V
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v0

    .line 301
    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    sget-object v1, Lcom/xiaomi/push/service/B;->aJv:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/f/c;->cs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 305
    return-void
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    .line 77
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 89
    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->aFB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->yN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 96
    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->aFD:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->aOP:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/xiaomi/mipush/sdk/r;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/r;-><init>()V

    .line 258
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/r;->aFG:Lorg/apache/thrift/TBase;

    .line 259
    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/r;->aFH:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 260
    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/r;->aFI:Z

    .line 261
    sget-object v1, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    monitor-enter v1

    .line 262
    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 265
    sget-object v0, Lcom/xiaomi/mipush/sdk/p;->aFC:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_0
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 132
    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V
    .locals 7

    .prologue
    .line 126
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 127
    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V
    .locals 9

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    if-eqz p4, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/p;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V

    .line 161
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v6

    .line 145
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 147
    if-eqz p5, :cond_2

    .line 148
    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 150
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 152
    if-nez v0, :cond_3

    .line 153
    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "mipush_payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 158
    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public dS(I)V
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v0

    .line 282
    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    sget-object v1, Lcom/xiaomi/push/service/B;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget-object v1, Lcom/xiaomi/push/service/B;->aJt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 286
    return-void
.end method

.method public isProvisioned()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p;->Ad()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->Ah()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/E;->cE(Landroid/content/Context;)Lcom/xiaomi/push/service/E;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/E;->BL()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    .line 314
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 315
    new-instance v2, Lcom/xiaomi/mipush/sdk/q;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/mipush/sdk/q;-><init>(Lcom/xiaomi/mipush/sdk/p;Landroid/os/Handler;)V

    .line 328
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/E;->cE(Landroid/content/Context;)Lcom/xiaomi/push/service/E;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/E;->BM()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/p;->aFE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method public zX()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/p;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/p;->zZ()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method
