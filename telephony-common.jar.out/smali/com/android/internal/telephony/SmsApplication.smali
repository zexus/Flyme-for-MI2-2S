.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final CLOUDSERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cloudservice"

.field private static final DEBUG_MULTIUSER:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final NETWORKASSISTANT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.networkassistant"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final XMSF_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 599
    const-string v0, "sms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 600
    const-string v0, "smsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 601
    const-string v0, "mms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 602
    const-string v0, "mmsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 603
    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 312
    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 314
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 316
    const/4 v3, 0x0

    .line 445
    :cond_0
    :goto_0
    return-object v3

    .line 319
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v4

    .line 325
    .local v4, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sms_default_application"

    move/from16 v0, p2

    invoke-static {v13, v14, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "defaultApplication":Ljava/lang/String;
    const/4 v3, 0x0

    .line 332
    .local v3, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v5, :cond_2

    .line 333
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 340
    :cond_2
    if-eqz p1, :cond_4

    if-nez v3, :cond_4

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 343
    .local v11, "r":Landroid/content/res/Resources;
    const v13, 0x1040029

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "defaultPackage":Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 347
    if-nez v3, :cond_3

    .line 349
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v13

    if-eqz v13, :cond_3

    .line 350
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v3, v13, v14

    .end local v3    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 355
    .restart local v3    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    if-eqz v3, :cond_4

    .line 356
    iget-object v13, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    .line 361
    .end local v6    # "defaultPackage":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    :cond_4
    if-eqz v3, :cond_0

    .line 362
    const-string v13, "appops"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 368
    .local v2, "appOps":Landroid/app/AppOpsManager;
    if-nez p1, :cond_5

    iget v13, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    if-ne v13, v14, :cond_6

    .line 370
    :cond_5
    const/16 v13, 0xf

    iget v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v13, v14, v15}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    .line 372
    .local v9, "mode":I
    if-eqz v9, :cond_6

    .line 373
    const-string v14, "SmsApplication"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " lost OP_WRITE_SMS: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz p1, :cond_9

    const-string v13, " (fixing)"

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-eqz p1, :cond_a

    .line 376
    const/16 v13, 0xf

    iget v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 386
    .end local v9    # "mode":I
    :cond_6
    :goto_2
    if-eqz p1, :cond_0

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 392
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-static {v10, v13, v0}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 397
    :try_start_0
    const-string v13, "com.android.phone"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 398
    .local v8, "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.phone"

    invoke-virtual {v2, v13, v14, v15}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    .line 400
    .restart local v9    # "mode":I
    if-eqz v9, :cond_7

    .line 401
    const-string v13, "SmsApplication"

    const-string v14, "com.android.phone lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.phone"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "mode":I
    :cond_7
    :goto_3
    :try_start_1
    const-string v13, "com.android.bluetooth"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 413
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.bluetooth"

    invoke-virtual {v2, v13, v14, v15}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    .line 415
    .restart local v9    # "mode":I
    if-eqz v9, :cond_8

    .line 416
    const-string v13, "SmsApplication"

    const-string v14, "com.android.bluetooth lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.bluetooth"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 426
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "mode":I
    :cond_8
    :goto_4
    :try_start_2
    const-string v13, "com.android.mms.service"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 427
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.mms.service"

    invoke-virtual {v2, v13, v14, v15}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v9

    .line 429
    .restart local v9    # "mode":I
    if-eqz v9, :cond_0

    .line 430
    const-string v13, "SmsApplication"

    const-string v14, "com.android.mms.service lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v13, 0xf

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v15, "com.android.mms.service"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 434
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "mode":I
    :catch_0
    move-exception v7

    .line 436
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "MmsService package not found: com.android.mms.service"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 373
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "mode":I
    :cond_9
    const-string v13, " (no permission to fix)"

    goto/16 :goto_1

    .line 380
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 405
    .end local v9    # "mode":I
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    .line 407
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Phone package not found: com.android.phone"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v3, 0x0

    goto :goto_3

    .line 420
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v7

    .line 422
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "SmsApplication"

    const-string v14, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v2

    .line 171
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 173
    .local v0, "token":J
    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 184
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v4, "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v6, v4, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 188
    .local v14, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v8, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 196
    const-string v15, "android.permission.BROADCAST_SMS"

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 199
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 200
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 201
    invoke-virtual {v9, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "applicationName":Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v13, v2, v7, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    .local v13, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 205
    invoke-virtual {v8, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "applicationName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v15, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v4    # "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    const-string v16, "application/vnd.wap.mms-message"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v6, v4, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 214
    .local v5, "mmsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 215
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 216
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    .line 219
    const-string v15, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 222
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 223
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 224
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_2

    .line 225
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    goto :goto_1

    .line 230
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v15, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string v16, "smsto"

    const-string v17, ""

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    .restart local v4    # "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v6, v4, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 234
    .local v10, "respondServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 235
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 236
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v12, :cond_4

    .line 239
    const-string v15, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 242
    iget-object v7, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 243
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 244
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_4

    .line 245
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    goto :goto_2

    .line 250
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v15, "android.intent.action.SENDTO"

    const-string v16, "smsto"

    const-string v17, ""

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v4    # "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v6, v4, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 254
    .local v11, "sendToActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 255
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 256
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_6

    .line 259
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 260
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 261
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_6

    .line 262
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v15, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    goto :goto_3

    .line 267
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 268
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_8

    .line 272
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 273
    .restart local v7    # "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 274
    .restart local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v13, :cond_8

    .line 275
    invoke-virtual {v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v15

    if-nez v15, :cond_8

    .line 276
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 280
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    return-object v15
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .prologue
    .local p0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v2, 0x0

    .line 289
    if-nez p1, :cond_0

    move-object v0, v2

    .line 298
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 294
    .local v0, "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "application":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    move-object v0, v2

    .line 298
    goto :goto_0
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 673
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    .line 674
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 676
    .local v2, "token":J
    const/4 v0, 0x0

    .line 677
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 679
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 680
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 697
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    .line 698
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 700
    .local v2, "token":J
    const/4 v0, 0x0

    .line 701
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 703
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 704
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 723
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    .line 724
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 726
    .local v2, "token":J
    const/4 v0, 0x0

    .line 727
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 729
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 730
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z

    .prologue
    .line 650
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v4

    .line 651
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 653
    .local v2, "token":J
    const/4 v0, 0x0

    .line 654
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 656
    .local v1, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 657
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 137
    .local v1, "contextUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 142
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    .line 146
    .end local v1    # "contextUserId":I
    :goto_0
    return v1

    .restart local v1    # "contextUserId":I
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 639
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 640
    .local v0, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 593
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 594
    return-void
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-static {p3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 612
    .local v8, "intent":Landroid/content/Intent;
    const v0, 0x10040

    invoke-virtual {p0, v8, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 617
    .local v10, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 618
    .local v9, "n":I
    new-array v3, v9, [Landroid/content/ComponentName;

    .line 619
    .local v3, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 620
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 621
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v6

    .line 619
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 625
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 629
    const v2, 0x208000

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 632
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 454
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v1

    .line 460
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 462
    .local v2, "token":J
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sms_default_application"

    invoke-static {v7, v8, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "oldPackageName":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 481
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 482
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 483
    .local v1, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 485
    const-string v7, "appops"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 486
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz v5, :cond_2

    .line 488
    const/16 v7, 0x2000

    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 490
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/16 v7, 0xf

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 498
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sms_default_application"

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8, v9, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 503
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 507
    iget v7, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 512
    :try_start_1
    const-string v7, "com.android.phone"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 513
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    const/16 v7, 0xf

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "com.android.phone"

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 522
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_2
    const-string v7, "com.android.bluetooth"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 523
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    const/16 v7, 0xf

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "com.android.bluetooth"

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 532
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_3
    :try_start_3
    const-string v7, "com.android.mms.service"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 533
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    const/16 v7, 0xf

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "com.android.mms.service"

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 535
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 537
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SmsApplication"

    const-string v8, "MmsService package not found: com.android.mms.service"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 493
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SmsApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Old SMS package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    .line 517
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SmsApplication"

    const-string v8, "Phone package not found: com.android.phone"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 525
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v3

    .line 527
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SmsApplication"

    const-string v8, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 745
    if-nez p0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v2

    .line 747
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    const/4 v1, 0x0

    .line 752
    .local v1, "defaultSmsPackage":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 753
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 764
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "com.android.bluetooth"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.miui.cloudservice"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.miui.networkassistant"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    .line 774
    goto :goto_0
.end method
