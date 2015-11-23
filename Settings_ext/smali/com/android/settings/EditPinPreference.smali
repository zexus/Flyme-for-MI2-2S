.class Lcom/android/settings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# instance fields
.field private kE:Lcom/android/settings/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private do()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/android/settings/cm;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/cm;-><init>(Lcom/android/settings/EditPinPreference;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/cn;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->kE:Lcom/android/settings/cn;

    .line 53
    return-void
.end method

.method public dm()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dn()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/EditPinPreference;->do()V

    .line 96
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/EditPinPreference;->do()V

    .line 85
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->kE:Lcom/android/settings/cn;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->kE:Lcom/android/settings/cn;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/cn;->a(Lcom/android/settings/EditPinPreference;Z)V

    .line 78
    :cond_0
    return-void
.end method
