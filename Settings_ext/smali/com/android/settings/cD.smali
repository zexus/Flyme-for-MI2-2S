.class Lcom/android/settings_ext/cD;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetSettings.java"


# instance fields
.field final synthetic mq:Lcom/android/settings_ext/HeadsetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings_ext/cD;->mq:Lcom/android/settings_ext/HeadsetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/cD;->mq:Lcom/android/settings_ext/HeadsetSettings;

    invoke-static {v0}, Lcom/android/settings_ext/HeadsetSettings;->a(Lcom/android/settings_ext/HeadsetSettings;)V

    .line 250
    return-void
.end method
