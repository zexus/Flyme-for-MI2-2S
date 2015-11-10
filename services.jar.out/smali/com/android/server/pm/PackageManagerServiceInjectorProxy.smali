.class Lcom/android/server/pm/PackageManagerServiceInjectorProxy;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjectorProxy.java"


# static fields
.field private static final SUPPORT_32_BIT_APP:[Ljava/lang/String;

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.jeejen.home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.jeejen.contact"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.jeejen.jjbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.jeejen.helper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.jeejen.family.miui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.jeejen.family.miui.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.jeejen.store"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.jeejen.knowledge"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->SUPPORT_32_BIT_APP:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V
    .locals 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "forceDexOpt"    # Z
    .param p4, "deferDexOpt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    if-nez p2, :cond_4

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 37
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 40
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 41
    .local v3, "processName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 42
    .local v2, "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    .restart local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .restart local v3    # "processName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 50
    .restart local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 51
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->adjustCpuAbisForSharedProcessLPw(Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    goto :goto_1

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;>;"
    .end local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "processName":Ljava/lang/String;
    :cond_4
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 56
    .restart local v3    # "processName":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 57
    .restart local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 58
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5

    .line 61
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 63
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 67
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->adjustCpuAbisForSharedProcessLPw(Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    .line 70
    .end local v2    # "packagesForProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "processName":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method static checkApk(Landroid/content/Context;Landroid/os/Message;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "systemReady"    # Z

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method static checkApkOnlySupport32BitForUserMode(Landroid/content/pm/PackageParser$Package;)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v3, 0x0

    .line 85
    const-string v1, "support_oldman_mode"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->SUPPORT_32_BIT_APP:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 88
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->SUPPORT_32_BIT_APP:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 13
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 103
    const/4 v5, -0x1

    .line 104
    .local v5, "miuiManifestResId":I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 105
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 106
    const-string v10, "com.miui.sdk.manifest"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 110
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 111
    .local v0, "assmgr":Landroid/content/res/AssetManager;
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "cookie":I
    if-eqz v2, :cond_3

    .line 113
    new-instance v7, Landroid/content/res/MiuiResources;

    iget-object v10, p1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v11, 0x0

    invoke-direct {v7, v0, v10, v11}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 114
    .local v7, "res":Landroid/content/res/MiuiResources;
    const/4 v6, 0x0

    .line 115
    .local v6, "parser":Lmiui/core/ManifestParser;
    if-gtz v5, :cond_1

    .line 117
    const-string v10, "miui_manifest"

    const-string v11, "xml"

    iget-object v12, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 120
    :cond_1
    if-lez v5, :cond_2

    .line 121
    invoke-virtual {v7, v5}, Landroid/content/res/MiuiResources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v7, v10}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v6

    .line 127
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v4

    .line 128
    .local v4, "manifest":Lmiui/core/Manifest;
    new-instance v3, Lmiui/core/CompatibleManager;

    iget-object v10, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v10, v4}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 129
    .local v3, "cptmgr":Lmiui/core/CompatibleManager;
    invoke-virtual {v3}, Lmiui/core/CompatibleManager;->isCompatible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    .line 134
    .end local v3    # "cptmgr":Lmiui/core/CompatibleManager;
    .end local v4    # "manifest":Lmiui/core/Manifest;
    .end local v6    # "parser":Lmiui/core/ManifestParser;
    .end local v7    # "res":Landroid/content/res/MiuiResources;
    :cond_2
    :goto_0
    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 136
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .end local v2    # "cookie":I
    :catch_0
    move-exception v8

    .line 137
    .local v8, "th":Ljava/lang/Throwable;
    const-string v9, "PackageManager"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    const/16 v10, -0x34

    const-string v11, "error occurs while parsing miui manifest."

    invoke-direct {v9, v10, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9
.end method

.method static returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .param p0, "observer"    # Ljava/lang/Object;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Landroid/content/pm/IPackageDeleteObserver2;

    .end local p0    # "observer":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method static startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 11
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 98
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v7

    move-object v9, v1

    move-object v10, v1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
