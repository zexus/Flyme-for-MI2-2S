.class public Lcom/android/settings_ext/MiuiFingerprintDetailFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "MiuiFingerprintDetailFragment.java"


# instance fields
.field private mView:Landroid/view/View;

.field private pV:Ljava/lang/String;

.field private pW:Ljava/lang/String;

.field private pX:Landroid/widget/EditText;

.field private pY:Landroid/widget/Button;

.field private pZ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pZ:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiFingerprintDetailFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiFingerprintDetailFragment;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pZ:Z

    return p1
.end method

.method private eJ()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f1000e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pX:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f1000e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pY:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pX:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pX:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pW:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pY:Landroid/widget/Button;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 50
    new-instance v0, Lcom/android/settings_ext/dI;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dI;-><init>(Lcom/android/settings_ext/MiuiFingerprintDetailFragment;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pY:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings_ext/dJ;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ext/dJ;-><init>(Lcom/android/settings_ext/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private eK()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pZ:Z

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings_fingerprint_id_prefix_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->eJ()V

    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const-string v1, "extra_fingerprint_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pV:Ljava/lang/String;

    .line 32
    const-string v1, "extra_fingerprint_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->pW:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiFingerprintDetailFragment;->eK()V

    .line 83
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 84
    return-void
.end method
