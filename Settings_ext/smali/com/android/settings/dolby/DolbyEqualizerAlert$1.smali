.class Lcom/android/settings/dolby/DolbyEqualizerAlert$1;
.super Ljava/lang/Object;
.source "DolbyEqualizerAlert.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# instance fields
.field final synthetic XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/dolby/DolbyEqualizerAlert;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-static {v0, v3}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->a(Lcom/android/settings/dolby/DolbyEqualizerAlert;Z)Z

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-static {v0}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->a(Lcom/android/settings/dolby/DolbyEqualizerAlert;)Landroid/dolby/DsClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-static {v0}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->a(Lcom/android/settings/dolby/DolbyEqualizerAlert;)Landroid/dolby/DsClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->pi()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->finish()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 130
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 119
    :cond_0
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v1}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 109
    :catch_3
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1

    .line 111
    :catch_4
    move-exception v0

    .line 112
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 113
    :catch_5
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 115
    :catch_6
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/dolby/DolbyEqualizerAlert$1;->XV:Lcom/android/settings/dolby/DolbyEqualizerAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dolby/DolbyEqualizerAlert;->a(Lcom/android/settings/dolby/DolbyEqualizerAlert;Z)Z

    .line 135
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
