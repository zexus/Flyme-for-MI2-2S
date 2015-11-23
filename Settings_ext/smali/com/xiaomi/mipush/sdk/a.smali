.class public Lcom/xiaomi/mipush/sdk/a;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# static fields
.field private static aFf:Lcom/xiaomi/mipush/sdk/a;


# instance fields
.field private aFg:Lcom/xiaomi/mipush/sdk/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/a;->init()V

    .line 54
    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "1.0"

    goto :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->aFf:Lcom/xiaomi/mipush/sdk/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xiaomi/mipush/sdk/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/a;->aFf:Lcom/xiaomi/mipush/sdk/a;

    .line 44
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->aFf:Lcom/xiaomi/mipush/sdk/a;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    new-instance v0, Lcom/xiaomi/mipush/sdk/c;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/mipush/sdk/c;-><init>(Lcom/xiaomi/mipush/sdk/a;Lcom/xiaomi/mipush/sdk/b;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    .line 58
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aFj:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "valid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 72
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c;->aFl:Z

    .line 73
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "envType"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/mipush/sdk/c;->aCU:I

    .line 74
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regResource"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/mipush/sdk/c;->aFk:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public cK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "vName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->clear()V

    .line 132
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public dM(I)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/c;->dM(I)V

    .line 272
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    const-string v1, "envType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    const-string v1, "mipush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->invalidate()V

    .line 241
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c;->aFl:Z

    return v0
.end method

.method public setPaused(Z)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/c;->setPaused(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c;->A(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public yN()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/c;->aCU:I

    return v0
.end method

.method public zD()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zE()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->zM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    return-object v0
.end method

.method public zG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    return-object v0
.end method

.method public zH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aFj:Ljava/lang/String;

    return-object v0
.end method

.method public zI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    return-object v0
.end method

.method public zJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aFk:Ljava/lang/String;

    return-object v0
.end method

.method public zK()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->zM()Z

    move-result v0

    return v0
.end method

.method public zL()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aFg:Lcom/xiaomi/mipush/sdk/c;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
