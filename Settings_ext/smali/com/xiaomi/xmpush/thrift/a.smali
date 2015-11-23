.class public Lcom/xiaomi/xmpush/thrift/a;
.super Ljava/lang/Object;
.source "XmPushThriftSerializeUtils.java"


# direct methods
.method public static a(Lorg/apache/thrift/TBase;[B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Lorg/apache/thrift/TException;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/thrift/f;

    new-instance v1, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lorg/apache/thrift/f;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 50
    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/f;->b(Lorg/apache/thrift/TBase;[B)V

    .line 51
    return-void
.end method

.method public static a(Lorg/apache/thrift/TBase;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return-object v0

    .line 29
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/g;

    new-instance v2, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/thrift/g;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 30
    invoke-virtual {v1, p0}, Lorg/apache/thrift/g;->b(Lorg/apache/thrift/TBase;)[B
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/a/a/c/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
