.class Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionInfoImpl"
.end annotation


# instance fields
.field mSlotId:I

.field private final mSubInfoRecord:Landroid/telephony/SubInfoRecord;

.field private final mSubscriptionId:I


# direct methods
.method private constructor <init>(Landroid/telephony/SubInfoRecord;)V
    .locals 2
    .param p1, "sir"    # Landroid/telephony/SubInfoRecord;

    .prologue
    .line 298
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 299
    iget-wide v0, p1, Landroid/telephony/SubInfoRecord;->subId:J

    long-to-int v0, v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/telephony/SubInfoRecord;->subId:J

    :goto_0
    long-to-int v0, v0

    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    .line 300
    iget v0, p1, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/telephony/SubInfoRecord;->slotId:I

    :goto_1
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    .line 301
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    .line 302
    return-void

    .line 299
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    int-to-long v0, v0

    goto :goto_0

    .line 300
    :cond_1
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_1
.end method

.method public static from(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez p0, :cond_1

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :cond_0
    return-object v1

    .line 313
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "rets":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 315
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    invoke-static {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubInfoRecord;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static from(Landroid/telephony/SubInfoRecord;)Lmiui/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "sir"    # Landroid/telephony/SubInfoRecord;

    .prologue
    .line 305
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;-><init>(Landroid/telephony/SubInfoRecord;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget v0, v0, Landroid/telephony/SubInfoRecord;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget v0, v0, Landroid/telephony/SubInfoRecord;->mnc:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget v0, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfoRecord:Landroid/telephony/SubInfoRecord;

    iget v1, v1, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
