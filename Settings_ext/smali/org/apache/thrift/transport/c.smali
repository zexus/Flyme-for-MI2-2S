.class public final Lorg/apache/thrift/transport/c;
.super Lorg/apache/thrift/transport/d;
.source "TMemoryInputTransport.java"


# instance fields
.field private aUL:I

.field private aUM:[B

.field private aUN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/thrift/transport/d;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public Fd()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/apache/thrift/transport/c;->aUL:I

    return v0
.end method

.method public Fe()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/thrift/transport/c;->aUN:I

    iget v1, p0, Lorg/apache/thrift/transport/c;->aUL:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ex(I)V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/thrift/transport/c;->aUL:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/thrift/transport/c;->aUL:I

    .line 90
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/thrift/transport/c;->aUM:[B

    return-object v0
.end method

.method public i([BII)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/thrift/transport/c;->aUM:[B

    .line 44
    iput p2, p0, Lorg/apache/thrift/transport/c;->aUL:I

    .line 45
    add-int v0, p2, p3

    iput v0, p0, Lorg/apache/thrift/transport/c;->aUN:I

    .line 46
    return-void
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/thrift/transport/c;->Fe()I

    move-result v0

    .line 62
    if-le p3, v0, :cond_0

    move p3, v0

    .line 63
    :cond_0
    if-lez p3, :cond_1

    .line 64
    iget-object v0, p0, Lorg/apache/thrift/transport/c;->aUM:[B

    iget v1, p0, Lorg/apache/thrift/transport/c;->aUL:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-virtual {p0, p3}, Lorg/apache/thrift/transport/c;->ex(I)V

    .line 67
    :cond_1
    return p3
.end method

.method public reset([B)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/thrift/transport/c;->i([BII)V

    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
