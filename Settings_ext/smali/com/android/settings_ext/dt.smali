.class Lcom/android/settings_ext/dt;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBackgroundDataEnable.java"


# instance fields
.field final synthetic ow:Lcom/android/settings_ext/dq;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dq;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings_ext/dt;->ow:Lcom/android/settings_ext/dq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/dt;->ow:Lcom/android/settings_ext/dq;

    invoke-virtual {v0}, Lcom/android/settings_ext/dq;->update()V

    .line 100
    return-void
.end method
