.class Lcom/android/settings_ext/eI;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic ss:Lcom/android/settings_ext/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSoundSettings;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings_ext/eI;->ss:Lcom/android/settings_ext/MiuiSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/eI;->ss:Lcom/android/settings_ext/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSoundSettings;->fA()V

    .line 269
    return-void
.end method
