.class public Lorg/apache/thrift/transport/b;
.super Lorg/apache/thrift/transport/d;
.source "TMemoryBuffer.java"


# instance fields
.field private aUK:Lorg/apache/thrift/e;

.field private aUL:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/thrift/transport/d;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/thrift/e;

    invoke-direct {v0, p1}, Lorg/apache/thrift/e;-><init>(I)V

    iput-object v0, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    .line 36
    return-void
.end method


# virtual methods
.method public length()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    invoke-virtual {v0}, Lorg/apache/thrift/e;->size()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    invoke-virtual {v0}, Lorg/apache/thrift/e;->EF()[B

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    invoke-virtual {v1}, Lorg/apache/thrift/e;->EG()I

    move-result v1

    iget v2, p0, Lorg/apache/thrift/transport/b;->aUL:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_0

    iget-object v1, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    invoke-virtual {v1}, Lorg/apache/thrift/e;->EG()I

    move-result v1

    iget v2, p0, Lorg/apache/thrift/transport/b;->aUL:I

    sub-int p3, v1, v2

    .line 57
    :cond_0
    if-lez p3, :cond_1

    .line 58
    iget v1, p0, Lorg/apache/thrift/transport/b;->aUL:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v0, p0, Lorg/apache/thrift/transport/b;->aUL:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/thrift/transport/b;->aUL:I

    .line 61
    :cond_1
    return p3
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/thrift/transport/b;->aUK:Lorg/apache/thrift/e;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/e;->write([BII)V

    .line 67
    return-void
.end method
