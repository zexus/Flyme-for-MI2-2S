.class public Lcom/android/settings_ext/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings_ext/widget/I;


# instance fields
.field private adA:Z

.field private adz:Ljava/lang/CharSequence;

.field private kr:Lcom/android/settings_ext/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private zR:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 2

    .prologue
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SwitchBar;->setEnabled(Z)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->zR:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/widget/SwitchBar;->setChecked(Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SwitchBar;->setEnabled(Z)V

    .line 100
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->zR:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    .line 70
    invoke-virtual {v0}, Lcom/android/settings_ext/gh;->gH()Lcom/android/settings_ext/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    .line 71
    iget-object v3, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    iget-boolean v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->zR:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ext/widget/SwitchBar;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->a(Lcom/android/settings_ext/widget/I;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adA:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/SwitchBar;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->show()V

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    :cond_1
    move v1, v2

    .line 73
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adz:Ljava/lang/CharSequence;

    .line 49
    const v1, 0x7f090287

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->zR:Landroid/nfc/NfcAdapter;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adA:Z

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f040006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adz:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ext/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->adz:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->b(Lcom/android/settings_ext/widget/I;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/nfc/AndroidBeam;->kr:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/SwitchBar;->hide()V

    .line 85
    return-void
.end method
