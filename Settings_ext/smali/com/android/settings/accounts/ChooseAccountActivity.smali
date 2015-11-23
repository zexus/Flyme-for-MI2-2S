.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Lmiui/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"


# instance fields
.field private BB:[Ljava/lang/String;

.field private BY:Ljava/util/Map;

.field private BZ:[Landroid/accounts/AuthenticatorDescription;

.field private Cc:Ljava/util/HashMap;

.field private Cg:Landroid/preference/PreferenceGroup;

.field private final Ch:Ljava/util/ArrayList;

.field public Ci:Ljava/util/HashSet;

.field private aU:Landroid/os/UserManager;

.field private zA:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    .line 79
    return-void
.end method

.method private aa(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 337
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 339
    return-void
.end method

.method private ia()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 176
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 177
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v4, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->T(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 184
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_e

    if-eqz v6, :cond_e

    move v2, v1

    .line 186
    :goto_1
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_d

    .line 187
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 193
    :goto_2
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ci:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ci:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 198
    :cond_0
    const-string v6, "com.xiaomi.unactivated"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    .line 214
    :cond_1
    :goto_3
    if-eqz v2, :cond_6

    .line 215
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-direct {v6, v5, v4}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_4
    const-string v6, "com.xiaomi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 204
    const-string v6, "com.xiaomi"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 206
    const-string v7, "com.xiaomi.unactivated"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 209
    array-length v6, v6

    if-nez v6, :cond_5

    array-length v2, v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_3

    .line 217
    :cond_6
    const-string v2, "ChooseAccountActivity"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const-string v2, "ChooseAccountActivity"

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

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 225
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->aa(Ljava/lang/String;)V

    .line 247
    :cond_8
    :goto_5
    return-void

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cg:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 230
    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->U(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 231
    new-instance v3, Lcom/android/settings/accounts/ProviderPreference;

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->b(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->c(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cg:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 236
    :cond_a
    const-string v0, "ChooseAccountActivity"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_7
    if-ge v0, v4, :cond_b

    aget-object v5, v3, v0

    .line 239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 242
    :cond_b
    const-string v0, "ChooseAccountActivity"

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

    .line 244
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_5

    :cond_d
    move v2, v1

    goto/16 :goto_2

    :cond_e
    move v2, v3

    goto/16 :goto_2
.end method

.method private ic()V
    .locals 4

    .prologue
    .line 166
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    .line 168
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BZ:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->ia()V

    .line 172
    return-void
.end method

.method private im()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->in()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const v0, 0x7f10000c

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    new-instance v1, Lcom/android/settings/accounts/ChooseAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$1;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method private in()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    const-string v2, "account_setup_wizard"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 150
    :cond_0
    return v0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 251
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    .line 252
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 254
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 255
    aget-object v4, v2, v1

    .line 256
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 257
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    const-string v5, "ChooseAccountActivity"

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

    .line 265
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected U(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 281
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    :try_start_1
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 291
    :goto_1
    const-string v1, "ChooseAccountActivity"

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

    .line 292
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 294
    :goto_2
    const-string v1, "ChooseAccountActivity"

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

    .line 292
    :catch_2
    move-exception v1

    goto :goto_2

    .line 289
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
    .line 306
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 310
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v0, "ChooseAccountActivity"

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

    .line 316
    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    const-string v0, "ChooseAccountActivity"

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

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->in()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->in()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setTheme(I)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->im()V

    .line 109
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->BB:[Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ci:Ljava/util/HashSet;

    .line 116
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 117
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Ci:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->Cg:Landroid/preference/PreferenceGroup;

    .line 121
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->aU:Landroid/os/UserManager;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->aU:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/hl;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->zA:Landroid/os/UserHandle;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->ic()V

    .line 125
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 323
    instance-of v0, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    .line 324
    check-cast p2, Lcom/android/settings/accounts/ProviderPreference;

    .line 325
    const-string v0, "ChooseAccountActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "ChooseAccountActivity"

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

    .line 328
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->aa(Ljava/lang/String;)V

    .line 330
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
