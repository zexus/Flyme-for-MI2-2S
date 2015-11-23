.class Lcom/xiaomi/mipush/sdk/c;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# instance fields
.field public aCU:I

.field public aFh:Ljava/lang/String;

.field public aFi:Ljava/lang/String;

.field public aFj:Ljava/lang/String;

.field public aFk:Ljava/lang/String;

.field public aFl:Z

.field final synthetic aFm:Lcom/xiaomi/mipush/sdk/a;

.field public deviceId:Ljava/lang/String;

.field public isValid:Z

.field public regSecret:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mipush/sdk/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFl:Z

    .line 157
    iput v1, p0, Lcom/xiaomi/mipush/sdk/c;->aCU:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mipush/sdk/a;Lcom/xiaomi/mipush/sdk/b;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/c;-><init>(Lcom/xiaomi/mipush/sdk/a;)V

    return-void
.end method

.method private zN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFj:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 214
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 215
    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->aFl:Z

    .line 216
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/c;->aCU:I

    .line 217
    return-void
.end method

.method public dM(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/xiaomi/mipush/sdk/c;->aCU:I

    .line 225
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/c;->aFk:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    const-string v1, "appId"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v1, "appToken"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "regResource"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 229
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    const-string v1, "valid"

    iget-boolean v2, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/c;->aFl:Z

    .line 221
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 173
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->aFj:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/f;->cx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->zN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 177
    iput-boolean v3, p0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 179
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFm:Lcom/xiaomi/mipush/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    const-string v1, "regId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v1, "regSec"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v1, "devId"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v1, "vName"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->zN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v1, "valid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-void
.end method

.method public zM()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->aFh:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->aFi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/c;->A(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
