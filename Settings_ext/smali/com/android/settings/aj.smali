.class Lcom/android/settings/aj;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;


# instance fields
.field final synthetic di:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/aj;->di:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/aj;->di:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 217
    :cond_0
    return-void
.end method

.method public onKeyBoardOK()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/aj;->di:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->b(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 222
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/aj;->di:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method
