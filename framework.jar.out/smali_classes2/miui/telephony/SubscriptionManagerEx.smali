.class public Lmiui/telephony/SubscriptionManagerEx;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;,
        Lmiui/telephony/SubscriptionManagerEx$Holder;,
        Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;
    }
.end annotation


# static fields
.field public static final ACTION_DEFAULT_DATA_SLOT_CHANGED:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

.field public static final ACTION_DEFAULT_DATA_SLOT_READY:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

.field static final DEFAULT_DATA_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.data"

.field private static final DEFAULT_SMS_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.sms"

.field static final DEFAULT_VOICE_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.voice"

.field public static final KEY_OLD_DATA_SLOT:Ljava/lang/String; = "old_data_slot"

.field public static final KEY_SIM_INSERT_STATE_ARRAY:Ljava/lang/String; = "sim_insert_state_array"

.field public static final SIM_CHANGED:I = 0x4

.field public static final SIM_NEW_CARD:I = 0x2

.field public static final SIM_NO_CARD:I = 0x1

.field public static final SIM_NO_CHANGE:I = 0x0

.field public static final SIM_REMOVED:I = 0x3


# instance fields
.field private mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    .line 88
    new-instance v1, Lmiui/telephony/SubscriptionManagerEx$1;

    invoke-direct {v1, p0}, Lmiui/telephony/SubscriptionManagerEx$1;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SubscriptionManagerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/SubscriptionManagerEx$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManagerEx;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method private getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
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
    .line 109
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDataSlotId()I
    .locals 3

    .prologue
    .line 247
    const-string v1, "persist.radio.default.data"

    sget v2, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "ret":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v0

    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    long-to-int v0, v2

    .line 234
    .local v0, "subId":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 237
    :cond_0
    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubInfoRecord;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSlotIdInternal()I
    .locals 2

    .prologue
    .line 192
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->getSystemDefaultSlotId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSmsSubscriptionId()I
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    long-to-int v0, v2

    .line 267
    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .end local v0    # "subId":I
    :cond_0
    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubInfoRecord;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSlotId()I
    .locals 2

    .prologue
    .line 211
    const-string v0, "persist.radio.default.voice"

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultVoiceSubscriptionId()I
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    long-to-int v0, v2

    .line 201
    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .end local v0    # "subId":I
    :cond_0
    return v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubInfoRecord;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getSubscriptionInfoListInternal()Ljava/util/List;
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
    .line 114
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 253
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmiui/telephony/IMiuiTelephony;->setDefaultDataSlotId(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default data slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultSmsSubscriptionId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 277
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget p1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .line 281
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSmsSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(J)V

    goto :goto_0
.end method

.method public setDefaultVoiceSlotId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 216
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    sget p1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    .line 220
    :cond_0
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v1, :cond_1

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmiui/telephony/IMiuiTelephony;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default voice slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisplayNameForSlot(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 142
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result p2

    .line 150
    :cond_1
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNameForSubscription(Ljava/lang/String;I)I
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 124
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 128
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    int-to-long v0, p2

    const-wide/16 v2, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNumberForSlot(Ljava/lang/String;I)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 178
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 182
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result p2

    .line 186
    :cond_1
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 160
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 164
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0
.end method
