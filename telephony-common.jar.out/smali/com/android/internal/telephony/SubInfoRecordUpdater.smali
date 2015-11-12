.class public Lcom/android/internal/telephony/SubInfoRecordUpdater;
.super Landroid/os/Handler;
.source "SubInfoRecordUpdater.java"


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_OFFSET:I = 0x8

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_STACK_READY:I = 0x3

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static sIccId:[Ljava/lang/String;

.field private static sInsertSimState:[I

.field private static sNeedUpdate:Z

.field private static sPhone:[Lcom/android/internal/telephony/Phone;

.field private static sTelephonyMgr:Landroid/telephony/TelephonyManager;


# instance fields
.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 86
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 87
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 88
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 90
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 91
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    .line 92
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    .line 93
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    new-instance v2, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 100
    sput-object p1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 101
    sput-object p2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    .line 102
    sput-object p3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 103
    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 105
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 108
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 54
    sput-object p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static encodeEventId(II)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 115
    mul-int/lit8 v0, p1, 0x8

    shl-int v0, p0, v0

    return v0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 192
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    .line 199
    :goto_1
    return v1

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "All IccIds query complete"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 588
    const/4 v1, 0x1

    .line 589
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 590
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    const/4 v1, 0x0

    .line 595
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 597
    return v1

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 606
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubInfoRecordUpdater]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private queryIccId(I)V
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryIccId: slotid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 336
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 337
    const-string v6, "Getting IccFileHandler"

    invoke-static {v6}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 339
    const/4 v5, 0x0

    .line 340
    .local v5, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 341
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .line 342
    .local v3, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 343
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 344
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_2

    .line 345
    move-object v5, v0

    .line 349
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v7

    aput-object v7, v6, p1

    .line 352
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    if-eqz v6, :cond_4

    .line 353
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v6, p1

    .line 354
    .local v2, "iccId":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 355
    const-string v6, "Querying IccId"

    invoke-static {v6}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 356
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v6, v6, p1

    const/16 v7, 0x2fe2

    const/4 v8, 0x1

    invoke-static {v8, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->encodeEventId(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 365
    .end local v2    # "iccId":Ljava/lang/String;
    :goto_1
    return-void

    .line 342
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "i":I
    .restart local v3    # "numApps":I
    .restart local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "i":I
    .end local v3    # "numApps":I
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 362
    .end local v2    # "iccId":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v7, v6, p1

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sFh["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null, SIM not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p0, "newSubName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "newNameSource"    # I

    .prologue
    .line 203
    int-to-long v4, p1

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    .line 204
    .local v2, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_3

    .line 206
    iget v0, v2, Landroid/telephony/SubInfoRecord;->nameSource:I

    .line 207
    .local v0, "oldNameSource":I
    iget-object v1, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 208
    .local v1, "oldSubName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] mSubInfoIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 211
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    :cond_1
    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    int-to-long v6, p2

    invoke-static {p0, v4, v5, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    .line 221
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 219
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setUpdatedData(III)V
    .locals 6
    .param p0, "detectedType"    # I
    .param p1, "subCount"    # I
    .param p2, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[setUpdatedData]+ "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 563
    if-ne p0, v2, :cond_1

    .line 564
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v1, "newSIMSlot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SUBINFO_RECORD_UPDATED : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 583
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 584
    const-string v1, "[setUpdatedData]- "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 585
    return-void

    .line 568
    :cond_1
    if-ne p0, v4, :cond_2

    .line 569
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 572
    :cond_2
    if-ne p0, v3, :cond_3

    .line 573
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 576
    :cond_3
    if-ne p0, v5, :cond_0

    .line 577
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v3

    .line 284
    .local v3, "subHelper":Lcom/android/internal/telephony/SubscriptionHelper;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccAvailability: Enter, slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    const-string v4, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    goto :goto_0

    .line 297
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 298
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 299
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 302
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v4, p1

    .line 303
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v1, v4, p1

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: New Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Old Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_5

    .line 308
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 310
    sput-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 312
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 313
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, p1

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto/16 :goto_0

    .line 317
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 319
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hot plug in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 321
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aput-object v6, v4, p1

    .line 322
    sput-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 324
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V

    goto/16 :goto_0

    .line 325
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->isApmSIMNotPwdn()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-nez v4, :cond_0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " powered up from APM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 328
    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aput-object v6, v4, p1

    .line 329
    sput-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 601
    const-string v0, "[dispose]"

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 602
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 603
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    .line 228
    .local v4, "msgNum":I
    const/4 v6, 0x0

    .local v6, "slotId":I
    :goto_0
    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    .line 229
    mul-int/lit8 v7, v6, 0x8

    shl-int v5, v9, v7

    .line 230
    .local v5, "pivot":I
    if-lt v4, v5, :cond_0

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "pivot":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 237
    mul-int/lit8 v7, v6, 0x8

    shr-int v3, v4, v7

    .line 238
    .local v3, "event":I
    packed-switch v3, :pswitch_data_0

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_1
    return-void

    .line 240
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 241
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 242
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 243
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v2, v7

    check-cast v2, [B

    .line 244
    .local v2, "data":[B
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    array-length v8, v2

    invoke-static {v2, v10, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 253
    .end local v2    # "data":[B
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccId["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v7, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    goto :goto_1

    .line 246
    :cond_2
    const-string v7, "Null ar"

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 247
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    goto :goto_2

    .line 250
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query IccId fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :pswitch_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 260
    .local v1, "cardIndex":Ljava/lang/Integer;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_4

    .line 261
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "cardIndex":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 266
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateIccAvailability(I)V

    goto/16 :goto_1

    .line 263
    :cond_4
    const-string v7, "SUB"

    const-string v8, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 269
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    :pswitch_2
    const-string v7, "EVENT_STACK_READY"

    invoke-static {v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v7

    if-eqz v7, :cond_1

    sget v7, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-le v7, v9, :cond_1

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized updateSimInfoByIccId()V
    .locals 24

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    const-string v19, "[updateSimInfoByIccId]+ Start"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 369
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 371
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearSubInfo()V

    .line 373
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_0

    .line 374
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, 0x0

    aput v20, v19, v6

    .line 373
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 377
    :cond_0
    sget v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 378
    .local v8, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_1
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 379
    const-string v19, ""

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 380
    add-int/lit8 v8, v8, -0x1

    .line 381
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, -0x63

    aput v20, v19, v6

    .line 378
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 384
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "insertedSimCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 386
    const/4 v7, 0x0

    .line 387
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_2
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    .line 388
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    const/16 v20, -0x63

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 387
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 391
    :cond_4
    const/4 v7, 0x2

    .line 392
    add-int/lit8 v9, v6, 0x1

    .local v9, "j":I
    :goto_3
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 393
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v9

    if-nez v19, :cond_5

    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v20, v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 394
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, 0x1

    aput v20, v19, v6

    .line 395
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aput v7, v19, v9

    .line 396
    add-int/lit8 v7, v7, 0x1

    .line 392
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 401
    .end local v9    # "j":I
    :cond_6
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 402
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .line 403
    .local v14, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    .line 404
    const/16 v19, 0x0

    aput-object v19, v14, v6

    .line 405
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v15

    .line 407
    .local v15, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v15, :cond_9

    .line 408
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v14, v6

    .line 409
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "oldSubId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 410
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    if-nez v19, :cond_7

    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    aget-object v20, v14, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 411
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, -0x1

    aput v20, v19, v6

    .line 413
    :cond_7
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    if-eqz v19, :cond_8

    .line 414
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 415
    .local v18, "value":Landroid/content/ContentValues;
    const-string v19, "sim_id"

    const/16 v20, -0x3e8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    sget-object v20, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 421
    :cond_9
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    if-nez v19, :cond_a

    .line 423
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, -0x1

    aput v20, v19, v6

    .line 425
    :cond_a
    const-string v19, ""

    aput-object v19, v14, v6

    .line 426
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No SIM in slot "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " last time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 368
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v14    # "oldIccId":[Ljava/lang/String;
    .end local v15    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 430
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v14    # "oldIccId":[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    :goto_6
    :try_start_1
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 431
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "oldIccId["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", sIccId["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 435
    :cond_c
    const/4 v11, 0x0

    .line 436
    .local v11, "nNewCardCount":I
    const/4 v12, 0x0

    .line 437
    .local v12, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_7
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_10

    .line 438
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    const/16 v20, -0x63

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 439
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No SIM inserted in slot "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " this time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 440
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 441
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 437
    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 444
    :cond_e
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    if-lez v19, :cond_f

    .line 447
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v20, v20, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 449
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SUB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v6, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has invalid IccId"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 453
    :goto_9
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 454
    add-int/lit8 v11, v11, 0x1

    .line 455
    packed-switch v6, :pswitch_data_0

    .line 470
    :goto_a
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, -0x2

    aput v20, v19, v6

    goto :goto_8

    .line 451
    :cond_f
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_9

    .line 457
    :pswitch_0
    or-int/lit8 v12, v12, 0x1

    .line 458
    goto :goto_a

    .line 460
    :pswitch_1
    or-int/lit8 v12, v12, 0x2

    .line 461
    goto :goto_a

    .line 463
    :pswitch_2
    or-int/lit8 v12, v12, 0x4

    goto :goto_a

    .line 475
    :cond_10
    const/4 v6, 0x0

    :goto_b
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_12

    .line 476
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 477
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v20, -0x3

    aput v20, v19, v6

    .line 475
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 480
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v19

    if-eqz v19, :cond_13

    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 482
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    .line 485
    :cond_13
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v16

    .line 486
    .local v16, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v16, :cond_15

    const/4 v13, 0x0

    .line 487
    .local v13, "nSubCount":I
    :goto_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "nSubCount = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 488
    const/4 v6, 0x0

    :goto_d
    if-ge v6, v13, :cond_16

    .line 489
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/SubInfoRecord;

    .line 491
    .local v17, "temp":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v10

    .line 493
    .local v10, "msisdn":Ljava/lang/String;
    if-eqz v10, :cond_14

    .line 494
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 495
    .restart local v18    # "value":Landroid/content/ContentValues;
    const-string v19, "number"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v19, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 486
    .end local v10    # "msisdn":Ljava/lang/String;
    .end local v13    # "nSubCount":I
    .end local v17    # "temp":Landroid/telephony/SubInfoRecord;
    :cond_15
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_c

    .line 502
    .restart local v13    # "nSubCount":I
    :cond_16
    const/4 v5, 0x0

    .line 503
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_e
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_17

    .line 504
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    if-eqz v19, :cond_1a

    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v19, v19, v6

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    aget-object v19, v14, v6

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 506
    const/4 v5, 0x1

    .line 511
    :cond_17
    if-nez v11, :cond_1f

    .line 513
    if-eqz v5, :cond_1c

    .line 515
    const/4 v6, 0x0

    :goto_f
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_18

    .line 516
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    const/16 v20, -0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 517
    const-string v19, "No new SIM detected and SIM repositioned"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 518
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-static {v0, v13, v12}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 523
    :cond_18
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ne v6, v0, :cond_19

    .line 525
    const-string v19, "No new SIM detected and SIM removed"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 526
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v0, v13, v12}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 551
    :cond_19
    :goto_10
    const-string v19, "[updateSimInfoByIccId]- SimInfo update complete"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 554
    #invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    #move-result-object v19

    #invoke-virtual/range {v19 .. v19}, Lmiui/telephony/MiuiTelephony;->onSubscriptionChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 503
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 515
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 531
    :cond_1c
    const/4 v6, 0x0

    :goto_11
    :try_start_2
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_1d

    .line 532
    sget-object v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v19, v19, v6

    const/16 v20, -0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 533
    const-string v19, "No new SIM detected and SIM repositioned"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 534
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-static {v0, v13, v12}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 539
    :cond_1d
    sget v19, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v19

    if-ne v6, v0, :cond_19

    .line 541
    const-string v19, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 542
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v0, v13, v12}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    goto :goto_10

    .line 531
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 547
    :cond_1f
    const-string v19, "New SIM detected"

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 548
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v0, v13, v12}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_10

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
