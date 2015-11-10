.class public Lmiui/telephony/MiuiTelephony;
.super Lmiui/telephony/IMiuiTelephony$Stub;
.source "MiuiTelephony.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_INIT_DEFAULT_SLOT:I = 0x0

.field private static final EVENT_SYNC_DEFAULT_DATA_SLOT:I = 0x1

.field private static final EVENT_SYNC_DEFAULT_VOICE_SLOT:I = 0x2

.field private static final LAST_ICC_ID_PROPERTY:Ljava/lang/String; = "persist.radio.iccid"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final WAITING_SIM_TIME:I = 0xfa0

.field private static sInstance:Lmiui/telephony/MiuiTelephony;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

.field private mHandler:Landroid/os/Handler;

.field private mLastSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOldDefaultDataSlotId:I

.field private mOldDefaultDataSubId:I

.field private final mSc:Lcom/android/internal/telephony/SubscriptionController;

.field private mSimApplicationNum:[I

.field private mSimInsertStates:[I

.field private final mSimStatus:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "MiuiTelephony"

    sput-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-direct {p0}, Lmiui/telephony/IMiuiTelephony$Stub;-><init>()V

    .line 54
    new-instance v2, Lmiui/telephony/MiuiTelephony$1;

    invoke-direct {v2, p0}, Lmiui/telephony/MiuiTelephony$1;-><init>(Lmiui/telephony/MiuiTelephony;)V

    iput-object v2, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 99
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 101
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 102
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    const-string v3, "ABSENT"

    aput-object v3, v2, v0

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    const-string v3, "UNKNOWN"

    aput-object v3, v2, v0

    goto :goto_1

    .line 109
    :cond_1
    const-string v2, "persist.radio.default.data"

    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    .line 111
    new-instance v2, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;

    invoke-direct {v2, p0, v5}, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/MiuiTelephony;Lmiui/telephony/MiuiTelephony$1;)V

    iget-object v3, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lmiui/telephony/MiuiTelephony$TelephonyBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 113
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSubId:I

    .line 114
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I

    .line 115
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 116
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/MiuiTelephony;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/MiuiTelephony;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmiui/telephony/MiuiTelephony;->syncVoiceSubscription(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/MiuiTelephony;)[I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/MiuiTelephony;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I

    return-object v0
.end method

.method static synthetic access$300(Lmiui/telephony/MiuiTelephony;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/MiuiTelephony;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lmiui/telephony/MiuiTelephony;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/MiuiTelephony;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lmiui/telephony/MiuiTelephony;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/MiuiTelephony;

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/telephony/MiuiTelephony;->onDefaultVoiceSubscriptionChanged()V

    return-void
.end method

.method private broadcastDataSlotChanged(I)V
    .locals 4
    .param p1, "newSlotId"    # I

    .prologue
    .line 326
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDataSlotChanged old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "old_data_slot"

    iget v2, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 330
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method private broadcastDataSlotReady(I[I)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 456
    if-nez p2, :cond_0

    const-string v1, "null"

    .line 457
    .local v1, "states":Ljava/lang/String;
    :goto_0
    sget-object v2, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastDataSlotReady dataSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim state =["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 460
    const-string v2, "sim_insert_state_array"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 461
    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    return-void

    .line 456
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "states":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lmiui/telephony/MiuiTelephony;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lmiui/telephony/MiuiTelephony;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Lmiui/telephony/MiuiTelephony;

    invoke-direct {v0, p0}, Lmiui/telephony/MiuiTelephony;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    .line 149
    return-void
.end method

.method private initDefaultDataSlotId(I[I)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "simInsertStates"    # [I

    .prologue
    .line 441
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDefaultDataSlotId is trying to set default data slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSubId:I

    .line 444
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 445
    .local v0, "subId":I
    iget v1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSubId:I

    if-eq v1, v0, :cond_0

    .line 446
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    .line 453
    :goto_0
    return-void

    .line 447
    :cond_0
    iget v1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lmiui/telephony/MiuiTelephony;->broadcastDataSlotChanged(I)V

    .line 449
    iput p1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 451
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/telephony/MiuiTelephony;->broadcastDataSlotReady(I[I)V

    goto :goto_0
.end method

.method private isApplicationReady(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    const/4 v2, 0x1

    .line 493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 494
    .local v1, "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    iget-object v3, p0, Lmiui/telephony/MiuiTelephony;->mSimApplicationNum:[I

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v4

    aget v3, v3, v4

    if-ge v3, v2, :cond_0

    .line 495
    const/4 v2, 0x0

    .line 498
    .end local v1    # "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :cond_1
    return v2
.end method

.method private isSameWithBefore(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newSubInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    const/4 v4, 0x0

    .line 502
    iget-object v5, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    if-nez v5, :cond_1

    move v2, v4

    .line 503
    .local v2, "oldSize":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 506
    iget-object v5, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 507
    .local v3, "oldSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 508
    .local v1, "newSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v5

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 514
    .end local v0    # "i":I
    .end local v1    # "newSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    .end local v3    # "oldSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :cond_0
    :goto_2
    return v4

    .line 502
    .end local v2    # "oldSize":I
    :cond_1
    iget-object v5, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 505
    .restart local v0    # "i":I
    .restart local v1    # "newSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    .restart local v2    # "oldSize":I
    .restart local v3    # "oldSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    .end local v1    # "newSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    .end local v3    # "oldSub":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private onDefaultVoiceSubscriptionChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 311
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDefaultVoiceSubscriptionChanged inconsistent and wait for init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 317
    invoke-direct {p0, v0}, Lmiui/telephony/MiuiTelephony;->syncVoiceSubscription(Ljava/util/List;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDefaultVoiceSubscriptionChanged delay"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private simInsertStatesToString([I)Ljava/lang/String;
    .locals 3
    .param p1, "simInsertStates"    # [I

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 392
    if-eqz v1, :cond_0

    .line 393
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    .line 391
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :pswitch_0
    const-string v2, "NO_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 401
    :pswitch_1
    const-string v2, "NEW_CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 404
    :pswitch_2
    const-string v2, "REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    :pswitch_3
    const-string v2, "CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 410
    :pswitch_4
    const-string v2, "NO CARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private syncDataSubscription(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v4

    long-to-int v1, v4

    .line 480
    .local v1, "modemDataSubId":I
    const-string v4, "persist.radio.default.data"

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 482
    .local v3, "userDataSlotId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 483
    .local v2, "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 484
    sget-object v4, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncDataSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    .line 490
    .end local v2    # "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :goto_0
    return-void

    .line 489
    :cond_1
    sget-object v4, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncDataSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncVoiceSubscription(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v4

    long-to-int v1, v4

    .line 466
    .local v1, "modemVoiceSubId":I
    const-string v4, "persist.radio.default.voice"

    sget v5, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 468
    .local v3, "userVoiceSlotId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 469
    .local v2, "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 470
    sget-object v4, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncVoiceSubscription reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v4, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    .line 476
    .end local v2    # "si":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :goto_0
    return-void

    .line 475
    :cond_1
    sget-object v4, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v5, "syncVoiceSubscription ignore"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNewIccIds(Ljava/util/List;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 342
    iget-object v9, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    array-length v9, v9

    new-array v8, v9, [I

    .line 343
    .local v8, "simInsertStates":[I
    array-length v9, v8

    new-array v7, v9, [Ljava/lang/String;

    .line 345
    .local v7, "simIccIds":[Ljava/lang/String;
    const-string v9, "persist.radio.iccid"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "iccids":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 347
    array-length v9, v7

    invoke-static {v7, v11, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 358
    :cond_0
    array-length v9, v8

    new-array v4, v9, [Ljava/lang/String;

    .line 359
    .local v4, "newSimIccIds":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    .line 360
    .local v6, "si":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    .line 361
    .local v1, "i":I
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "newSimIccIds":[Ljava/lang/String;
    .end local v6    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_0

    .line 351
    array-length v9, v5

    if-ge v1, v9, :cond_3

    aget-object v9, v5, v1

    :goto_2
    aput-object v9, v7, v1

    .line 352
    const-string v9, "<null>"

    aget-object v12, v7, v1

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 353
    aput-object v10, v7, v1

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 351
    goto :goto_2

    .line 364
    .end local v1    # "i":I
    .end local v5    # "parts":[Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newSimIccIds":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v9, v8

    if-ge v1, v9, :cond_9

    .line 365
    aget-object v9, v7, v1

    if-nez v9, :cond_6

    .line 366
    aget-object v9, v4, v1

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    aput v9, v8, v1

    .line 364
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 366
    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    .line 368
    :cond_6
    aget-object v9, v4, v1

    if-nez v9, :cond_7

    .line 369
    const/4 v9, 0x3

    aput v9, v8, v1

    goto :goto_5

    .line 371
    :cond_7
    aget-object v9, v4, v1

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v11

    :goto_6
    aput v9, v8, v1

    goto :goto_5

    :cond_8
    const/4 v9, 0x4

    goto :goto_6

    .line 376
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_7
    array-length v9, v4

    if-ge v1, v9, :cond_c

    .line 378
    if-eqz v1, :cond_a

    .line 379
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    :cond_a
    aget-object v9, v4, v1

    if-nez v9, :cond_b

    const-string v9, "<null>"

    :goto_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 382
    :cond_b
    aget-object v9, v4, v1

    goto :goto_8

    .line 384
    :cond_c
    const-string v9, "persist.radio.iccid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-object v8
.end method


# virtual methods
.method public getSystemDefaultSlotId()I
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 196
    const-string v1, "ABSENT"

    iget-object v2, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 195
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isIccCardActivate(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method onDefaultDataSubscriptionChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 262
    const-string v7, "persist.radio.default.data"

    sget v8, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 264
    .local v5, "userDataSlotId":I
    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v5, v7, :cond_0

    .line 265
    sget-object v7, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onDefaultDataSubscriptionChanged waiting for valid user data slot"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    iget-object v7, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v8

    long-to-int v2, v8

    .line 270
    .local v2, "modemDataSubId":I
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 271
    .local v1, "modemDataSlotId":I
    sget v6, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 272
    .local v6, "userDataSubId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    .line 273
    .local v3, "subInfo":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 274
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v1

    .line 276
    :cond_2
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSlotId()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 277
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getSubscriptionId()I

    move-result v6

    goto :goto_1

    .line 280
    .end local v3    # "subInfo":Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
    :cond_3
    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne v1, v7, :cond_4

    .line 281
    sget-object v7, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onDefaultDataSubscriptionChanged waiting for valid modem data slot"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_4
    if-ne v1, v5, :cond_7

    .line 285
    iget v7, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    if-eq v7, v1, :cond_5

    .line 286
    invoke-direct {p0, v1}, Lmiui/telephony/MiuiTelephony;->broadcastDataSlotChanged(I)V

    .line 287
    iput v1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 288
    :cond_5
    iget v7, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSubId:I

    if-eq v7, v2, :cond_6

    .line 289
    iput v2, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSubId:I

    .line 290
    iget-object v7, p0, Lmiui/telephony/MiuiTelephony;->mSimInsertStates:[I

    invoke-direct {p0, v1, v7}, Lmiui/telephony/MiuiTelephony;->broadcastDataSlotReady(I[I)V

    goto :goto_0

    .line 292
    :cond_6
    sget-object v7, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onDefaultDataSubscriptionChanged ignore"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_7
    iget-object v7, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 297
    sget-object v7, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onDefaultDataSubscriptionChanged inconsistent and wait for init"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_9

    .line 301
    invoke-direct {p0, v4}, Lmiui/telephony/MiuiTelephony;->syncDataSubscription(Ljava/util/List;)V

    goto/16 :goto_0

    .line 303
    :cond_9
    sget-object v7, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onDefaultDataSubscriptionChanged delay"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v7, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v7, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method onInitDefaultSlot()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 217
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v6

    .line 218
    .local v6, "sis":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-nez v6, :cond_0

    move v3, v8

    .line 220
    .local v3, "iccCount":I
    :goto_0
    if-nez v3, :cond_1

    .line 221
    sget-object v8, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v9, "onInitDefaultSlot Subscriptions: null or 0"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_1
    return-void

    .line 218
    .end local v3    # "iccCount":I
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 225
    .restart local v3    # "iccCount":I
    :cond_1
    invoke-direct {p0, v6}, Lmiui/telephony/MiuiTelephony;->updateNewIccIds(Ljava/util/List;)[I

    move-result-object v10

    iput-object v10, p0, Lmiui/telephony/MiuiTelephony;->mSimInsertStates:[I

    .line 227
    const-string v10, "persist.radio.default.voice"

    sget v11, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 228
    .local v7, "vs":I
    const-string v10, "persist.radio.default.data"

    sget v11, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, "ds":I
    iput v0, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    .line 230
    invoke-static {v7}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "ABSENT"

    iget-object v11, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 231
    :cond_2
    sget v7, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 233
    :cond_3
    const/4 v1, 0x0

    .line 234
    .local v1, "foundDataSubInfo":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    .line 235
    .local v5, "si":Lmiui/telephony/SubscriptionInfo;
    sget-object v10, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: sub="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iccid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez v1, :cond_4

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    if-ne v10, v0, :cond_5

    :cond_4
    move v1, v9

    .line 237
    :goto_3
    goto :goto_2

    :cond_5
    move v1, v8

    .line 236
    goto :goto_3

    .line 238
    .end local v5    # "si":Lmiui/telephony/SubscriptionInfo;
    :cond_6
    if-ne v3, v9, :cond_9

    .line 239
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    .line 245
    :cond_7
    :goto_4
    iget-object v8, p0, Lmiui/telephony/MiuiTelephony;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    if-eqz v8, :cond_8

    .line 246
    iget-object v8, p0, Lmiui/telephony/MiuiTelephony;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    iget-object v9, p0, Lmiui/telephony/MiuiTelephony;->mSimInsertStates:[I

    invoke-interface {v8, v9, v0}, Lmiui/telephony/DefaultSlotSelector;->getDefaultDataSlot([II)I

    move-result v4

    .line 247
    .local v4, "newDs":I
    if-eq v0, v4, :cond_8

    invoke-static {v4}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 248
    move v0, v4

    .line 252
    .end local v4    # "newDs":I
    :cond_8
    sget-object v8, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vs = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current_ds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simInsertStates="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/MiuiTelephony;->mSimInsertStates:[I

    invoke-direct {p0, v10}, Lmiui/telephony/MiuiTelephony;->simInsertStatesToString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    iget-object v8, p0, Lmiui/telephony/MiuiTelephony;->mSimInsertStates:[I

    invoke-direct {p0, v0, v8}, Lmiui/telephony/MiuiTelephony;->initDefaultDataSlotId(I[I)V

    .line 256
    iget-object v8, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lmiui/telephony/MiuiTelephony;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 257
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 240
    :cond_9
    if-nez v1, :cond_7

    .line 241
    invoke-virtual {p0}, Lmiui/telephony/MiuiTelephony;->getSystemDefaultSlotId()I

    move-result v0

    .line 242
    sget-object v8, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "use system default slotId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method onSimStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 334
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne p1, v0, :cond_0

    .line 335
    const/4 p1, 0x0

    .line 338
    :cond_0
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mSimStatus:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 339
    return-void
.end method

.method public onSubscriptionChanged()V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSubscriptionChanged only for debug using"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "subInfoImpls":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    iput-object v3, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    .line 125
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lmiui/telephony/MiuiTelephony;->isApplicationReady(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged return for no sim application"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object v3, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    .line 129
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0, v0}, Lmiui/telephony/MiuiTelephony;->isSameWithBefore(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged no need update"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 133
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSubscriptionsChanged for one sub"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object v0, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    .line 135
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 137
    :cond_4
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionsChanged update subSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-object v0, p0, Lmiui/telephony/MiuiTelephony;->mLastSubInfos:Ljava/util/List;

    .line 139
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is trying to set default data slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string v1, "persist.radio.default.data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 182
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(J)V

    .line 188
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 190
    .end local v0    # "subId":I
    :goto_1
    return v1

    .line 184
    .restart local v0    # "subId":I
    :cond_1
    iget v1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    if-eq v1, p1, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lmiui/telephony/MiuiTelephony;->broadcastDataSlotChanged(I)V

    .line 186
    iput p1, p0, Lmiui/telephony/MiuiTelephony;->mOldDefaultDataSlotId:I

    goto :goto_0

    .line 190
    .end local v0    # "subId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDefaultSlotSelector(Lmiui/telephony/DefaultSlotSelector;)V
    .locals 0
    .param p1, "selector"    # Lmiui/telephony/DefaultSlotSelector;

    .prologue
    .line 209
    iput-object p1, p0, Lmiui/telephony/MiuiTelephony;->mDefaultSlotSelector:Lmiui/telephony/DefaultSlotSelector;

    .line 210
    return-void
.end method

.method public setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is trying to set default voice slot to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v1, :cond_1

    .line 157
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 160
    :cond_0
    const-string v1, "persist.radio.default.voice"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-ne p1, v1, :cond_2

    .line 162
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 167
    .local v0, "subId":I
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lmiui/telephony/MiuiTelephony;->mSc:Lcom/android/internal/telephony/SubscriptionController;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(J)V

    goto :goto_0
.end method
