.class public Lorg/apache/thrift/protocol/TCompactProtocol$Factory;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lorg/apache/thrift/protocol/TProtocolFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/transport/d;)Lorg/apache/thrift/protocol/d;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/apache/thrift/protocol/TCompactProtocol;

    invoke-direct {v0, p1}, Lorg/apache/thrift/protocol/TCompactProtocol;-><init>(Lorg/apache/thrift/transport/d;)V

    return-object v0
.end method
