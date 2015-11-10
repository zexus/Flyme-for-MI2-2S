.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 395
    sget-object v4, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v3, Landroid/net/wifi/WifiSsid;

    .line 397
    .restart local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIIZZ)V

    .line 411
    .local v2, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v2, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 419
    .local v16, "n":I
    if-eqz v16, :cond_4

    .line 420
    move/from16 v0, v16

    new-array v4, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 421
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 422
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v5, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v5, v4, v14

    .line 423
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 425
    .local v15, "len":I
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v14

    new-array v5, v15, [B

    iput-object v5, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 426
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v14

    iget-object v4, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 421
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 397
    .end local v2    # "sr":Landroid/net/wifi/ScanResult;
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v16    # "n":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 413
    .restart local v2    # "sr":Landroid/net/wifi/ScanResult;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 429
    .restart local v16    # "n":I
    :cond_4
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 433
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
