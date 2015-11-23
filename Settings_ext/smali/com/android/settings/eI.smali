.class Lcom/android/settings/eI;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic ss:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/eI;->ss:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/eI;->ss:Lcom/android/settings/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSoundSettings;->fA()V

    .line 269
    return-void
.end method
