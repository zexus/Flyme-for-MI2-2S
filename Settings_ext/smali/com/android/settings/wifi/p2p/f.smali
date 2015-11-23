.class Lcom/android/settings/wifi/p2p/f;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic azc:Lcom/android/settings/wifi/p2p/e;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/e;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/f;->azc:Lcom/android/settings/wifi/p2p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/f;->azc:Lcom/android/settings/wifi/p2p/e;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/e;->azb:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09032f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
