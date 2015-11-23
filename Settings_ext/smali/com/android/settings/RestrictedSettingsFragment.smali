.class public Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# instance fields
.field private mUserManager:Landroid/os/UserManager;

.field private rG:Z

.field private rH:Z

.field private wb:Landroid/content/RestrictionsManager;

.field private final wc:Ljava/lang/String;

.field private wd:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/fZ;

    invoke-direct {v0, p0}, Lcom/android/settings/fZ;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->wd:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    return p1
.end method

.method private fq()V
    .locals 5

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->wb:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->wb:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    .line 148
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 149
    const-string v2, "android.request.mesg"

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a0e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const/16 v1, 0x3015

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method protected G(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return v1

    .line 180
    :cond_0
    const-string v2, "restrict_if_overridable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    .line 182
    :goto_1
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->wb:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 180
    goto :goto_1

    :cond_3
    move v0, v1

    .line 182
    goto :goto_2
.end method

.method protected gw()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->wb:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected gx()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected gy()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->gw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->gx()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 129
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "restrictions"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->wb:Landroid/content/RestrictionsManager;

    .line 89
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v0, "chsc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    .line 93
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    .line 96
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->wd:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->wd:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->wc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/RestrictedSettingsFragment;->fq()V

    .line 118
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rH:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->rG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    :cond_0
    return-void
.end method
