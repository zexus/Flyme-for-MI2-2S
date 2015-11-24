.class public Lcom/android/settings_ext/vpn2/MiuiVpnSettings;
.super Lcom/android/settings_ext/vpn2/VpnSettings;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private anT:Z

.field private anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

.field private anV:Landroid/preference/CheckBoxPreference;

.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings$1;-><init>(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anV:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aQ(Z)V

    return-void
.end method

.method private aQ(Z)V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/vpn2/VpnUtils;->br(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 186
    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anY:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 192
    :goto_0
    if-eqz p1, :cond_2

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 195
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_1
    return-void

    .line 199
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->b(Lcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    goto :goto_1

    .line 204
    :cond_2
    if-eqz v1, :cond_0

    .line 205
    iget-object v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->disconnect(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private aR(Z)V
    .locals 2

    .prologue
    .line 318
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 319
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 320
    if-nez p1, :cond_0

    .line 321
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 322
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    invoke-direct {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aS(Z)V

    .line 325
    :cond_0
    return-void

    .line 321
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private aS(Z)V
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anT:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aR(Z)V

    return-void
.end method

.method private c(Lcom/android/internal/net/VpnProfile;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setChecked(Z)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setChecked(Z)V

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v3}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings_ext/vpn2/VpnUtils;->a(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 430
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private sQ()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 211
    new-instance v0, Lcom/android/settings_ext/ap;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ext/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 212
    invoke-virtual {v0}, Lcom/android/settings_ext/ap;->at()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 214
    :sswitch_0
    const-class v0, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0904e4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 222
    :sswitch_1
    const-class v0, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0904e3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 277
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 278
    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    const-string v1, "profile_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "profile_delete"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 287
    if-eqz v2, :cond_2

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->disconnect(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->cJ:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->cJ:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 298
    if-eqz v0, :cond_3

    .line 299
    iget-object v1, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->disconnect(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v3}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->d(Lcom/android/internal/net/VpnProfile;)V

    .line 307
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->c(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->b(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0

    .line 302
    :cond_3
    new-instance v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings_ext/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v2, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method protected a(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    .line 353
    return-void
.end method

.method protected a(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 6

    .prologue
    .line 356
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 357
    const-string v0, "profile"

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 358
    const-string v0, "profile_key"

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "profile_add"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-class v0, Lcom/android/settings_ext/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 361
    return-void
.end method

.method b(Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/vpn2/VpnUtils;->bs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/vpn2/VpnSettings;->b(Lcom/android/internal/net/VpnProfile;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/vpn2/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 268
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aR(Z)V

    .line 273
    :cond_0
    :goto_1
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_2
    if-eqz p3, :cond_0

    .line 271
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ext/vpn2/VpnSettings;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->setHasOptionsMenu(Z)V

    .line 89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    const-string v0, "vpn_password_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vpn_password_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    :goto_0
    const-string v0, "vpn_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anV:Landroid/preference/CheckBoxPreference;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/vpn2/VpnUtils;->bs(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    const-string v0, "vpn_configure_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    const-string v1, "android.net.vpn.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    invoke-direct {p0, v3}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aS(Z)V

    .line 97
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    const v0, 0x7f0908b1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_new_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 368
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->onDestroy()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 341
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoa:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 344
    :cond_0
    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)V

    move v0, v2

    .line 347
    :goto_1
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ext/vpn2/VpnSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v2, :cond_0

    .line 403
    :goto_0
    return v0

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ext/vpn2/VpnUtils;->bs(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 377
    goto :goto_0

    .line 380
    :cond_1
    instance-of v2, p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_4

    .line 381
    check-cast p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 382
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 385
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v3

    .line 391
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->c(Lcom/android/internal/net/VpnProfile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->b(Lcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v1

    goto :goto_0

    .line 398
    :cond_3
    new-instance v0, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0, v2, v1}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->show()V

    move v0, v1

    .line 403
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 408
    instance-of v0, p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_0

    .line 409
    check-cast p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 410
    invoke-virtual {p1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->c(Lcom/android/internal/net/VpnProfile;)Z

    .line 412
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "vpn_password_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 151
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 152
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aS(Z)V

    .line 155
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ext/vpn2/MiuiVpnSettings;Lcom/android/settings_ext/vpn2/MiuiVpnSettings$1;)V

    .line 169
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/vpn2/VpnSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    instance-of v1, p2, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_1

    .line 172
    check-cast p2, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p2}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 175
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->startActivity(Landroid/content/Intent;)V

    .line 180
    :cond_1
    return v0

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->sQ()V

    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "vpn_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 163
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 164
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ext/vpn2/VpnUtils;->s(Landroid/content/Context;Z)V

    .line 166
    invoke-direct {p0, v0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aQ(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-super {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->onResume()V

    .line 113
    iget-boolean v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anT:Z

    if-eqz v1, :cond_0

    .line 114
    iput-boolean v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anT:Z

    .line 116
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aR(Z)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_1
    return-void

    .line 124
    :cond_2
    const-string v1, "vpn_configure_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    const v2, 0x7f090c12

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/vpn2/VpnUtils;->br(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 131
    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    iput-object v0, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 134
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/MiuiVpnSettings;->anU:Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setChecked(Z)V

    .line 136
    :cond_4
    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
