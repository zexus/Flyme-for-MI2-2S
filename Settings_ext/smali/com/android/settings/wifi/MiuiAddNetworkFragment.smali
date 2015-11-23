.class public Lcom/android/settings/wifi/MiuiAddNetworkFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiAddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/j;


# instance fields
.field private asT:Lcom/android/settings/wifi/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public W()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->asT:Lcom/android/settings/wifi/i;

    invoke-virtual {v0}, Lcom/android/settings/wifi/i;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->b(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f040134

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public bf(Z)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->i(Z)V

    .line 36
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f090b49

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 30
    new-instance v0, Lcom/android/settings/wifi/i;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/j;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->asT:Lcom/android/settings/wifi/i;

    .line 31
    return-void
.end method
