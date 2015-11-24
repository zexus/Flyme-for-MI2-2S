.class public Lcom/android/settings_ext/display/j;
.super Lcom/android/settings_ext/Z;
.source "FontStatusController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/Z;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 14
    return-void
.end method


# virtual methods
.method public ad()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings_ext/display/j;->ca:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/display/j;->ca:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/display/j;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ext/display/FontFragment;->aF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
