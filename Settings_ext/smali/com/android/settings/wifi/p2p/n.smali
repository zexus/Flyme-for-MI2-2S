.class Lcom/android/settings/wifi/p2p/n;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic azb:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/n;->azb:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method
