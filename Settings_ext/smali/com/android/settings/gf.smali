.class public Lcom/android/settings/gf;
.super Landroid/preference/EditTextPreference;
.source "SelectableEditTextPreference.java"


# instance fields
.field private wC:I


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/gf;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 56
    :goto_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget v3, p0, Lcom/android/settings/gf;->wC:I

    packed-switch v3, :pswitch_data_0

    .line 69
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 55
    goto :goto_0

    .line 59
    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
