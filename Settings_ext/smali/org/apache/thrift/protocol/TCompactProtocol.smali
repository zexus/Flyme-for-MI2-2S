.class public final Lorg/apache/thrift/protocol/TCompactProtocol;
.super Lorg/apache/thrift/protocol/d;
.source "TCompactProtocol.java"


# static fields
.field private static final aUd:Lorg/apache/thrift/protocol/g;

.field private static final aUn:Lorg/apache/thrift/protocol/a;

.field private static final aUo:[B


# instance fields
.field private aUp:Lorg/apache/thrift/a;

.field private aUq:S

.field private aUr:Lorg/apache/thrift/protocol/a;

.field private aUs:Ljava/lang/Boolean;

.field aUt:[B

.field aUu:[B

.field private aUv:[B

.field aUw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUd:Lorg/apache/thrift/protocol/g;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUn:Lorg/apache/thrift/protocol/a;

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    .line 47
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    aput-byte v2, v0, v2

    .line 48
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 49
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    aput-byte v3, v0, v3

    .line 50
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    aput-byte v4, v0, v5

    .line 51
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    .line 52
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    .line 53
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    .line 54
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    .line 55
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 56
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 57
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    .line 58
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/d;-><init>(Lorg/apache/thrift/transport/d;)V

    .line 100
    new-instance v0, Lorg/apache/thrift/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/thrift/a;-><init>(I)V

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    .line 102
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 108
    iput-object v3, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUr:Lorg/apache/thrift/protocol/a;

    .line 114
    iput-object v3, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUs:Ljava/lang/Boolean;

    .line 350
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUt:[B

    .line 371
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUu:[B

    .line 421
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUv:[B

    .line 564
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUw:[B

    .line 123
    return-void
.end method

.method private Fb()I
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v0, 0x0

    .line 675
    .line 677
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 678
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v3

    .line 679
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 682
    :goto_0
    add-int v5, v4, v0

    aget-byte v5, v3, v5

    .line 683
    and-int/lit8 v6, v5, 0x7f

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    .line 684
    and-int/lit16 v5, v5, 0x80

    if-eq v5, v7, :cond_0

    .line 688
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 697
    :goto_1
    return v2

    .line 685
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 686
    add-int/lit8 v0, v0, 0x1

    .line 687
    goto :goto_0

    .line 694
    :cond_1
    add-int/lit8 v0, v0, 0x7

    .line 691
    :goto_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v2

    .line 692
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 693
    and-int/lit16 v2, v2, 0x80

    if-eq v2, v7, :cond_1

    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private Fc()J
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v0, 0x0

    .line 705
    .line 706
    const-wide/16 v2, 0x0

    .line 707
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v1

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    .line 708
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v4

    .line 709
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v5

    move v1, v0

    .line 712
    :goto_0
    add-int v6, v5, v0

    aget-byte v6, v4, v6

    .line 713
    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v1

    or-long/2addr v2, v8

    .line 714
    and-int/lit16 v6, v6, 0x80

    if-eq v6, v10, :cond_0

    .line 718
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 727
    :goto_1
    return-wide v2

    .line 715
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 716
    add-int/lit8 v0, v0, 0x1

    .line 717
    goto :goto_0

    .line 724
    :cond_1
    add-int/lit8 v0, v0, 0x7

    .line 721
    :cond_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v1

    .line 722
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 723
    and-int/lit16 v1, v1, 0x80

    if-eq v1, v10, :cond_1

    goto :goto_1
.end method

.method private N(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 373
    move v0, v1

    .line 375
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 376
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUu:[B

    add-int/lit8 v3, v0, 0x1

    long-to-int v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 383
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUu:[B

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 384
    return-void

    .line 379
    :cond_0
    iget-object v3, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUu:[B

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 380
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    move v0, v2

    goto :goto_0
.end method

.method private O(J)J
    .locals 5

    .prologue
    .line 391
    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private P(J)J
    .locals 5

    .prologue
    .line 745
    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lorg/apache/thrift/protocol/a;B)V
    .locals 2

    .prologue
    .line 189
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-byte v0, p1, Lorg/apache/thrift/protocol/a;->type:B

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->i(B)B

    move-result p2

    .line 192
    :cond_0
    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    if-le v0, v1, :cond_1

    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 194
    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->eu(I)V

    .line 201
    :goto_0
    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 203
    return-void

    .line 197
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/thrift/protocol/TCompactProtocol;->f(B)V

    .line 198
    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->c(S)V

    goto :goto_0
.end method

.method private es(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 352
    move v0, v1

    .line 354
    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    .line 355
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUt:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 365
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUt:[B

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 366
    return-void

    .line 360
    :cond_0
    iget-object v3, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUt:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 362
    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0
.end method

.method private et(I)I
    .locals 2

    .prologue
    .line 399
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private eu(I)V
    .locals 1

    .prologue
    .line 431
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->f(B)V

    .line 432
    return-void
.end method

.method private ev(I)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    if-nez p1, :cond_0

    new-array v0, v2, [B

    .line 653
    :goto_0
    return-object v0

    .line 651
    :cond_0
    new-array v0, p1, [B

    .line 652
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1, v0, v2, p1}, Lorg/apache/thrift/transport/d;->g([BII)I

    goto :goto_0
.end method

.method private ew(I)I
    .locals 2

    .prologue
    .line 738
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private f(B)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUv:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 424
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUv:[B

    invoke-virtual {v0, v1}, Lorg/apache/thrift/transport/d;->write([B)V

    .line 425
    return-void
.end method

.method private g(B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 770
    and-int/lit8 v1, p1, 0xf

    .line 771
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(B)B
    .locals 3

    .prologue
    .line 779
    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    .line 806
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t know what type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :pswitch_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0

    .line 784
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 786
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 788
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 790
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 792
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 794
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 796
    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    .line 798
    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    .line 800
    :pswitch_9
    const/16 v0, 0xe

    goto :goto_0

    .line 802
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    .line 804
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private h([BII)V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p3}, Lorg/apache/thrift/protocol/TCompactProtocol;->es(I)V

    .line 315
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 316
    return-void
.end method

.method private i(B)B
    .locals 1

    .prologue
    .line 814
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUo:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private k([B)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 754
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public EH()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->ED()S

    move-result v0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 163
    return-void
.end method

.method public EI()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public EJ()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->f(B)V

    .line 210
    return-void
.end method

.method public EK()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public EL()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public EM()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public EN()Lorg/apache/thrift/protocol/g;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    invoke-virtual {v0, v1}, Lorg/apache/thrift/a;->b(S)V

    .line 464
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 465
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUd:Lorg/apache/thrift/protocol/g;

    return-object v0
.end method

.method public EO()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->ED()S

    move-result v0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 475
    return-void
.end method

.method public EP()Lorg/apache/thrift/protocol/a;
    .locals 5

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v2

    .line 484
    if-nez v2, :cond_0

    .line 485
    sget-object v0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUn:Lorg/apache/thrift/protocol/a;

    .line 510
    :goto_0
    return-object v0

    .line 491
    :cond_0
    and-int/lit16 v0, v2, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    .line 492
    if-nez v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->EX()S

    move-result v0

    .line 500
    :goto_1
    new-instance v1, Lorg/apache/thrift/protocol/a;

    const-string v3, ""

    and-int/lit8 v4, v2, 0xf

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lorg/apache/thrift/protocol/TCompactProtocol;->h(B)B

    move-result v4

    invoke-direct {v1, v3, v4, v0}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    .line 503
    invoke-direct {p0, v2}, Lorg/apache/thrift/protocol/TCompactProtocol;->g(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    and-int/lit8 v0, v2, 0xf

    int-to-byte v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUs:Ljava/lang/Boolean;

    .line 509
    :cond_1
    iget-short v0, v1, Lorg/apache/thrift/protocol/a;->aUx:S

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    move-object v0, v1

    .line 510
    goto :goto_0

    .line 497
    :cond_2
    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 505
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public EQ()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public ER()Lorg/apache/thrift/protocol/c;
    .locals 4

    .prologue
    .line 519
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v1

    .line 520
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 521
    :goto_0
    new-instance v2, Lorg/apache/thrift/protocol/c;

    shr-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lorg/apache/thrift/protocol/TCompactProtocol;->h(B)B

    move-result v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->h(B)B

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    return-object v2

    .line 520
    :cond_0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v0

    goto :goto_0
.end method

.method public ES()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public ET()Lorg/apache/thrift/protocol/b;
    .locals 3

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v1

    .line 532
    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 533
    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 534
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v0

    .line 536
    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->h(B)B

    move-result v1

    .line 537
    new-instance v2, Lorg/apache/thrift/protocol/b;

    invoke-direct {v2, v1, v0}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    return-object v2
.end method

.method public EU()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method public EV()Lorg/apache/thrift/protocol/f;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lorg/apache/thrift/protocol/f;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->ET()Lorg/apache/thrift/protocol/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/f;-><init>(Lorg/apache/thrift/protocol/b;)V

    return-object v0
.end method

.method public EW()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public EX()S
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->ew(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public EY()I
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->ew(I)I

    move-result v0

    return v0
.end method

.method public EZ()J
    .locals 2

    .prologue
    .line 598
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fc()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->P(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fa()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 637
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v0

    .line 638
    if-nez v0, :cond_0

    new-array v0, v3, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    new-array v1, v0, [B

    .line 641
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1, v3, v0}, Lorg/apache/thrift/transport/d;->g([BII)I

    .line 642
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public M(J)V
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lorg/apache/thrift/protocol/TCompactProtocol;->O(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->N(J)V

    .line 282
    return-void
.end method

.method protected a(BI)V
    .locals 2

    .prologue
    .line 338
    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    .line 339
    shl-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;->i(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->eu(I)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;->i(B)B

    move-result v0

    or-int/lit16 v0, v0, 0xf0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->eu(I)V

    .line 342
    invoke-direct {p0, p2}, Lorg/apache/thrift/protocol/TCompactProtocol;->es(I)V

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/a;)V
    .locals 2

    .prologue
    .line 172
    iget-byte v0, p1, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    iput-object p1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUr:Lorg/apache/thrift/protocol/a;

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->a(Lorg/apache/thrift/protocol/a;B)V

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/b;)V
    .locals 2

    .prologue
    .line 229
    iget-byte v0, p1, Lorg/apache/thrift/protocol/b;->aUy:B

    iget v1, p1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->a(BI)V

    .line 230
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/c;)V
    .locals 2

    .prologue
    .line 217
    iget v0, p1, Lorg/apache/thrift/protocol/c;->size:I

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->eu(I)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget v0, p1, Lorg/apache/thrift/protocol/c;->size:I

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->es(I)V

    .line 221
    iget-byte v0, p1, Lorg/apache/thrift/protocol/c;->aUz:B

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->i(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p1, Lorg/apache/thrift/protocol/c;->aUA:B

    invoke-direct {p0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->i(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->eu(I)V

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/f;)V
    .locals 2

    .prologue
    .line 236
    iget-byte v0, p1, Lorg/apache/thrift/protocol/f;->aUy:B

    iget v1, p1, Lorg/apache/thrift/protocol/f;->size:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->a(BI)V

    .line 237
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/g;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    iget-short v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    invoke-virtual {v0, v1}, Lorg/apache/thrift/a;->b(S)V

    .line 153
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 154
    return-void
.end method

.method public c(S)V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;->et(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->es(I)V

    .line 268
    return-void
.end method

.method public cm(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 246
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUr:Lorg/apache/thrift/protocol/a;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUr:Lorg/apache/thrift/protocol/a;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->a(Lorg/apache/thrift/protocol/a;B)V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUr:Lorg/apache/thrift/protocol/a;

    .line 254
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 248
    goto :goto_0

    .line 252
    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->f(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public e(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->h([BII)V

    .line 311
    return-void
.end method

.method public eo(I)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;->et(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->es(I)V

    .line 275
    return-void
.end method

.method public readBool()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 556
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUs:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 557
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUs:Ljava/lang/Boolean;

    .line 561
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->readByte()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v0

    if-lez v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v1

    aget-byte v0, v0, v1

    .line 572
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1, v3}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 577
    :goto_0
    return v0

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUw:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/thrift/transport/d;->g([BII)I

    .line 575
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUw:[B

    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method public readDouble()D
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 605
    new-array v0, v3, [B

    .line 606
    iget-object v1, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/thrift/transport/d;->g([BII)I

    .line 607
    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/TCompactProtocol;->k([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 614
    invoke-direct {p0}, Lorg/apache/thrift/protocol/TCompactProtocol;->Fb()I

    move-result v1

    .line 616
    if-nez v1, :cond_0

    .line 617
    const-string v0, ""

    .line 626
    :goto_0
    return-object v0

    .line 621
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 622
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 623
    iget-object v2, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->ex(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/thrift/protocol/TCompactProtocol;->ev(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUp:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->clear()V

    .line 128
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/TCompactProtocol;->aUq:S

    .line 129
    return-void
.end method

.method public writeByte(B)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;->f(B)V

    .line 261
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/thrift/protocol/TCompactProtocol;->h([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
