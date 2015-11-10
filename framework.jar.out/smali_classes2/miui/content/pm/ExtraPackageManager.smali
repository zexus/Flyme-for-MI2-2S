.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    }
.end annotation


# static fields
.field public static final INSTALL_FROM_BOOTING:I = 0x200

.field private static final MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_HOLDER:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lmiui/content/pm/ExtraPackageManager$1;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.syncadapters.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.syncadapters.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.tts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    .line 246
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    .line 263
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.antutu.ABenchMark5/com.antutu.benchmark.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.antutu.ABenchMark/com.antutu.benchmark.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.futuremark.dmandroid.application/.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.eembc.coremark/.tabs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.rightware.BasemarkOSII/.BasemarkOSII"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.glbenchmark.glbenchmark27/com.glbenchmark.activities.GLBMainMenu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.glbenchmark.glbenchmark27/net.kishonti.gfxbench.GfxMainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.greenecomputing.linpack/.Linpack"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "eu.chainfire.cfbench/.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.primatelabs.geekbench3/.HomeActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.quicinc.vellamo/.VellamoActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.ludashi.benchmark/.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.aurorasoftworks.quadrant.ui.advanced/.QuadrantAdvancedActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.aurorasoftworks.quadrant.ui.standard/.QuadrantStandardActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    const-string v1, "cn.opda.android.activity/cn.com.opda.android.mainui.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 207
    if-nez p0, :cond_1

    .line 208
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 227
    :goto_0
    return v6

    .line 208
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 212
    :cond_1
    if-nez p1, :cond_2

    .line 213
    const/4 v6, -0x2

    goto :goto_0

    .line 215
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 217
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 221
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 225
    const/4 v6, 0x0

    goto :goto_0

    .line 227
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "isNeedCancel":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 306
    .local v2, "resultAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_0

    const-string v3, "com.xiaomi"

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 308
    const-string v3, "response"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 309
    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 310
    const/4 v3, 0x4

    const-string v4, "canceled"

    invoke-virtual {v1, v3, v4}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 314
    .end local v1    # "response":Landroid/accounts/AccountAuthenticatorResponse;
    .end local v2    # "resultAccount":Landroid/accounts/Account;
    :cond_0
    return v0
.end method

.method public static isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_SYSTEM_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 166
    const/16 v9, 0x3e9

    if-eq p3, v9, :cond_0

    const/16 v9, 0x2648

    if-ne p3, v9, :cond_1

    .line 167
    :cond_0
    const/4 v9, 0x1

    .line 203
    :goto_0
    return v9

    .line 170
    :cond_1
    const-string v9, "com.xiaomi"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 171
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "callerPkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 174
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {p0, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 179
    :goto_1
    if-eqz v6, :cond_6

    .line 182
    sget-object v9, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v9}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v9, v9, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v10}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v9

    if-nez v9, :cond_2

    .line 184
    const/4 v9, 0x1

    goto :goto_0

    .line 188
    :cond_2
    sget-object v9, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v9}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v2, v9, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;

    .local v2, "arr$":[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v4, v2, v5

    .line 189
    .local v4, "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    iget-object v9, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v10}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v9

    if-nez v9, :cond_3

    .line 190
    const/4 v9, 0x1

    goto :goto_0

    .line 188
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 194
    .end local v4    # "entity":Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 195
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_6

    .line 196
    const-string v9, "appops"

    invoke-virtual {v0, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 197
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/16 v9, 0x39

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, p3, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    .line 198
    .local v8, "mode":I
    if-nez v8, :cond_5

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 203
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "arr$":[Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
    .end local v3    # "callerPkg":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "len$":I
    .end local v8    # "mode":I
    :cond_6
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    .line 175
    .restart local v3    # "callerPkg":Ljava/lang/String;
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 2
    .param p0, "je"    # Ljava/util/jar/JarEntry;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 154
    sget-object v4, Lmiui/content/pm/ExtraPackageManager;->SIGNATURE_HOLDER:Landroid/util/Singleton;

    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    iget-object v0, v4, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .local v0, "arr$":[[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 155
    .local v3, "sig":[Landroid/content/pm/Signature;
    invoke-static {v3, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_0

    .line 157
    const/4 v4, 0x1

    .line 160
    .end local v3    # "sig":[Landroid/content/pm/Signature;
    :goto_1
    return v4

    .line 154
    .restart local v3    # "sig":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static showHighPerformanceDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 281
    const-string v2, "support_power_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    sget-object v2, Lmiui/content/pm/ExtraPackageManager;->SHOW_HIGH_PERFORMANCE_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v2, "persist.sys.aries.power_profile"

    const-string v3, "middle"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "powerMode":Ljava/lang/String;
    const-string v2, "high"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "performanceIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fuelgauge.PowerModeSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "show_high_performance"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    goto :goto_0
.end method
