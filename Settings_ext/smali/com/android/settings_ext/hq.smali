.class final Lcom/android/settings_ext/hq;
.super Lcom/android/settings_ext/search/a;
.source "WirelessSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 604
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 605
    const v1, 0x7f0600a8

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 606
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 611
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 613
    const-string v0, "toggle_nsd"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 616
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v2

    .line 617
    :goto_0
    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 619
    :goto_1
    if-eqz v2, :cond_0

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    const-string v0, "wimax_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_1
    if-eqz v3, :cond_2

    .line 625
    const-string v0, "vpn_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_2
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 630
    if-eqz v0, :cond_3

    .line 631
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 632
    if-nez v0, :cond_3

    .line 633
    const-string v0, "toggle_nfc"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v0, "android_beam_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_3
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    :cond_4
    const-string v0, "mobile_network_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    const-string v0, "manage_mobile_plan"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 648
    if-nez v0, :cond_6

    .line 649
    const-string v0, "manage_mobile_plan"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_6
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 655
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 656
    const-string v0, "sms_application"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 662
    const-string v0, "android.hardware.type.television"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 663
    const-string v0, "toggle_airplane"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_8
    const-string v0, "proxy_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 672
    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_a

    .line 673
    :cond_9
    const-string v0, "tether_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112005e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 680
    if-eqz v0, :cond_b

    .line 681
    :try_start_0
    const-string v5, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    move v0, v1

    :cond_b
    move v1, v0

    .line 689
    :goto_2
    if-nez v3, :cond_c

    if-nez v1, :cond_d

    .line 690
    :cond_c
    const-string v0, "cell_broadcast_settings"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_d
    return-object v4

    :cond_e
    move v3, v1

    .line 616
    goto/16 :goto_0

    :cond_f
    move v2, v1

    .line 617
    goto/16 :goto_1

    .line 686
    :catch_0
    move-exception v0

    goto :goto_2
.end method
