.class public Lorg/apache/thrift/protocol/TBinaryProtocol;
.super Lorg/apache/thrift/protocol/d;
.source "TBinaryProtocol.java"


# static fields
.field private static final aUd:Lorg/apache/thrift/protocol/g;


# instance fields
.field protected aUe:Z

.field private aUf:[B

.field private aUg:[B

.field private aUh:[B

.field private aUi:[B

.field private aUj:[B

.field private aUk:[B

.field private aUl:[B

.field private aUm:[B

.field protected readLength_:I

.field protected strictRead_:Z

.field protected strictWrite_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/g;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/g;-><init>()V

    sput-object v0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUd:Lorg/apache/thrift/protocol/g;

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/d;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/d;-><init>(Lorg/apache/thrift/transport/d;)V

    .line 38
    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    .line 39
    iput-boolean v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUe:Z

    .line 144
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUf:[B

    .line 150
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUg:[B

    .line 157
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    .line 166
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    .line 257
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUj:[B

    .line 268
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUk:[B

    .line 287
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUl:[B

    .line 306
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUm:[B

    .line 84
    iput-boolean p2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    .line 85
    iput-boolean p3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    .line 86
    return-void
.end method

.method private g([BII)I
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0, p3}, Lorg/apache/thrift/protocol/TBinaryProtocol;->er(I)V

    .line 378
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/transport/d;->g([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public EH()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public EI()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public EJ()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 116
    return-void
.end method

.method public EK()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public EL()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public EM()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public EN()Lorg/apache/thrift/protocol/g;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUd:Lorg/apache/thrift/protocol/g;

    return-object v0
.end method

.method public EO()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public EP()Lorg/apache/thrift/protocol/a;
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    .line 229
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 230
    :goto_0
    new-instance v2, Lorg/apache/thrift/protocol/a;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    return-object v2

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EX()S

    move-result v0

    goto :goto_0
.end method

.method public EQ()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public ER()Lorg/apache/thrift/protocol/c;
    .locals 4

    .prologue
    .line 236
    new-instance v0, Lorg/apache/thrift/protocol/c;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EY()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    return-object v0
.end method

.method public ES()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public ET()Lorg/apache/thrift/protocol/b;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lorg/apache/thrift/protocol/b;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/b;-><init>(BI)V

    return-object v0
.end method

.method public EU()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public EV()Lorg/apache/thrift/protocol/f;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lorg/apache/thrift/protocol/f;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    return-object v0
.end method

.method public EW()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public EX()S
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 270
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUk:[B

    .line 273
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 274
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v1

    .line 275
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v0

    .line 276
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v3}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 281
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    .line 278
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUk:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/thrift/protocol/TBinaryProtocol;->g([BII)I

    goto :goto_0
.end method

.method public EY()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 289
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUl:[B

    .line 292
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 293
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v1

    .line 294
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v0

    .line 295
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v3}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 299
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    .line 297
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUl:[B

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/thrift/protocol/TBinaryProtocol;->g([BII)I

    goto :goto_0
.end method

.method public EZ()J
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 308
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUm:[B

    .line 311
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 312
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v1

    .line 313
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v0

    .line 314
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v7}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 319
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    .line 316
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUm:[B

    invoke-direct {p0, v2, v0, v7}, Lorg/apache/thrift/protocol/TBinaryProtocol;->g([BII)I

    goto :goto_0
.end method

.method public Fa()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EY()I

    move-result v1

    .line 363
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->er(I)V

    .line 365
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 373
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-array v0, v1, [B

    .line 372
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/thrift/transport/d;->g([BII)I

    .line 373
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public M(J)V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 168
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 169
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUi:[B

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 177
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/a;)V
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p1, Lorg/apache/thrift/protocol/a;->type:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 109
    iget-short v0, p1, Lorg/apache/thrift/protocol/a;->aUx:S

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->c(S)V

    .line 110
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/b;)V
    .locals 1

    .prologue
    .line 127
    iget-byte v0, p1, Lorg/apache/thrift/protocol/b;->aUy:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 128
    iget v0, p1, Lorg/apache/thrift/protocol/b;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->eo(I)V

    .line 129
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/c;)V
    .locals 1

    .prologue
    .line 119
    iget-byte v0, p1, Lorg/apache/thrift/protocol/c;->aUz:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 120
    iget-byte v0, p1, Lorg/apache/thrift/protocol/c;->aUA:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 121
    iget v0, p1, Lorg/apache/thrift/protocol/c;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->eo(I)V

    .line 122
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/f;)V
    .locals 1

    .prologue
    .line 134
    iget-byte v0, p1, Lorg/apache/thrift/protocol/f;->aUy:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 135
    iget v0, p1, Lorg/apache/thrift/protocol/f;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->eo(I)V

    .line 136
    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/g;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public c(S)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUg:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 153
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUg:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUg:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 155
    return-void
.end method

.method public cm(Z)V
    .locals 1

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 195
    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->eo(I)V

    .line 196
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 197
    return-void
.end method

.method public eo(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 160
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUh:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 164
    return-void
.end method

.method public ep(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->er(I)V

    .line 353
    new-array v0, p1, [B

    .line 354
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lorg/apache/thrift/transport/d;->g([BII)I

    .line 355
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eq(I)V
    .locals 1

    .prologue
    .line 382
    iput p1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUe:Z

    .line 384
    return-void
.end method

.method protected er(I)V
    .locals 3

    .prologue
    .line 387
    if-gez p1, :cond_0

    .line 388
    new-instance v0, Lorg/apache/thrift/TException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUe:Z

    if-eqz v0, :cond_1

    .line 391
    iget v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    .line 392
    iget v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    if-gez v0, :cond_1

    .line 393
    new-instance v0, Lorg/apache/thrift/TException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    return-void
.end method

.method public readBool()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 254
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 259
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 260
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v1

    aget-byte v0, v0, v1

    .line 261
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v1, v2}, Lorg/apache/thrift/transport/d;->ex(I)V

    .line 265
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUj:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/thrift/protocol/TBinaryProtocol;->g([BII)I

    .line 265
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUj:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EZ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->EY()I

    move-result v1

    .line 337
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/d;->Fe()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 339
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/d;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/d;->Fd()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 340
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    invoke-virtual {v2, v1}, Lorg/apache/thrift/transport/d;->ex(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->ep(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUf:[B

    aput-byte p1, v0, v3

    .line 147
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUf:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/d;->write([BII)V

    .line 148
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 186
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->eo(I)V

    .line 187
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->aUB:Lorg/apache/thrift/transport/d;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/thrift/transport/d;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
