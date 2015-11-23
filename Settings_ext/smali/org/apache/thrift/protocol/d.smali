.class public abstract Lorg/apache/thrift/protocol/d;
.super Ljava/lang/Object;
.source "TProtocol.java"


# instance fields
.field protected aUB:Lorg/apache/thrift/transport/d;


# direct methods
.method protected constructor <init>(Lorg/apache/thrift/transport/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/thrift/protocol/d;->aUB:Lorg/apache/thrift/transport/d;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract EH()V
.end method

.method public abstract EI()V
.end method

.method public abstract EJ()V
.end method

.method public abstract EK()V
.end method

.method public abstract EL()V
.end method

.method public abstract EM()V
.end method

.method public abstract EN()Lorg/apache/thrift/protocol/g;
.end method

.method public abstract EO()V
.end method

.method public abstract EP()Lorg/apache/thrift/protocol/a;
.end method

.method public abstract EQ()V
.end method

.method public abstract ER()Lorg/apache/thrift/protocol/c;
.end method

.method public abstract ES()V
.end method

.method public abstract ET()Lorg/apache/thrift/protocol/b;
.end method

.method public abstract EU()V
.end method

.method public abstract EV()Lorg/apache/thrift/protocol/f;
.end method

.method public abstract EW()V
.end method

.method public abstract EX()S
.end method

.method public abstract EY()I
.end method

.method public abstract EZ()J
.end method

.method public abstract Fa()Ljava/nio/ByteBuffer;
.end method

.method public abstract M(J)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/a;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/b;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/c;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/f;)V
.end method

.method public abstract a(Lorg/apache/thrift/protocol/g;)V
.end method

.method public abstract cm(Z)V
.end method

.method public abstract e(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract eo(I)V
.end method

.method public abstract readBool()Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readDouble()D
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public abstract writeByte(B)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method
