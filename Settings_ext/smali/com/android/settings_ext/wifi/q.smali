.class Lcom/android/settings_ext/wifi/q;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings_ext/wifi/q;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/wifi/q;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->c(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)Lcom/android/settings_ext/wifi/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/aa;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/settings_ext/wifi/q;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->a(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 191
    :cond_0
    return-void
.end method