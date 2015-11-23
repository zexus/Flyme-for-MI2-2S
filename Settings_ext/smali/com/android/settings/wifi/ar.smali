.class Lcom/android/settings_ext/wifi/ar;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awf:Lcom/android/settings_ext/wifi/aq;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/aq;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ar;->awf:Lcom/android/settings_ext/wifi/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ar;->awf:Lcom/android/settings_ext/wifi/aq;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/aq;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ar;->awf:Lcom/android/settings_ext/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/aq;->vo()V

    .line 79
    :cond_0
    return-void
.end method
