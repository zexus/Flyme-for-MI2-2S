.class public abstract Lmiui/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Lmiui/telephony/SubscriptionManager$Holder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_ID:I

.field public static final DEFAULT_SLOT_ID:I

.field public static final DEFAULT_SUBSCRIPTION_ID:I

.field public static final INVALID_PHONE_ID:I

.field public static final INVALID_SLOT_ID:I

.field public static final INVALID_SUBSCRIPTION_ID:I

.field protected static final LOG_TAG:Ljava/lang/String; = "MiuiSubscriptionManager"

.field public static final PHONE_KEY:Ljava/lang/String;

.field public static final SLOT_ID_1:I = 0x0

.field public static final SLOT_ID_2:I = 0x1

.field public static final SLOT_KEY:Ljava/lang/String;

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String;


# instance fields
.field private mAllSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInsertedSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 28
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    .line 31
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getInvalidSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 34
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    .line 37
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    .line 40
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getDefaultSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    .line 43
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getSubscriptionKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    .line 46
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getPhoneKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    .line 49
    invoke-static {}, Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;->getSlotKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    .line 83
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 84
    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/SubscriptionManager;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/SubscriptionManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;

    .prologue
    .line 14
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/SubscriptionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SubscriptionManager;

    .prologue
    .line 14
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ensureSubscriptionInfoCache(Z)V
    .locals 1
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 124
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    .line 130
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v0, :cond_3

    .line 131
    :cond_2
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v0, :cond_3

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 136
    :cond_3
    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lmiui/telephony/SubscriptionManager$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method public static getPhoneId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 542
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPhoneIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 530
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSlotId(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 306
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 307
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 308
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    .line 311
    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return v2

    :cond_1
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_0
.end method

.method public static getSlotId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 534
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlotIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 522
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionId(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .prologue
    .line 538
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionIdExtra(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    .line 526
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRealSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 469
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 476
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 462
    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 455
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putPhoneId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "phoneId"    # I

    .prologue
    .line 506
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 507
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 509
    return-void
.end method

.method public static putPhoneIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 485
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 486
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 488
    return-void
.end method

.method public static putSlotId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I

    .prologue
    .line 501
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 503
    return-void
.end method

.method public static putSlotIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I

    .prologue
    .line 480
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 482
    return-void
.end method

.method public static putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 516
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    return-void
.end method

.method public static putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 495
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    return-void
.end method

.method public static putSubscriptionId(Landroid/os/Bundle;I)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "subId"    # I

    .prologue
    .line 512
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 513
    return-void
.end method

.method public static putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .prologue
    .line 491
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 492
    return-void
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 95
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 99
    :cond_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 247
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return-object v0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    .line 213
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mAllSubscriptionInfos:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getAllSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDataSlotId()I
.end method

.method public abstract getDefaultDataSubscriptionId()I
.end method

.method public abstract getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSlotId()I
    .locals 3

    .prologue
    .line 386
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 387
    .local v1, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 393
    :goto_0
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 394
    .local v0, "slotId":I
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    .line 398
    :cond_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne v0, v2, :cond_2

    .line 399
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v0

    .line 401
    :cond_2
    return v0

    .line 390
    .end local v0    # "slotId":I
    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    goto :goto_0
.end method

.method protected abstract getDefaultSlotIdInternal()I
.end method

.method public getDefaultSmsSlotId()I
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method public abstract getDefaultSmsSubscriptionId()I
.end method

.method public abstract getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSubscriptionId()I
    .locals 2

    .prologue
    .line 361
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 362
    .local v0, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 368
    :goto_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 371
    :cond_1
    return v0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultVoiceSlotId()I
.end method

.method public abstract getDefaultVoiceSubscriptionId()I
.end method

.method public abstract getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getPhoneIdForSlot(I)I
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 320
    return p1
.end method

.method public getPhoneIdForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 297
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v1, :cond_2

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    .line 302
    .local v0, "phoneId":I
    :goto_1
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_0

    .line 301
    .end local v0    # "phoneId":I
    :cond_2
    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    goto :goto_1
.end method

.method public getSlotIdForPhone(I)I
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 329
    return p1
.end method

.method public getSlotIdForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 283
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v1, :cond_2

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    .line 288
    .local v0, "slotId":I
    :goto_1
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_0

    .line 287
    .end local v0    # "slotId":I
    :cond_2
    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    goto :goto_1
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 338
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 352
    :goto_0
    return v2

    .line 342
    :cond_0
    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v2, :cond_1

    .line 343
    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 347
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 348
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    goto :goto_0

    .line 352
    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0
.end method

.method public getSubscriptionInfoCount()I
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "activeCount":I
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 270
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_1
    return v0
.end method

.method public getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 204
    :goto_0
    return-object v1

    .line 194
    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v3, :cond_1

    .line 195
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 199
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method public getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 181
    :goto_0
    return-object v1

    .line 172
    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v3, :cond_1

    .line 173
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 177
    .local v1, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v1    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    move-object v1, v2

    .line 181
    goto :goto_0
.end method

.method public getSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    .line 238
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected onSubscriptionInfoChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Lmiui/telephony/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManager$1;-><init>(Lmiui/telephony/SubscriptionManager;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 111
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 113
    monitor-exit v1

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 120
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract setDefaultDataSlotId(I)V
.end method

.method public setDefaultDataSubscriptionId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    .line 424
    return-void
.end method

.method public setDefaultSmsSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 439
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 443
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    goto :goto_0
.end method

.method public abstract setDefaultSmsSubscriptionId(I)V
.end method

.method public abstract setDefaultVoiceSlotId(I)V
.end method

.method public setDefaultVoiceSubscriptionId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    .line 412
    return-void
.end method
