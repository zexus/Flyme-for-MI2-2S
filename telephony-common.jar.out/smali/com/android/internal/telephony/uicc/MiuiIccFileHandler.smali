.class public Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
.super Ljava/lang/Object;
.source "MiuiIccFileHandler.java"


# instance fields
.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 17
    return-void
.end method


# virtual methods
.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 76
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 80
    return-void
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 72
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 6
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 97
    return-void
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 16
    .param p1, "fileid"    # I
    .param p2, "recordSize"    # I
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 29
    new-instance v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    .line 30
    .local v14, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    iget v5, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v7, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    iget v9, v14, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v12, v12, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v15, 0x7

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 37
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 68
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 20
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 23
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v9, v2, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 26
    return-void
.end method

.method public loadEFLinearFixedAll(IIILandroid/os/Message;)V
    .locals 14
    .param p1, "fileid"    # I
    .param p2, "recordSize"    # I
    .param p3, "recordCount"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 40
    new-instance v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p4

    invoke-direct {v12, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 41
    .local v12, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 42
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 45
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb2

    iget v3, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v6, 0x4

    iget v7, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v10, v10, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v13, 0x7

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 50
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 84
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;IILandroid/os/Message;)V
    .locals 13
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordSize"    # I
    .param p4, "recordCount"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 53
    new-instance v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v12, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 54
    .local v12, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 55
    move/from16 v0, p4

    iput v0, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 56
    iput-object p2, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb2

    iget v3, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v5, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v6, 0x4

    iget v7, v12, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v10, v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v11, 0x7

    invoke-virtual {v4, v11, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v4, p2

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 64
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 92
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 88
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 102
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 111
    return-void
.end method
