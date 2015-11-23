.class Lcom/android/settings_ext/dolby/DolbyEqualizer$2;
.super Ljava/lang/Object;
.source "DolbyEqualizer.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# instance fields
.field final synthetic XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 365
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0, v1}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->a(Lcom/android/settings_ext/dolby/DolbyEqualizer;Z)Z

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->d(Lcom/android/settings_ext/dolby/DolbyEqualizer;)Landroid/dolby/DsClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 368
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v1}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->d(Lcom/android/settings_ext/dolby/DolbyEqualizer;)Landroid/dolby/DsClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->c(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-static {v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->a(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    .line 388
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 374
    :catch_2
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 376
    :catch_3
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 378
    :catch_4
    move-exception v0

    .line 379
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 380
    :catch_5
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 382
    :catch_6
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;->XU:Lcom/android/settings_ext/dolby/DolbyEqualizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->a(Lcom/android/settings_ext/dolby/DolbyEqualizer;Z)Z

    .line 393
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method
