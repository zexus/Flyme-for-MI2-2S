.class public Lcom/android/settings_ext/wifi/W;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/settings_ext/wifi/V;


# instance fields
.field private avl:Landroid/widget/Button;

.field private final avm:Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;

.field private avn:Lcom/android/settings_ext/wifi/T;

.field private df:Landroid/widget/Button;

.field private final hx:Landroid/view/inputmethod/InputMethodManager;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic a(Lcom/android/settings_ext/wifi/W;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->hx:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/W;)Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avm:Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method


# virtual methods
.method public de(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    const-string v0, "SetupWizard"

    const-string v1, "password field to be focused not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    instance-of v0, v1, Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 93
    const-string v0, "SetupWizard"

    const-string v1, "password field is not EditText"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const-string v0, "SetupWizard"

    const-string v2, "Already focused"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->hx:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "SetupWizard"

    const-string v1, "Failed to show SoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 104
    const-string v3, "SetupWizard"

    const-string v4, "Focus request: %s"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    const-string v0, "successful"

    :goto_1
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez v2, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "failed"

    goto :goto_1
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avl:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avl:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avm:Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->df:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/wifi/X;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/wifi/X;-><init>(Lcom/android/settings_ext/wifi/W;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 176
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 181
    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public va()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avl:Landroid/widget/Button;

    return-object v0
.end method

.method public vb()Lcom/android/settings_ext/wifi/T;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ext/wifi/W;->avn:Lcom/android/settings_ext/wifi/T;

    return-object v0
.end method