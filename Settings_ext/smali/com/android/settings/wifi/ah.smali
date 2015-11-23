.class Lcom/android/settings/wifi/ah;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# instance fields
.field final synthetic avY:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/ah;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/ah;->avY:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V

    .line 279
    return-void
.end method
