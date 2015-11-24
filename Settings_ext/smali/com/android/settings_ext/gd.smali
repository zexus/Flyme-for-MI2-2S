.class Lcom/android/settings_ext/gd;
.super Lcom/android/settings_ext/search/a;
.source "SecuritySettings.java"


# instance fields
.field uf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/settings_ext/search/a;-><init>()V

    .line 807
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/gd;->uf:Z

    .line 808
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6

    .prologue
    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 857
    const v0, 0x7f0901b0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 859
    new-instance v0, Lcom/android/settings_ext/search/n;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 860
    iput-object v3, v0, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 861
    iput-object v3, v0, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 862
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-boolean v0, p0, Lcom/android/settings_ext/gd;->uf:Z

    if-nez v0, :cond_0

    .line 865
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0901ac

    .line 868
    :goto_0
    new-instance v4, Lcom/android/settings_ext/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 869
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 870
    iput-object v3, v4, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 871
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_0
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 877
    const-string v4, "no_config_credentials"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 878
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f090777

    .line 884
    :goto_1
    new-instance v4, Lcom/android/settings_ext/search/n;

    invoke-direct {v4, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 885
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 886
    iput-object v3, v4, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 887
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 893
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ext/SecuritySettings;->b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v4

    .line 895
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 896
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gI;

    .line 897
    new-instance v5, Lcom/android/settings_ext/search/n;

    invoke-direct {v5, p1}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 898
    iget-object v0, v0, Lcom/android/settings_ext/gI;->title:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 899
    iput-object v3, v5, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 900
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 865
    :cond_2
    const v0, 0x7f0901aa

    goto :goto_0

    .line 880
    :cond_3
    const v0, 0x7f090778

    goto :goto_1

    .line 903
    :cond_4
    return-object v2
.end method

.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 814
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 818
    invoke-static {p1, v0}, Lcom/android/settings_ext/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    .line 820
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 821
    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 822
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    iget-boolean v0, p0, Lcom/android/settings_ext/gd;->uf:Z

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 828
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 839
    :goto_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 840
    iput v0, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 841
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 846
    const v1, 0x7f060076

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 847
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    return-object v2

    .line 831
    :pswitch_1
    const v0, 0x7f060074

    .line 832
    goto :goto_0

    .line 835
    :pswitch_2
    const v0, 0x7f06007c

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    .prologue
    .line 908
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 912
    invoke-static {p1, v2}, Lcom/android/settings_ext/SecuritySettings;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 915
    const v3, 0x7f06006e

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_0

    .line 918
    const-string v0, "visiblepattern"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 923
    iget-boolean v3, p0, Lcom/android/settings_ext/gd;->uf:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 924
    :cond_1
    const-string v0, "sim_lock"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_2
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 928
    const-string v3, "no_config_credentials"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    const-string v0, "credentials_management"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    .line 934
    const-string v0, "trust_agent"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    const-string v0, "manage_trust_agents"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_4
    return-object v1
.end method
