.class public Lmiui/telephony/MccMncOverlayRes;
.super Ljava/lang/Object;
.source "MccMncOverlayRes.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/MccMncOverlayRes$ResEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_MCC_MNC:I = 0x0

.field public static final RES_TYPE_INT:I = 0x2

.field public static final RES_TYPE_STRING_ARRAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MccMncOverlayRes"

.field private static sInstance:Lmiui/telephony/MccMncOverlayRes;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/MccMncOverlayRes$ResEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    .line 150
    :cond_0
    return-void
.end method

.method private addOverlayResEntry(II)V
    .locals 9
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lmiui/telephony/MccMncOverlayRes;->calcKey(II)I

    move-result v2

    .line 215
    .local v2, "mccMnc":I
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v3, "newAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/MccMncOverlayRes$ResEntry;>;"
    iget-object v6, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 217
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 218
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v5    # "value":Ljava/lang/Object;
    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;

    .line 219
    .local v1, "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    iget v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->mccMnc:I

    if-nez v6, :cond_0

    .line 220
    iget-object v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 221
    iget v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->resId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 223
    .local v5, "value":Ljava/lang/Integer;
    iget-object v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    iget-object v5, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    .line 235
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_1
    :goto_1
    new-instance v6, Lmiui/telephony/MccMncOverlayRes$ResEntry;

    iget v7, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->resId:I

    invoke-direct {v6, p0, v7, v2, v5}, Lmiui/telephony/MccMncOverlayRes$ResEntry;-><init>(Lmiui/telephony/MccMncOverlayRes;IILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_2
    iget-object v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    instance-of v6, v6, [Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 227
    iget v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->resId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "value":[Ljava/lang/String;
    iget-object v6, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    iget-object v5, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    .local v5, "value":Ljava/lang/Object;
    goto :goto_1

    .line 232
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    const-string v6, "MccMncOverlayRes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addOverlayResEntry invalid type and value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v1    # "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    :cond_4
    iget-object v6, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v6, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->trimToSize()V

    .line 240
    return-void
.end method

.method private calcKey(II)I
    .locals 1
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    .line 246
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    return v0
.end method

.method public static getInstance()Lmiui/telephony/MccMncOverlayRes;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmiui/telephony/MccMncOverlayRes;->sInstance:Lmiui/telephony/MccMncOverlayRes;

    return-object v0
.end method

.method private getResValue(II)Ljava/lang/Object;
    .locals 13
    .param p1, "resId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 162
    const/4 v5, 0x0

    .line 163
    .local v5, "mccMnc":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 165
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 168
    :cond_0
    const/4 v4, 0x0

    .line 169
    .local v4, "mcc":I
    const/4 v7, 0x0

    .line 170
    .local v7, "mnc":I
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 172
    const/4 v11, 0x0

    const/4 v12, 0x3

    :try_start_0
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 173
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 179
    :cond_1
    invoke-direct {p0, v4, v7}, Lmiui/telephony/MccMncOverlayRes;->calcKey(II)I

    move-result v6

    .line 180
    .local v6, "mccMncKey":I
    const/4 v9, 0x0

    .line 181
    .local v9, "ret":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 182
    .local v0, "defaultRet":Ljava/lang/Object;
    iget-object v11, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v10, v0

    .end local v0    # "defaultRet":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;

    .line 183
    .local v3, "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    iget v11, v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;->resId:I

    if-ne p1, v11, :cond_2

    .line 184
    iget v11, v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;->mccMnc:I

    if-ne v11, v6, :cond_4

    .line 185
    iget-object v9, v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    .line 192
    .end local v3    # "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    .end local v9    # "ret":Ljava/lang/Object;
    :cond_3
    if-nez v9, :cond_5

    .line 196
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "mccMncKey":I
    :goto_1
    return-object v10

    .line 174
    :catch_0
    move-exception v8

    .line 175
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v11, "MccMncOverlayRes"

    const-string v12, "getResValue NumberFormatException"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v10, 0x0

    goto :goto_1

    .line 187
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    .restart local v6    # "mccMncKey":I
    .restart local v9    # "ret":Ljava/lang/Object;
    :cond_4
    iget v11, v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;->mccMnc:I

    if-nez v11, :cond_2

    .line 188
    iget-object v0, v3, Lmiui/telephony/MccMncOverlayRes$ResEntry;->value:Ljava/lang/Object;

    .restart local v0    # "defaultRet":Ljava/lang/Object;
    move-object v10, v0

    goto :goto_0

    .end local v0    # "defaultRet":Ljava/lang/Object;
    .end local v3    # "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    .end local v9    # "ret":Ljava/lang/Object;
    :cond_5
    move-object v10, v9

    goto :goto_1
.end method

.method public static make(Landroid/content/Context;)Lmiui/telephony/MccMncOverlayRes;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lmiui/telephony/MccMncOverlayRes;->sInstance:Lmiui/telephony/MccMncOverlayRes;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lmiui/telephony/MccMncOverlayRes;

    invoke-direct {v0, p0}, Lmiui/telephony/MccMncOverlayRes;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/telephony/MccMncOverlayRes;->sInstance:Lmiui/telephony/MccMncOverlayRes;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/telephony/MccMncOverlayRes;->sInstance:Lmiui/telephony/MccMncOverlayRes;

    goto :goto_0
.end method

.method private needUpdate(II)Z
    .locals 4
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lmiui/telephony/MccMncOverlayRes;->calcKey(II)I

    move-result v2

    .line 201
    .local v2, "mccMnc":I
    iget-object v3, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;

    .line 202
    .local v1, "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    iget v3, v1, Lmiui/telephony/MccMncOverlayRes$ResEntry;->mccMnc:I

    if-ne v3, v2, :cond_0

    .line 204
    const/4 v3, 0x0

    .line 207
    .end local v1    # "item":Lmiui/telephony/MccMncOverlayRes$ResEntry;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 154
    iget-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iput-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    .line 158
    :cond_0
    iput-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method

.method public getIntRes(II)I
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, p2, p1}, Lmiui/telephony/MccMncOverlayRes;->getResValue(II)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "ret":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method public getStringArrayRes(II)[Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, p2, p1}, Lmiui/telephony/MccMncOverlayRes;->getResValue(II)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "ret":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "ret":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initRes([II)V
    .locals 7
    .param p1, "intResIds"    # [I
    .param p2, "resType"    # I

    .prologue
    .line 73
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v3, 0x0

    .line 78
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 79
    .local v0, "config":Landroid/content/res/Configuration;
    const-string v4, "MccMncOverlayRes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initRes mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mnc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "mccMnc":I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v4, :cond_2

    .line 83
    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    const v6, 0xffff

    if-ne v4, v6, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v5, v4}, Lmiui/telephony/MccMncOverlayRes;->calcKey(II)I

    move-result v2

    .line 85
    :cond_2
    if-eqz p1, :cond_0

    .line 86
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 87
    const/4 v1, 0x0

    .end local v3    # "value":Ljava/lang/Object;
    .local v1, "i":I
    :goto_2
    if-eqz p1, :cond_4

    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 88
    aget v4, p1, v1

    packed-switch v4, :pswitch_data_0

    .line 96
    const-string v4, "MccMncOverlayRes"

    const-string v5, "initRes invalid type"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    goto :goto_1

    .line 90
    .end local v3    # "value":Ljava/lang/Object;
    .restart local v1    # "i":I
    :pswitch_0
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_3
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    new-instance v5, Lmiui/telephony/MccMncOverlayRes$ResEntry;

    aget v6, p1, v1

    invoke-direct {v5, p0, v6, v2, v3}, Lmiui/telephony/MccMncOverlayRes$ResEntry;-><init>(Lmiui/telephony/MccMncOverlayRes;IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :pswitch_1
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 94
    .local v3, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 101
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_4
    iget-object v4, p0, Lmiui/telephony/MccMncOverlayRes;->mResValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initTelephonyRes()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 60
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 63
    .local v1, "stringArrayResIds":[I
    invoke-virtual {p0, v1, v2}, Lmiui/telephony/MccMncOverlayRes;->initRes([II)V

    .line 64
    new-array v0, v2, [I

    const/4 v2, 0x0

    const v3, 0x10e005a

    aput v3, v0, v2

    .line 66
    .local v0, "intResIds":[I
    invoke-virtual {p0, v0, v4}, Lmiui/telephony/MccMncOverlayRes;->initRes([II)V

    .line 67
    return-void

    .line 60
    :array_0
    .array-data 4
        0x1070032
        0x1070033
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 136
    .local v0, "mnc":I
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-direct {p0, v1, v0}, Lmiui/telephony/MccMncOverlayRes;->needUpdate(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :goto_1
    return-void

    .line 135
    .end local v0    # "mnc":I
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    goto :goto_0

    .line 139
    .restart local v0    # "mnc":I
    :cond_1
    const-string v1, "MccMncOverlayRes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged updated mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-direct {p0, v1, v0}, Lmiui/telephony/MccMncOverlayRes;->addOverlayResEntry(II)V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
