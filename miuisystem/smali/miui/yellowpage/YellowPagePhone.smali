.class public Lmiui/yellowpage/YellowPagePhone;
.super Ljava/lang/Object;
.source "YellowPagePhone.java"


# static fields
.field public static final INVALIDE_YID:I = -0x1

.field private static final MASK_SUSPECT:I = 0xf0

.field private static final MASK_T9_SEARCHABLE:I = 0xf

.field public static final TYPE_ANTISPAM:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YELLOW_PAGE:I = 0x1


# instance fields
.field private mAntispamProviderId:I

.field private mCid:I

.field private mFlag:I

.field private mHasCallMenu:Z

.field private mMarkCount:I

.field private mNormalizedNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mProviderId:I

.field private mRawSlogan:Ljava/lang/String;

.field private mSlogan:Ljava/lang/String;

.field private mT9Rank:J

.field private mTag:Ljava/lang/String;

.field private mTagPinyin:Ljava/lang/String;

.field private mType:I

.field private mVisible:Z

.field private mWordAd:Ljava/lang/String;

.field private mYpId:J

.field private mYpName:Ljava/lang/String;

.field private mYpNamePinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v14, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "cid"    # I

    .prologue
    .line 89
    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 91
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    .line 92
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "hasCallMenu"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 45
    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    .line 46
    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    .line 47
    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    .line 48
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    .line 49
    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    .line 50
    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 51
    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    .line 53
    iput-boolean p13, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    .line 54
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "ypId"    # J
    .param p3, "ypName"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "normalizedNumber"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "providerId"    # I
    .param p9, "markedCount"    # I
    .param p10, "visible"    # Z
    .param p11, "ypNamePinyin"    # Ljava/lang/String;
    .param p12, "tagPinyin"    # Ljava/lang/String;
    .param p13, "suspect"    # Z
    .param p14, "hasCallMenu"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    .line 63
    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    .line 64
    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    .line 65
    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    .line 66
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    .line 67
    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    .line 68
    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    .line 69
    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    .line 71
    iput-boolean p14, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    .line 72
    if-eqz p13, :cond_0

    .line 73
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    or-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    .line 75
    :cond_0
    return-void
.end method

.method private isSuspectServicePhone(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 299
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_SUSPECT_SERVICE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v7

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 307
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 311
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    .line 308
    goto :goto_1

    .line 311
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getAntispamProviderId()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    return v0
.end method

.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    return v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getT9Rank()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getWordAd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPageId()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    return-wide v0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPagePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallMenu()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    return v0
.end method

.method public isAntispam()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedSuspect()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspect(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-virtual {p0}, Lmiui/yellowpage/YellowPagePhone;->isMarkedSuspect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/yellowpage/YellowPagePhone;->isSuspectServicePhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isT9Searchable()Z
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMarked()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    return v0
.end method

.method public isYellowPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 177
    iget v1, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 281
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    .line 282
    return-object p0
.end method

.method public setCid(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 127
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    .line 128
    return-object p0
.end method

.method public setFlag(I)Lmiui/yellowpage/YellowPagePhone;
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 234
    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    .line 235
    return-object p0
.end method

.method public setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 3
    .param p1, "slogan"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    .line 116
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 113
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    goto :goto_0
.end method

.method public setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;
    .locals 1
    .param p1, "t9Rank"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    .line 99
    return-object p0
.end method
