.class Lcom/android/settings_ext/fL;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 216
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->i(Lcom/android/settings_ext/RadioInfo;)V

    goto :goto_0

    .line 220
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->a(Lcom/android/settings_ext/RadioInfo;)V

    goto :goto_0

    .line 224
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->j(Lcom/android/settings_ext/RadioInfo;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->k(Lcom/android/settings_ext/RadioInfo;)V

    goto :goto_0

    .line 229
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 230
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 231
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 232
    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->l(Lcom/android/settings_ext/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings_ext/RadioInfo;->a(Lcom/android/settings_ext/RadioInfo;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->l(Lcom/android/settings_ext/RadioInfo;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->m(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->m(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->l(Lcom/android/settings_ext/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 243
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 244
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/fL;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 250
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings_ext/RadioInfo;->a(Lcom/android/settings_ext/RadioInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->o(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 259
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->p(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "refresh error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->p(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 266
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->q(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/fL;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->p(Lcom/android/settings_ext/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "update error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method
