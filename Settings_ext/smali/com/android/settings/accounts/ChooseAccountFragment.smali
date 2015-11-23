.class public Lcom/android/settings/accounts/ChooseAccountFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountFragment.java"


# instance fields
.field private BB:[Ljava/lang/String;

.field private BY:Ljava/util/Map;

.field private BZ:[Landroid/accounts/AuthenticatorDescription;

.field private Cc:Ljava/util/HashMap;

.field private Cg:Landroid/preference/PreferenceGroup;

.field private final Ch:Ljava/util/ArrayList;

.field public Ci:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/ChooseAccountFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ChooseAccountFragment;->b(ILjava/lang/String;)V

    return-void
.end method

.method private aa(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/ChooseAccountFragment;->b(ILjava/lang/String;)V

    .line 301
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/accounts/MiuiChooseAccountActivity;

    if-nez v0, :cond_1

    .line 305
    if-ne p1, v1, :cond_0

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    .line 312
    if-ne p1, v1, :cond_2

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V

    goto :goto_0
.end method

.method private ia()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 140
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 141
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountFragment;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountFragment;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 148
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    if-eqz v6, :cond_f

    move v2, v1

    .line 150
    :goto_1
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_e

    .line 151
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 157
    :goto_2
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ci:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ci:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 162
    :cond_0
    const-string v6, "com.xiaomi.unactivated"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    .line 180
    :cond_1
    :goto_3
    if-eqz v2, :cond_7

    .line 181
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    invoke-direct {v6, v5, v4}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_4
    const-string v6, "com.xiaomi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 168
    const-string v6, "com.xiaomi"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 170
    const-string v7, "com.xiaomi.unactivated"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 173
    array-length v6, v6

    if-nez v6, :cond_5

    array-length v2, v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_3

    .line 175
    :cond_6
    invoke-static {v4}, Lcom/android/settings/accounts/MiuiAccountListSettings;->ab(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .line 176
    goto :goto_3

    .line 183
    :cond_7
    const-string v2, "ChooseAccountFragment"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    const-string v2, "ChooseAccountFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped pref "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no authority we need"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 191
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->aa(Ljava/lang/String;)V

    .line 212
    :cond_9
    :goto_5
    return-void

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cg:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;

    .line 196
    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->U(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;->c(Lcom/android/settings/accounts/ChooseAccountFragment$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cg:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 202
    :cond_b
    const-string v0, "ChooseAccountFragment"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_c

    aget-object v5, v3, v0

    .line 205
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 208
    :cond_c
    const-string v0, "ChooseAccountFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No providers found for authorities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->b(ILjava/lang/String;)V

    goto :goto_5

    :cond_e
    move v2, v1

    goto/16 :goto_2

    :cond_f
    move v2, v3

    goto/16 :goto_2
.end method

.method private ic()V
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    .line 132
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->ia()V

    .line 136
    return-void
.end method

.method private in()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    const-string v2, "account_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    :cond_0
    return v0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 216
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    .line 217
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 219
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 220
    aget-object v4, v2, v1

    .line 221
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected U(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    :try_start_1
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 256
    :goto_1
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 259
    :goto_2
    const-string v1, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :catch_2
    move-exception v1

    goto :goto_2

    .line 254
    :catch_3
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected V(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v0, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label name for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    const-string v0, "ChooseAccountFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No label resource for account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const v0, 0x7f040022

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->in()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const v0, 0x7f10000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    new-instance v2, Lcom/android/settings/accounts/ChooseAccountFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/ChooseAccountFragment$1;-><init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->BB:[Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ci:Ljava/util/HashSet;

    .line 118
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Ci:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment;->Cg:Landroid/preference/PreferenceGroup;

    .line 123
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->ic()V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/accounts/MiuiChooseAccountActivity;

    if-eqz v0, :cond_0

    .line 79
    sget v0, Lmiui/R$style;->Theme_Light_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->setThemeRes(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 289
    instance-of v0, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 290
    check-cast p2, Lcom/android/settings/accounts/ProviderPreference;

    .line 291
    const-string v0, "ChooseAccountFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "ChooseAccountFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to add account of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountFragment;->aa(Ljava/lang/String;)V

    .line 296
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
