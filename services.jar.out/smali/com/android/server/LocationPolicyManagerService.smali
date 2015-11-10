.class public Lcom/android/server/LocationPolicyManagerService;
.super Landroid/location/ILocationPolicyManager$Stub;
.source "LocationPolicyManagerService.java"


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.location.action.ALLOW_BACKGROUND"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_HIGH_POWER:Ljava/lang/String; = "high-power"

.field private static final ATTR_LOCATION_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x2

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "LocationPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_LOCATION_POLICY:Ljava/lang/String; = "location-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1

.field static sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;


# instance fields
.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurForegroundState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/location/ILocationPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private volatile mLocationMode:I

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifManager:Landroid/app/INotificationManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mUidInNavigation:Landroid/util/SparseBooleanArray;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/location/ILocationPolicyManager$Stub;-><init>()V

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    .line 130
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    .line 133
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    .line 135
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 137
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    .line 140
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 143
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 144
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    .line 147
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/LocationPolicyManagerService;->mCurForegroundState:I

    .line 149
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 250
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$1;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 318
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$2;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$3;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$4;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$5;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$6;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$7;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 940
    new-instance v1, Lcom/android/server/LocationPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/LocationPolicyManagerService$8;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 173
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 175
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 176
    iput-object p2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "locationpolicy.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->computeUidStateLocked(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/LocationPolicyManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationModeChangeLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private computeUidStateLocked(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 292
    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 295
    .local v4, "pidState":Landroid/util/SparseIntArray;
    const/16 v7, 0xd

    .line 296
    .local v7, "uidState":I
    if-eqz v4, :cond_1

    .line 297
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 298
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 299
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 300
    .local v6, "state":I
    if-ge v6, v7, :cond_0

    .line 301
    move v7, v6

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    .end local v5    # "size":I
    .end local v6    # "state":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v11, 0xd

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 307
    .local v3, "oldUidState":I
    if-eq v3, v7, :cond_2

    .line 309
    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    iget v10, p0, Lcom/android/server/LocationPolicyManagerService;->mCurForegroundState:I

    if-gt v3, v10, :cond_3

    move v2, v8

    .line 311
    .local v2, "oldForeground":Z
    :goto_1
    iget v10, p0, Lcom/android/server/LocationPolicyManagerService;->mCurForegroundState:I

    if-gt v7, v10, :cond_4

    move v1, v8

    .line 312
    .local v1, "newForeground":Z
    :goto_2
    if-eq v2, v1, :cond_2

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 316
    .end local v1    # "newForeground":Z
    .end local v2    # "oldForeground":Z
    :cond_2
    return-void

    :cond_3
    move v2, v9

    .line 310
    goto :goto_1

    .restart local v2    # "oldForeground":Z
    :cond_4
    move v1, v9

    .line 311
    goto :goto_2
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 448
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x1107009f

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 451
    .local v12, "title":Ljava/lang/CharSequence;
    const v0, 0x110700a0

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 454
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 455
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 456
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 457
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 458
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 460
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 469
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 471
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefaultService()Lcom/android/server/LocationPolicyManagerService;
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LocationPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/LocationPolicyManagerService;->mCurForegroundState:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 900
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    const/4 v0, 0x1

    .line 904
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newDefaultService(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/LocationPolicyManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 159
    new-instance v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationPolicyManagerService;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    sput-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    .line 160
    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v0

    return-object v0
.end method

.method private readPolicyLocked()V
    .locals 14

    .prologue
    .line 538
    const-string v11, "LocationPolicy"

    const-string v12, "readPolicyLocked()"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 542
    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clear()V

    .line 544
    const/4 v2, 0x0

    .line 546
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 547
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 548
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 551
    const/4 v10, 0x1

    .line 552
    .local v10, "version":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x1

    if-eq v8, v11, :cond_6

    .line 553
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "tag":Ljava/lang/String;
    const/4 v11, 0x2

    if-ne v8, v11, :cond_0

    .line 555
    const-string v11, "policy-list"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 556
    const-string v11, "version"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 557
    const-string v11, "restrictBackground"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 584
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v10    # "version":I
    :catch_0
    move-exception v11

    .line 593
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 595
    :goto_1
    return-void

    .line 558
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_1
    :try_start_1
    const-string v11, "location-policy"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 559
    const/4 v11, 0x0

    const-string v12, "provider"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 560
    .local v6, "provider":Ljava/lang/String;
    const-string v11, "high-power"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 561
    .local v3, "highPower":Z
    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-static {v6}, Landroid/location/LocationPolicy;->getDefaultPolicyByProvider(Ljava/lang/String;)Landroid/location/LocationPolicy;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    .end local v3    # "highPower":Z
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v10    # "version":I
    :catch_1
    move-exception v1

    .line 587
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v11, "LocationPolicy"

    const-string v12, "problem reading location policy"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 562
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_2
    :try_start_3
    const-string v11, "uid-policy"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 563
    const-string v11, "uid"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 564
    .local v9, "uid":I
    const-string v11, "policy"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 566
    .local v5, "policy":I
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 567
    const/4 v11, 0x0

    invoke-direct {p0, v9, v5, v11}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 588
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "policy":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "uid":I
    .end local v10    # "version":I
    :catch_2
    move-exception v1

    .line 589
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v11, "LocationPolicy"

    const-string v12, "problem reading location policy"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 593
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 569
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "policy":I
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "uid":I
    .restart local v10    # "version":I
    :cond_3
    :try_start_5
    const-string v11, "LocationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to apply policy to UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 590
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "policy":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "uid":I
    .end local v10    # "version":I
    :catch_3
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "LocationPolicy"

    const-string v12, "problem reading location policy"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 593
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_4
    :try_start_7
    const-string v11, "app-policy"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 572
    const-string v11, "appId"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, "appId":I
    const-string v11, "policy"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 575
    .restart local v5    # "policy":I
    const/4 v11, 0x0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 576
    .restart local v9    # "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 577
    const/4 v11, 0x0

    invoke-direct {p0, v9, v5, v11}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 593
    .end local v0    # "appId":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "policy":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "uid":I
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    .line 579
    .restart local v0    # "appId":I
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "policy":I
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "uid":I
    .restart local v10    # "version":I
    :cond_5
    :try_start_8
    const-string v11, "LocationPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to apply policy to UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 593
    .end local v0    # "appId":I
    .end local v5    # "policy":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v9    # "uid":I
    :cond_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1
.end method

.method private removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 602
    const-string v6, "LocationPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 605
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 606
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 607
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 608
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 605
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 613
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 614
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 615
    invoke-direct {p0, v4}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v4    # "uid":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 619
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 683
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 684
    .local v0, "oldPolicy":I
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 688
    if-eqz p3, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 691
    :cond_0
    monitor-exit v2

    .line 692
    return-void

    .line 691
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLocationModeChangeLocked()V
    .locals 2

    .prologue
    .line 488
    const-string v0, "LocationPolicy"

    const-string v1, "updateLocationModeChangeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private updateLocationRulesLocked()V
    .locals 10

    .prologue
    .line 507
    const-string v8, "LocationPolicy"

    const-string v9, "updateLocationRulesLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v8}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 519
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 520
    .local v7, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationPolicy;

    .line 523
    .local v5, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 525
    .local v6, "provider":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/location/LocationPolicy;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 526
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    .end local v0    # "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "policy":Landroid/location/LocationPolicy;
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 535
    :cond_2
    return-void

    .line 530
    .restart local v0    # "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "policy":Landroid/location/LocationPolicy;
    .restart local v7    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 531
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 532
    .local v4, "ifaces":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateNotificationsLocked()V
    .locals 5

    .prologue
    .line 422
    const-string v3, "LocationPolicy"

    const-string v4, "updateNotificationsLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 426
    .local v0, "beforeNotifs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 427
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 430
    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_0

    .line 431
    const-string v3, "LocationPolicy:allowBackground"

    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 436
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 11

    .prologue
    .line 882
    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 883
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 886
    .local v6, "um":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 887
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 890
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 891
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 892
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 893
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 896
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 498
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 499
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/LocationPolicyManagerService;->mCurForegroundState:I

    if-gt v3, v4, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 501
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 498
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 908
    invoke-static {p1}, Lcom/android/server/LocationPolicyManagerService;->isUidValidForRules(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 938
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 911
    .local v1, "uidPolicy":I
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    .line 914
    .local v0, "uidForeground":Z
    const/4 v2, 0x0

    .line 915
    .local v2, "uidRules":I
    if-nez v0, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    .line 917
    const/4 v2, 0x1

    .line 919
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_2

    .line 921
    const/4 v2, 0x1

    .line 923
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 925
    const/4 v2, 0x0

    .line 930
    :cond_3
    if-nez v2, :cond_4

    .line 931
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 937
    :goto_1
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 933
    :cond_4
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1
.end method

.method private writePolicyLocked()V
    .locals 10

    .prologue
    .line 622
    const-string v7, "LocationPolicy"

    const-string v8, "writePolicyLocked()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v1, 0x0

    .line 626
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 628
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 629
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v4, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 630
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 632
    const/4 v7, 0x0

    const-string v8, "policy-list"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    const-string v7, "version"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 634
    const-string v7, "restrictBackground"

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 637
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationPolicy;

    .line 638
    .local v5, "policy":Landroid/location/LocationPolicy;
    const/4 v7, 0x0

    const-string v8, "location-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const/4 v7, 0x0

    const-string v8, "provider"

    iget-object v9, v5, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    const-string v7, "high-power"

    iget-boolean v8, v5, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v4, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 641
    const/4 v7, 0x0

    const-string v8, "location-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":Landroid/location/LocationPolicy;
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 664
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 667
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 645
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 646
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 647
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 650
    .local v5, "policy":I
    if-nez v5, :cond_2

    .line 645
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 652
    :cond_2
    const/4 v7, 0x0

    const-string v8, "uid-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const-string v7, "uid"

    invoke-static {v4, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 654
    const-string v7, "policy"

    invoke-static {v4, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 655
    const/4 v7, 0x0

    const-string v8, "uid-policy"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 658
    .end local v5    # "policy":I
    .end local v6    # "uid":I
    :cond_3
    const/4 v7, 0x0

    const-string v8, "policy-list"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 661
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public checkUidNavigationScreenLock(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 744
    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 845
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "LocationPolicy"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 848
    .local v1, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 849
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 852
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 853
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationMode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mScreenOn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPolicyFile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRestrictBackground="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationPolicies size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLocationRules size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidPolicies size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 862
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {p2, v6}, Landroid/location/LocationPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 863
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 860
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 865
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidRules size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {p2, v6}, Landroid/location/LocationPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    .line 869
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 866
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 871
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUidInNavigation size ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const/4 v3, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", inNavigation="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 875
    :cond_3
    monitor-exit v7

    .line 876
    return-void

    .line 875
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/LocationPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationPolicy;

    monitor-exit v1

    return-object v0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 705
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v6, "LocationPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 708
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 710
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 711
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 712
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 713
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 709
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 717
    return-object v3

    .line 716
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 755
    return-void
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .prologue
    .line 767
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v6, "LocationPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    move-object v0, p1

    .local v0, "arr$":[Landroid/location/LocationPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 772
    .local v3, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 779
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 771
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 784
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 785
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 786
    .restart local v3    # "policy":Landroid/location/LocationPolicy;
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 789
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 792
    monitor-exit v5

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRestrictBackground(Z)V
    .locals 4
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v3, "LocationPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 810
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 813
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void

    .line 813
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 815
    goto :goto_0
.end method

.method public setUidNavigationStart(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 722
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " navigation start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 725
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 728
    :cond_0
    monitor-exit v1

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUidNavigationStop(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 733
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " navigation stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 736
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 739
    :cond_0
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 678
    return-void
.end method

.method public systemRunning()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 193
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    const-string v5, "LocationPolicy"

    const-string v7, "systemRunning()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 200
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->readPolicyLocked()V

    .line 202
    iget-boolean v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    .line 210
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    .line 211
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v3, "screenFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v2, "packageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 231
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.UID_REMOVED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v4, "userFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "allowFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.MANAGE_LOCATION_POLICY"

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.location.MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "locationStateFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 248
    return-void

    .line 211
    .end local v0    # "allowFilter":Landroid/content/IntentFilter;
    .end local v1    # "locationStateFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageFilter":Landroid/content/IntentFilter;
    .end local v3    # "screenFilter":Landroid/content/IntentFilter;
    .end local v4    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 215
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 763
    return-void
.end method
