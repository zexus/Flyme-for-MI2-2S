.class public Lcom/xiaomi/push/service/G;
.super Ljava/lang/Object;
.source "RC4Cryption.java"


# static fields
.field private static aJA:I


# instance fields
.field private aCv:[B

.field private aJB:I

.field private aJC:I

.field private aJD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x8

    sput v0, Lcom/xiaomi/push/service/G;->aJA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJD:I

    .line 18
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJC:I

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJB:I

    .line 20
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-static {p0}, Lcom/xiaomi/a/a/f/a;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 198
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v4, v0, [B

    move v0, v1

    .line 199
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 200
    aget-byte v5, v2, v0

    aput-byte v5, v4, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    array-length v0, v2

    const/16 v5, 0x5f

    aput-byte v5, v4, v0

    .line 203
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 204
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aget-byte v5, v3, v1

    aput-byte v5, v4, v0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    return-object v4
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 186
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/G;->d([B[B)[B

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/xiaomi/a/a/f/a;->e([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I[BZ)V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v0, 0x0

    .line 31
    array-length v2, p2

    move v1, v0

    .line 33
    :goto_0
    if-ge v1, v5, :cond_0

    .line 34
    iget-object v3, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput v0, p0, Lcom/xiaomi/push/service/G;->aJC:I

    .line 36
    iput v0, p0, Lcom/xiaomi/push/service/G;->aJB:I

    :goto_1
    iget v1, p0, Lcom/xiaomi/push/service/G;->aJB:I

    if-ge v1, p1, :cond_1

    .line 37
    iget v1, p0, Lcom/xiaomi/push/service/G;->aJC:I

    iget-object v3, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v4, p0, Lcom/xiaomi/push/service/G;->aJB:I

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/xiaomi/push/service/G;->aJB:I

    rem-int/2addr v3, v2

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v3

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/G;->aJC:I

    .line 38
    iget-object v1, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v3, p0, Lcom/xiaomi/push/service/G;->aJB:I

    iget v4, p0, Lcom/xiaomi/push/service/G;->aJC:I

    invoke-static {v1, v3, v4}, Lcom/xiaomi/push/service/G;->f([BII)V

    .line 36
    iget v1, p0, Lcom/xiaomi/push/service/G;->aJB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/G;->aJB:I

    goto :goto_1

    .line 40
    :cond_1
    if-eq p1, v5, :cond_2

    .line 41
    iget v1, p0, Lcom/xiaomi/push/service/G;->aJC:I

    iget-object v3, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    aget-byte v3, v3, p1

    invoke-static {v3}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v3

    add-int/2addr v1, v3

    rem-int v2, p1, v2

    aget-byte v2, p2, v2

    invoke-static {v2}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/G;->aJD:I

    .line 43
    :cond_2
    if-eqz p3, :cond_5

    .line 44
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 45
    :goto_2
    if-gt v0, p1, :cond_3

    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   j_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/push/service/G;->aJC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   j_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/push/service/G;->aJD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   S_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[j_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v3, p0, Lcom/xiaomi/push/service/G;->aJC:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   S_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[j_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v3, p0, Lcom/xiaomi/push/service/G;->aJD:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    if-eqz v0, :cond_4

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   S[1]!=0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 53
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 55
    :cond_5
    return-void
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 191
    invoke-static {p1}, Lcom/xiaomi/a/a/f/a;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/G;->d([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(B)I
    .locals 0

    .prologue
    .line 108
    if-ltz p0, :cond_0

    .line 111
    :goto_0
    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method public static d([B[B)[B
    .locals 5

    .prologue
    .line 174
    array-length v0, p1

    new-array v1, v0, [B

    .line 175
    new-instance v2, Lcom/xiaomi/push/service/G;

    invoke-direct {v2}, Lcom/xiaomi/push/service/G;-><init>()V

    .line 176
    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/G;->h([B)V

    .line 177
    invoke-direct {v2}, Lcom/xiaomi/push/service/G;->init()V

    .line 178
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 179
    aget-byte v3, p1, v0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/G;->BN()B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-object v1
.end method

.method private static f([BII)V
    .locals 2

    .prologue
    .line 101
    aget-byte v0, p0, p1

    .line 102
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 103
    aput-byte v0, p0, p2

    .line 104
    return-void
.end method

.method private h([B)V
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/push/service/G;->a(I[BZ)V

    .line 59
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJC:I

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJB:I

    .line 63
    return-void
.end method


# virtual methods
.method BN()B
    .locals 4

    .prologue
    .line 66
    iget v0, p0, Lcom/xiaomi/push/service/G;->aJB:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJB:I

    .line 67
    iget v0, p0, Lcom/xiaomi/push/service/G;->aJC:I

    iget-object v1, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v2, p0, Lcom/xiaomi/push/service/G;->aJB:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/G;->aJC:I

    .line 68
    iget-object v0, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v1, p0, Lcom/xiaomi/push/service/G;->aJB:I

    iget v2, p0, Lcom/xiaomi/push/service/G;->aJC:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/G;->f([BII)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget-object v1, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v2, p0, Lcom/xiaomi/push/service/G;->aJB:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/G;->aCv:[B

    iget v3, p0, Lcom/xiaomi/push/service/G;->aJC:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/G;->c(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    .line 70
    return v0
.end method
