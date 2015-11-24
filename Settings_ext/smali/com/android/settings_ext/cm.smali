.class Lcom/android/settings_ext/cm;
.super Ljava/lang/Object;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic kF:Landroid/widget/Button;

.field final synthetic kG:Lcom/android/settings_ext/EditPinPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/EditPinPreference;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ext/cm;->kG:Lcom/android/settings_ext/EditPinPreference;

    iput-object p2, p0, Lcom/android/settings_ext/cm;->kF:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/settings_ext/cm;->kF:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
