.class Lcom/android/settings_ext/wifi/r;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

.field final synthetic atg:Lcom/android/settings_ext/wifi/c;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;Lcom/android/settings_ext/wifi/c;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings_ext/wifi/r;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/r;->atg:Lcom/android/settings_ext/wifi/c;

    iput-object p3, p0, Lcom/android/settings_ext/wifi/r;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/wifi/r;->atg:Lcom/android/settings_ext/wifi/c;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/r;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/r;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->d(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)Lcom/android/settings_ext/wifi/d;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ext/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings_ext/wifi/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 237
    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/wifi/r;->atg:Lcom/android/settings_ext/wifi/c;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/r;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/r;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->d(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)Lcom/android/settings_ext/wifi/d;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ext/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/wifi/c;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method
