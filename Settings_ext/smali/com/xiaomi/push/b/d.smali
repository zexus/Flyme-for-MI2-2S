.class public final Lcom/xiaomi/push/b/d;
.super Lcom/google/protobuf/micro/b;
.source "ChannelMessage.java"


# instance fields
.field private aIg:I

.field private aIh:Z

.field private aIi:Z

.field private aIj:Z

.field private aIk:I

.field private aIl:Z

.field private aIm:I

.field private aIn:Z

.field private aIo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/b;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIi:Z

    .line 32
    iput v0, p0, Lcom/xiaomi/push/b/d;->aIk:I

    .line 49
    iput v0, p0, Lcom/xiaomi/push/b/d;->aIm:I

    .line 66
    iput v0, p0, Lcom/xiaomi/push/b/d;->aIo:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/d;->aIg:I

    .line 10
    return-void
.end method

.method public static g([B)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/xiaomi/push/b/d;

    invoke-direct {v0}, Lcom/xiaomi/push/b/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/d;->c([B)Lcom/google/protobuf/micro/b;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/d;

    check-cast v0, Lcom/xiaomi/push/b/d;

    return-object v0
.end method


# virtual methods
.method public Bs()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIi:Z

    return v0
.end method

.method public Bt()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIh:Z

    return v0
.end method

.method public Bu()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/push/b/d;->aIk:I

    return v0
.end method

.method public Bv()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIj:Z

    return v0
.end method

.method public Bw()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/push/b/d;->aIm:I

    return v0
.end method

.method public Bx()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIl:Z

    return v0
.end method

.method public By()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/xiaomi/push/b/d;->aIo:I

    return v0
.end method

.method public Bz()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIn:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/a;)Lcom/google/protobuf/micro/b;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/d;->d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bs()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bu()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bw()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bz()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->By()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 108
    :cond_3
    return-void
.end method

.method public bL(Z)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIh:Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaomi/push/b/d;->aIi:Z

    .line 21
    return-object p0
.end method

.method public d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->readTag()I

    move-result v0

    .line 149
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/d;->a(Lcom/google/protobuf/micro/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->readBool()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->bL(Z)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->eb(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->ec(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/d;->ed(I)Lcom/xiaomi/push/b/d;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public eb(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIj:Z

    .line 37
    iput p1, p0, Lcom/xiaomi/push/b/d;->aIk:I

    .line 38
    return-object p0
.end method

.method public ec(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIl:Z

    .line 54
    iput p1, p0, Lcom/xiaomi/push/b/d;->aIm:I

    .line 55
    return-object p0
.end method

.method public ed(I)Lcom/xiaomi/push/b/d;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/d;->aIn:Z

    .line 71
    iput p1, p0, Lcom/xiaomi/push/b/d;->aIo:I

    .line 72
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bs()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bu()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bw()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->Bz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/d;->By()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iput v0, p0, Lcom/xiaomi/push/b/d;->aIg:I

    .line 140
    return v0
.end method
