.class public Lcom/android/settings/accounts/MiuiAccountListSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAccountListSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private Cp:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

.field private bY:Ljava/util/List;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private rR:Lcom/android/settings/accounts/AuthenticatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/MiuiAccountListSettings;)Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->Cp:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    return-object v0
.end method

.method public static ab(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 200
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 201
    aget-object v4, v2, v1

    .line 202
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    const/4 v0, 0x1

    .line 206
    :cond_0
    return v0

    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/accounts/MiuiAccountListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->bY:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 116
    const v0, 0x7f040076

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public c(Landroid/preference/PreferenceActivity$Header;)V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->startActivity(Landroid/content/Intent;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accounts/MiuiAccountListSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    :cond_0
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->invalidateHeaders()V

    .line 240
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->bY:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->bY:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->Cp:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 82
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->Cp:Lcom/android/settings/accounts/MiuiAccountListSettings$HeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    new-instance v1, Lcom/android/settings/accounts/MiuiAccountListSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$1;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$2;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 68
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    .line 69
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p1, v2, v0, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 70
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->Z(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v4, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 72
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 13

    .prologue
    const v12, 0x7f0907d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->ik()[Ljava/lang/String;

    move-result-object v4

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    .line 134
    const-string v0, "com.xiaomi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.unactivated"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v8, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 141
    if-eqz v8, :cond_0

    .line 145
    invoke-static {v7}, Lcom/android/settings/accounts/MiuiAccountListSettings;->ab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 150
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->rR:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 152
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 153
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 154
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_2

    .line 155
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 158
    :cond_2
    if-eqz v0, :cond_4

    .line 159
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 160
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 161
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 163
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v2

    .line 150
    goto :goto_2

    .line 171
    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 172
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 173
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 175
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 186
    :cond_5
    new-instance v0, Lcom/android/settings/accounts/MiuiAccountListSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountListSettings$3;-><init>(Lcom/android/settings/accounts/MiuiAccountListSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 193
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 195
    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    const v0, 0x7f090ad2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 225
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 230
    const-class v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f090ad2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accounts/MiuiAccountListSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->bY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiAccountListSettings;->bY:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAccountListSettings;->onBuildHeaders(Ljava/util/List;)V

    .line 126
    return-void
.end method
