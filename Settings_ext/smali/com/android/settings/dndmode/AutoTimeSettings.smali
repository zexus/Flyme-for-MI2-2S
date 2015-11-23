.class public Lcom/android/settings_ext/dndmode/AutoTimeSettings;
.super Lmiui/app/Activity;
.source "AutoTimeSettings.java"


# instance fields
.field private Ww:Lcom/android/settings_ext/dndmode/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->Ww:Lcom/android/settings_ext/dndmode/h;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/dndmode/h;->aK(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->setContentView(I)V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Lcom/android/settings_ext/dndmode/h;

    invoke-direct {v0}, Lcom/android/settings_ext/dndmode/h;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->Ww:Lcom/android/settings_ext/dndmode/h;

    .line 29
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000bf

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->Ww:Lcom/android/settings_ext/dndmode/h;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dndmode/h;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->Ww:Lcom/android/settings_ext/dndmode/h;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "autoTimeSettingsFragment"

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/AutoTimeSettings;->Ww:Lcom/android/settings_ext/dndmode/h;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 20
    invoke-super {p0, p1}, Lmiui/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method
