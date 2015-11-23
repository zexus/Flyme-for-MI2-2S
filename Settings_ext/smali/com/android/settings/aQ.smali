.class Lcom/android/settings/aQ;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic fb:Lcom/android/settings/CryptKeeper;

.field state:I


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/aG;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/settings/aQ;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 252
    :try_start_0
    const-string v2, "CryptKeeper"

    const-string v3, "Validating encryption state."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/aQ;->state:I

    .line 254
    iget v0, p0, Lcom/android/settings/aQ;->state:I

    if-ne v0, v1, :cond_0

    .line 255
    const-string v0, "CryptKeeper"

    const-string v2, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/settings/aQ;->state:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v0, "CryptKeeper"

    const-string v2, "Unable to get encryption state properly"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, v0}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;Z)Z

    .line 268
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "CryptKeeper"

    const-string v2, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, v0}, Lcom/android/settings/CryptKeeper;->d(Lcom/android/settings/CryptKeeper;Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    iget v2, p0, Lcom/android/settings/aQ;->state:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;Z)Z

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/android/settings/aQ;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->f(Lcom/android/settings/CryptKeeper;)V

    .line 276
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aQ;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/aQ;->a(Ljava/lang/Boolean;)V

    return-void
.end method
