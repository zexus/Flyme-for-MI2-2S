.class public Lcom/android/settings_ext/vpn2/VpnSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aU:Landroid/os/UserManager;

.field private aV:Ljava/lang/String;

.field private aY:Z

.field final anY:Landroid/net/IConnectivityManager;

.field private anZ:Z

.field aoa:Ljava/util/HashMap;

.field aob:Lcom/android/settings_ext/vpn2/VpnDialog;

.field private aoc:Landroid/os/Handler;

.field aod:Lcom/android/internal/net/LegacyVpnInfo;

.field aoe:Landroid/preference/PreferenceCategory;

.field final cJ:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 85
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anY:Landroid/net/IConnectivityManager;

    .line 89
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->cJ:Landroid/security/KeyStore;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anZ:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    .line 536
    return-void
.end method

.method private static varargs a(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 7

    .prologue
    .line 627
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 628
    const-string v0, "VPN_"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_1

    .line 630
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 633
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    return-object v1
.end method

.method static synthetic b(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/android/settings_ext/vpn2/VpnSettings;->a(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/android/internal/net/VpnProfile;)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 448
    const v0, 0x7f090939

    return v0
.end method

.method b(Lcom/android/internal/net/VpnProfile;)V
    .locals 3

    .prologue
    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anY:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0908b8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected disconnect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anY:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoc:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anY:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 400
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 402
    if-eqz v0, :cond_0

    .line 403
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    .line 407
    :cond_1
    if-eqz v1, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 409
    if-eqz v0, :cond_2

    .line 410
    iget v2, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 411
    iput-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v0, v1}, Lcom/android/settings_ext/vpn2/VpnUtils;->a(Landroid/content/Context;Lcom/android/internal/net/LegacyVpnInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoc:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 278
    if-ne p2, v5, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 281
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->cJ:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 286
    if-eqz v0, :cond_1

    .line 287
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->d(Lcom/android/internal/net/VpnProfile;)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->sR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/VpnSettings;->b(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 290
    :cond_1
    new-instance v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings_ext/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 291
    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 292
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v1, "VpnSettings"

    const-string v2, "connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "VpnSettings"

    const-string v2, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 357
    :goto_0
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aV:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    .line 337
    if-nez v0, :cond_1

    .line 338
    const-string v0, "VpnSettings"

    const-string v2, "onContextItemSelected() is called but no preference is found"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 339
    goto :goto_0

    .line 342
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 357
    goto :goto_0

    .line 344
    :pswitch_0
    new-instance v1, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {v1, v3, p0, v0, v2}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->show()V

    move v0, v2

    .line 347
    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aV:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->cJ:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aV:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v0, v2

    .line 355
    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x7f0908b2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aU:Landroid/os/UserManager;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aU:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aY:Z

    .line 120
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 125
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "VpnKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const v4, 0x7f0908b3

    const v3, 0x7f0908b2

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_1

    .line 312
    const-string v0, "VpnSettings"

    const-string v1, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 319
    instance-of v1, v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 321
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aV:Ljava/lang/String;

    .line 322
    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 323
    invoke-interface {p1, v2, v3, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    invoke-interface {p1, v2, v4, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 140
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 141
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    .line 274
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_1

    .line 162
    :cond_0
    new-instance v3, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->show()V

    move v0, v2

    .line 166
    goto :goto_0

    .line 169
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->a(Lcom/android/settings_ext/vpn2/VpnSettings;)V

    move v0, v2

    .line 170
    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f1003a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 254
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aY:Z

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->dismiss()V

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "VpnSettings"

    const-string v1, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return v5

    .line 367
    :cond_0
    instance-of v0, p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_2

    .line 368
    check-cast p1, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p1}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aod:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 378
    :cond_1
    new-instance v1, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 385
    :cond_3
    new-instance v2, Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/settings_ext/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 148
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const v0, 0x7f1003a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/android/settings_ext/vpn2/VpnSettings$LockdownConfigFragment;->a(Lcom/android/settings_ext/vpn2/VpnSettings;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->cJ:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anZ:Z

    if-nez v0, :cond_1

    .line 204
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 209
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anZ:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anZ:Z

    .line 248
    :goto_2
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->gW()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 209
    goto :goto_1

    .line 214
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->anZ:Z

    .line 219
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 222
    iget-object v2, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoe:Landroid/preference/PreferenceCategory;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->cJ:Landroid/security/KeyStore;

    new-array v4, v1, [I

    invoke-static {v0, v4}, Lcom/android/settings_ext/vpn2/VpnSettings;->a(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 227
    new-instance v5, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings_ext/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 228
    invoke-virtual {v5, p0}, Lcom/android/settings_ext/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    iget-object v6, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoa:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->show()V

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoc:Landroid/os/Handler;

    if-nez v0, :cond_6

    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoc:Landroid/os/Handler;

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aoc:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ext/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/vpn2/VpnDialog;->sP()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 181
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 183
    const-string v0, "VpnEditing"

    iget-object v1, p0, Lcom/android/settings_ext/vpn2/VpnSettings;->aob:Lcom/android/settings_ext/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ext/vpn2/VpnDialog;->sR()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
