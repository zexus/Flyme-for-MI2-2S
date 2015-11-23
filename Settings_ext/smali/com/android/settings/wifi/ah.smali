.class Lcom/android/settings_ext/wifi/ah;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# instance fields
.field final synthetic avY:Lcom/android/settings_ext/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ah;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ah;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-static {v0, p2}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/WifiSettings;Landroid/content/Intent;)V

    .line 279
    return-void
.end method
