.class public Lcom/android/settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"


# instance fields
.field private fh:Landroid/view/View;

.field private fm:Landroid/widget/Button;

.field private fn:Landroid/view/View;

.field private fo:Landroid/view/View;

.field private fp:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/aT;

    invoke-direct {v0, p0}, Lcom/android/settings/aT;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/android/settings/aU;

    invoke-direct {v0, p0}, Lcom/android/settings/aU;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fp:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fm:Landroid/widget/Button;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 197
    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 198
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)V

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->l(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fo:Landroid/view/View;

    return-object v0
.end method

.method private l(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/android/settings/ap;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 163
    invoke-virtual {v2}, Lcom/android/settings/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    if-nez v3, :cond_0

    .line 165
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/settings/CryptKeeperSettings;->a(ILjava/lang/String;)V

    .line 169
    :goto_0
    return v0

    :cond_0
    const v3, 0x7f09047d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0901bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/android/settings/ap;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 145
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 186
    const-string v0, "type"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/android/settings/CryptKeeperSettings;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 104
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fh:Landroid/view/View;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fh:Landroid/view/View;

    const v1, 0x7f100078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fm:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->fp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fh:Landroid/view/View;

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fn:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fh:Landroid/view/View;

    const v1, 0x7f100076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fo:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->fh:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method
