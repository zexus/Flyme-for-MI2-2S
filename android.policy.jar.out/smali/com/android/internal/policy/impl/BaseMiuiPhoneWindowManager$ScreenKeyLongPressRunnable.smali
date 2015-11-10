.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenKeyLongPressRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mKeyActionSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageSettingActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemKeyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnderKeyguard:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 3

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.jeejen.family.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/16 v1, 0xbb

    const-string v2, "screen_key_long_press_app_switch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "screen_key_long_press_menu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1073
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "screen_key_long_press_home"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "screen_key_long_press_back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z

    move-result v0

    return v0
.end method

.method private closeApp()Z
    .locals 18

    .prologue
    .line 1265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v13}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 1267
    .local v1, "_win":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    .line 1336
    :goto_0
    return v13

    .line 1269
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v12, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1270
    .local v12, "type":I
    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    const/16 v13, 0x63

    if-le v12, v13, :cond_4

    :cond_2
    const/16 v13, 0x3e8

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7cf

    if-le v12, v13, :cond_4

    .line 1273
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1276
    :cond_4
    const/4 v11, 0x0

    .line 1277
    .local v11, "title":Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v9, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1278
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1281
    .local v10, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1282
    .local v5, "className":Ljava/lang/String;
    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1283
    .local v8, "index":I
    if-ltz v8, :cond_5

    .line 1284
    new-instance v6, Landroid/content/ComponentName;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v6, v9, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .local v6, "componentName":Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1290
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 1296
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "index":I
    :cond_5
    :goto_1
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1298
    const/4 v13, 0x0

    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1299
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 1304
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1305
    move-object v11, v9

    .line 1308
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mSystemKeyPackages:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v14, v14, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v15, 0x1107007a

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1315
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1320
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget-object v14, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1326
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1328
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v14, v14, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v15, 0x11070079

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1336
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1321
    .end local v3    # "am":Landroid/app/ActivityManager;
    :catch_0
    move-exception v7

    .line 1322
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1301
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .line 1292
    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1161
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    const/4 v0, 0x1

    .line 1167
    :goto_0
    return v0

    .line 1165
    :catch_0
    move-exception v0

    .line 1167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchGoogleNow()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1224
    :goto_0
    return v1

    .line 1222
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private launchRecentPanel()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1179
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v6, "recentapps"

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1181
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInLockTaskMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1204
    :goto_0
    return v3

    .line 1186
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1188
    .local v0, "am":Landroid/app/ActivityManager;
    :try_start_0
    const-string v5, "com.android.incallui.InCallActivity"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1190
    goto :goto_0

    .line 1192
    :catch_0
    move-exception v1

    .line 1193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1198
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_2

    .line 1199
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    :goto_1
    move v3, v4

    .line 1204
    goto :goto_0

    .line 1201
    :catch_1
    move-exception v1

    .line 1202
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private launchVoiceAssistant()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    :goto_0
    return v1

    .line 1174
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1210
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1211
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private showMenu()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1228
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInLockTaskMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v8

    .line 1235
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v9}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 1236
    .local v0, "_win":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1238
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    if-nez v9, :cond_2

    .line 1239
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    .line 1240
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1241
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "miui.intent.action.APP_SETTINGS_SHORTCUT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1243
    .local v7, "settingsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1244
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1248
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "settingsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget-object v4, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1249
    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mPackageSettingActivity:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1250
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1251
    new-instance v3, Landroid/content/Intent;

    const-string v8, "miui.intent.action.APP_SETTINGS_SHORTCUT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20020000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1255
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1099
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1102
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    const/4 v4, 0x0

    .line 1105
    .local v4, "triggered":Z
    const-string v2, "virtual_key_longpress"

    .line 1107
    .local v2, "effectKey":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v5, :cond_6

    .line 1108
    const-string v5, "screen_key_long_press_home"

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1110
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1111
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1112
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x1

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    move-result v4

    .line 1113
    if-eqz v4, :cond_3

    .line 1114
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 1152
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1154
    :cond_4
    if-nez v4, :cond_5

    const-string v5, "screen_key_long_press_home"

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1155
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1123
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "action":Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1125
    const-string v5, "voice_assistant"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchVoiceAssistant()Z

    move-result v4

    .line 1127
    const-string v2, "screen_button_voice_assist"

    goto :goto_1

    .line 1129
    :cond_7
    const-string v5, "recent_panel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v4

    .line 1131
    const-string v2, "screen_button_recent_task"

    goto :goto_1

    .line 1133
    :cond_8
    const-string v5, "google_now"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchGoogleNow()Z

    move-result v4

    .line 1135
    const-string v2, "screen_button_voice_assist"

    goto :goto_1

    .line 1137
    :cond_9
    const-string v5, "close_app"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->closeApp()Z

    move-result v4

    goto :goto_1

    .line 1140
    :cond_a
    const-string v5, "show_menu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1141
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z

    move-result v4

    .line 1142
    if-nez v4, :cond_3

    .line 1143
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1144
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1902(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    .line 1145
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2002(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z

    goto/16 :goto_1
.end method

.method public send(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 1095
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_key_long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
