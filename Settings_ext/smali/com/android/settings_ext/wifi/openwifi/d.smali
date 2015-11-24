.class Lcom/android/settings_ext/wifi/openwifi/d;
.super Ljava/lang/Object;
.source "FreeWifiLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/d;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/d;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->finish()V

    .line 82
    return-void
.end method
