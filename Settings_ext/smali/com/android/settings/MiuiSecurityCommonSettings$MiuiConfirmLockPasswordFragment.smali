.class public Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;
.super Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.source "MiuiSecurityCommonSettings.java"


# instance fields
.field private qP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->qP:I

    return-void
.end method

.method private ap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 179
    if-nez v1, :cond_1

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v2, "password"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    instance-of v0, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 189
    iput v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->qP:I

    .line 190
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->eZ()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->aD()V

    goto :goto_0
.end method

.method private eZ()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->ap()V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->eZ()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f10005d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->qP:I

    invoke-static {p0, v0}, Lcom/android/settings/MiuiSecurityCommonSettings;->a(Landroid/app/Fragment;I)V

    .line 200
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onDetach()V

    .line 201
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 166
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->ap()V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 137
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onStart()V

    .line 112
    invoke-static {p0}, Lcom/android/settings/eK;->a(Landroid/app/Fragment;)V

    .line 113
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/settings/eK;->b(Landroid/app/Fragment;)V

    .line 118
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onStop()V

    .line 119
    return-void
.end method
