.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private amA:Landroid/content/pm/UserInfo;

.field private amB:Z

.field private amC:Landroid/os/Bundle;

.field private amy:Landroid/preference/SwitchPreference;

.field private amz:Landroid/preference/Preference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 75
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "enable_calling"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amy:Landroid/preference/SwitchPreference;

    .line 77
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amz:Landroid/preference/Preference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "guest_user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amB:Z

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amB:Z

    if-nez v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    if-ne v0, v4, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Arguments to this fragment must contain the user id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->amA:Landroid/content/pm/UserInfo;

    .line 88
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->amy:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_outgoing_calls"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amz:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_remove_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->K(Ljava/lang/String;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amy:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    return-void

    :cond_2
    move v0, v2

    .line 88
    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "remove_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->K(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amy:Landroid/preference/SwitchPreference;

    const v3, 0x7f090917

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    .line 97
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amy:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    const-string v4, "no_outgoing_calls"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 151
    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-object v0

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->amA:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/hl;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amB:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    const-string v4, "no_outgoing_calls"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    const-string v2, "no_sms"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 130
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v3, Landroid/os/UserHandle;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->amC:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0, v3}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 122
    goto :goto_0

    .line 139
    :cond_2
    new-instance v3, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->amA:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_outgoing_calls"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v5, v0, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_sms"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 145
    :cond_4
    return v1

    :cond_5
    move v0, v2

    .line 140
    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->amz:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the owner can remove a user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeUser()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->amA:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->gW()V

    .line 172
    return-void
.end method
