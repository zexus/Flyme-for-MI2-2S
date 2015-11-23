.class Lcom/android/settings_ext/wifi/au;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# instance fields
.field final synthetic awB:Lcom/android/settings_ext/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings_ext/wifi/au;->awB:Lcom/android/settings_ext/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/wifi/au;->awB:Lcom/android/settings_ext/wifi/WifiSetupActivity;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiSetupActivity;->a(Lcom/android/settings_ext/wifi/WifiSetupActivity;)V

    .line 94
    return-void
.end method
