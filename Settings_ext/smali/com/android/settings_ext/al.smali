.class Lcom/android/settings_ext/al;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ext/al;->di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 292
    :goto_0
    if-ge p2, p3, :cond_1

    .line 293
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings_ext/al;->di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;->c(Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090d6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/al;->di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;->d(Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    const-string v0, ""

    .line 299
    :goto_1
    return-object v0

    .line 292
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
