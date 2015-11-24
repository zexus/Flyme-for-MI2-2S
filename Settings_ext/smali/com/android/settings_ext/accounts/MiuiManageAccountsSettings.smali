.class public Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings_ext/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settings_ext/bP;


# instance fields
.field private BB:[Ljava/lang/String;

.field private BR:Landroid/widget/TextView;

.field private Cs:Landroid/preference/CheckBoxPreference;

.field private Ct:Landroid/preference/CheckBoxPreference;

.field private Cu:Lcom/android/settings_ext/dg;

.field private Cv:Z

.field private bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;-><init>()V

    .line 326
    return-void
.end method

.method private T(Z)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.SYNC_ON_WIFI_ONLY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v1, "extra_sync_on_wifi_only"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method private U(Z)V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v2, "sms"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 154
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.cloudservice.mms.UPLOAD_PHONE_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v3, "extra_upload_opt"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v0, "com.miui.cloudservice"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private V(Z)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 167
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 169
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 170
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 172
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 173
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 174
    array-length v7, v3

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget-object v8, v3, v2

    .line 175
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 176
    array-length v9, v4

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_1

    aget-object v10, v4, v0

    .line 177
    iget-object v11, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v12, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 179
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncAdapterType;

    .line 183
    if-eqz p1, :cond_2

    .line 184
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v0, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 187
    :cond_2
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 191
    :cond_4
    return-void
.end method

.method private W(Z)V
    .locals 1

    .prologue
    .line 314
    if-eqz p1, :cond_0

    const-string v0, "account_settings_wifi_only_enabled"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    .line 316
    return-void

    .line 314
    :cond_0
    const-string v0, "account_settings_wifi_only_disabled"

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cu:Lcom/android/settings_ext/dg;

    invoke-virtual {v0}, Lcom/android/settings_ext/dg;->et()V

    .line 272
    return-void
.end method

.method private b(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cu:Lcom/android/settings_ext/dg;

    invoke-virtual {v0}, Lcom/android/settings_ext/dg;->stopAnimation()V

    .line 276
    return-void
.end method

.method private it()Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 248
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 250
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 251
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 253
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 254
    array-length v6, v3

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v3, v2

    .line 255
    array-length v8, v4

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v9, v4, v0

    .line 256
    iget-object v10, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 260
    if-eqz v5, :cond_0

    iget-object v9, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x1

    .line 267
    :goto_2
    return v0

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 267
    goto :goto_2
.end method

.method private iu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-static {v1, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method private iv()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    :cond_0
    invoke-static {v3, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 307
    :cond_1
    return-void
.end method

.method private iw()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "account_settings_opened"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->trackEvent(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private trackEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const-string v2, "eventId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void
.end method


# virtual methods
.method public bridge synthetic T(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->a(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f040076

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->a(Landroid/os/UserHandle;)V

    return-void
.end method

.method protected ib()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 212
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    if-eq v1, v0, :cond_1

    .line 213
    iput-boolean v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->invalidateOptionsMenu()V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic ic()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->ic()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 105
    const v4, 0x7f100004

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->BR:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->BR:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cs:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Ct:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Ct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "sync_on_wifi_only"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    :cond_0
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->BB:[Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->ic()V

    .line 116
    return-void

    :cond_1
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings$SyncDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings$SyncDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cu:Lcom/android/settings_ext/dg;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 81
    const-string v0, "sync_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cs:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Ct:Landroid/preference/CheckBoxPreference;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Ct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Ct:Landroid/preference/CheckBoxPreference;

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->iw()V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x1

    const v1, 0x7f0907e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cu:Lcom/android/settings_ext/dg;

    invoke-virtual {v1}, Lcom/android/settings_ext/dg;->er()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 222
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 281
    if-ne v1, v0, :cond_1

    .line 282
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->iu()V

    .line 289
    :goto_0
    return v0

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->iv()V

    goto :goto_0

    .line 289
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string v0, "sync_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 123
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->V(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->ib()V

    .line 125
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->U(Z)V

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    const-string v0, "wifi_only"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sync_on_wifi_only"

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-direct {p0, v2}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->T(Z)V

    .line 132
    invoke-direct {p0, v2}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->W(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 129
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const v3, 0x7f0907e9

    const/4 v2, 0x1

    .line 228
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->it()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 232
    iget-boolean v1, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->Cv:Z

    if-eqz v1, :cond_1

    .line 233
    const v1, 0x7f0907e6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 234
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->a(Landroid/view/MenuItem;)V

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 245
    return-void

    .line 236
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 237
    invoke-direct {p0, v0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->b(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 240
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 241
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public showDialog(I)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    new-instance v0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ext/bP;I)V

    iput-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ext/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    return-void
.end method
