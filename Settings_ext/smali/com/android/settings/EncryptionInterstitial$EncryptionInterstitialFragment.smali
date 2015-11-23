.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private kH:Landroid/widget/RadioButton;

.field private kI:Landroid/widget/RadioButton;

.field private kJ:Landroid/widget/TextView;

.field private kK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private w(Z)V
    .locals 4

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kK:Z

    .line 194
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kH:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kI:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 199
    invoke-virtual {v0}, Lcom/android/settings/gh;->gP()Landroid/content/Intent;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kK:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/settings/gh;->k(Landroid/content/Intent;)V

    .line 203
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    .line 86
    const v0, 0x7f04005c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    const v0, 0x7f1000d0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kH:Landroid/widget/RadioButton;

    .line 89
    const v0, 0x7f1000d1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kI:Landroid/widget/RadioButton;

    .line 91
    const v0, 0x7f1000cf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kJ:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_password_quality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 97
    sparse-switch v0, :sswitch_data_0

    .line 110
    const v2, 0x7f090a1e

    .line 111
    const v1, 0x7f090a21

    .line 112
    const v0, 0x7f090a24

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kJ:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kH:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kH:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kI:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kI:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    .line 125
    return-object v3

    .line 99
    :sswitch_0
    const v2, 0x7f090a1d

    .line 100
    const v1, 0x7f090a20

    .line 101
    const v0, 0x7f090a23

    .line 102
    goto :goto_0

    .line 105
    :sswitch_1
    const v2, 0x7f090a1c

    .line 106
    const v1, 0x7f090a1f

    .line 107
    const v0, 0x7f090a22

    .line 108
    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kH:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 132
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->kK:Z

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->w(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 147
    :pswitch_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 151
    sparse-switch v0, :sswitch_data_0

    .line 162
    const v1, 0x7f090a27

    .line 163
    const v0, 0x7f090a2a

    move v2, v1

    move v1, v0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string v0, ""

    .line 180
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 153
    :sswitch_0
    const v1, 0x7f090a26

    .line 154
    const v0, 0x7f090a29

    move v2, v1

    move v1, v0

    .line 155
    goto :goto_0

    .line 158
    :sswitch_1
    const v1, 0x7f090a25

    .line 159
    const v0, 0x7f090a28

    move v2, v1

    move v1, v0

    .line 160
    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method
