.class public Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "DolbyEqualizerAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private XF:Landroid/dolby/DsClient;

.field private final XG:Landroid/dolby/IDsClientEvents;

.field private mn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert$1;-><init>(Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;)V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XG:Landroid/dolby/IDsClientEvents;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;)Landroid/dolby/DsClient;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->mn:Z

    return p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->finish()V

    .line 77
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setSelectedProfile(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->pi()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 71
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 60
    :catch_3
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 62
    :catch_4
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 64
    :catch_5
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 66
    :catch_6
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XG:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->mn:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->XF:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 45
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->finish()V

    .line 82
    return-void
.end method

.method public pi()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.DOLBY_EQUALIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizerAlert;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
