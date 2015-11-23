.class public Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
.super Ljava/lang/Object;
.source "XmPushActionContainer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aPj:Lorg/apache/thrift/protocol/a;

.field private static final aQQ:Lorg/apache/thrift/protocol/a;

.field private static final aQR:Lorg/apache/thrift/protocol/a;

.field private static final aQS:Lorg/apache/thrift/protocol/a;

.field private static final aQT:Lorg/apache/thrift/protocol/a;

.field private static final aQU:Lorg/apache/thrift/protocol/a;

.field private static final aQV:Lorg/apache/thrift/protocol/a;

.field private static final aQd:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public action:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public appid:Ljava/lang/String;

.field public encryptAction:Z

.field public isRequest:Z

.field public metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

.field public packageName:Ljava/lang/String;

.field public pushAction:Ljava/nio/ByteBuffer;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v3, 0x8

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionContainer"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "action"

    invoke-direct {v0, v1, v3, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQQ:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "encryptAction"

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQR:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "isRequest"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQS:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "pushAction"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQT:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQU:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aPj:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQd:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "metaInfo"

    invoke-direct {v0, v1, v10, v3}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQV:Lorg/apache/thrift/protocol/a;

    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 145
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQW:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "action"

    new-instance v4, Lorg/apache/thrift/meta_data/EnumMetaData;

    const/16 v5, 0x10

    const-class v6, Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-direct {v4, v5, v6}, Lorg/apache/thrift/meta_data/EnumMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQX:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "encryptAction"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQY:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "isRequest"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aQZ:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "pushAction"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRa:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRb:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v9}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRc:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v10, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;->aRd:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "metaInfo"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v4, v10, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aDr:Ljava/util/Map;

    .line 162
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 163
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    .line 166
    iput-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 168
    iput-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 170
    return-void
.end method


# virtual methods
.method public DJ()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DS()Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method

.method public DT()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DU()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    return v0
.end method

.method public DV()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public DW()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public DX()[B
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/thrift/b;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 316
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public DY()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public Do()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ea()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Eb()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    return-object v0
.end method

.method public Ec()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    .line 330
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 760
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 763
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 764
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 836
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DV()Z

    move-result v0

    if-nez v0, :cond_9

    .line 837
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'encryptAction\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 829
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 831
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 769
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 770
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EY()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->en(I)Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_1

    .line 772
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 776
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_2

    .line 777
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 778
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cg(Z)V

    goto :goto_1

    .line 780
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 784
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 785
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 786
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ci(Z)V

    goto :goto_1

    .line 788
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 792
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 793
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->Fa()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 795
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 799
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_5

    .line 800
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    goto :goto_1

    .line 802
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 806
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_6

    .line 807
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 809
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 813
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_7

    .line 814
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 815
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 817
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 821
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v6, :cond_8

    .line 822
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 823
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 825
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 839
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DW()Z

    move-result v0

    if-nez v0, :cond_a

    .line 840
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'isRequest\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->validate()V

    .line 843
    return-void

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 250
    return-object p0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->validate()V

    .line 848
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 849
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-eqz v0, :cond_0

    .line 850
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQQ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 851
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->eo(I)V

    .line 852
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 854
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQR:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 855
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cm(Z)V

    .line 856
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 857
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQS:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 858
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cm(Z)V

    .line 859
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 860
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 861
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQT:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 862
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->e(Ljava/nio/ByteBuffer;)V

    .line 863
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQU:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 868
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aPj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 875
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_4

    .line 880
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 881
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 882
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v0, :cond_5

    .line 885
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 886
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->aQV:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 887
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->b(Lorg/apache/thrift/protocol/d;)V

    .line 888
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 891
    :cond_5
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 892
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 893
    return-void
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 426
    return-object p0
.end method

.method public c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 402
    return-object p0
.end method

.method public cf(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cg(Z)V

    .line 275
    return-object p0
.end method

.method public cg(Z)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 289
    return-void
.end method

.method public ch(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 1

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ci(Z)V

    .line 298
    return-object p0
.end method

.method public ci(Z)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 312
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->j(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)I

    move-result v0

    return v0
.end method

.method public dV(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public dW(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 572
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    if-eqz v1, :cond_0

    .line 575
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->i(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public i(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 580
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DT()Z

    move-result v1

    .line 584
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DT()Z

    move-result v2

    .line 585
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 586
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 588
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    if-ne v1, v2, :cond_0

    .line 606
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    if-ne v1, v2, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DY()Z

    move-result v1

    .line 611
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DY()Z

    move-result v2

    .line 612
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 613
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 615
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v1

    .line 620
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v2

    .line 621
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 622
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 624
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v1

    .line 629
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v2

    .line 630
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 631
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DJ()Z

    move-result v1

    .line 638
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DJ()Z

    move-result v2

    .line 639
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 640
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 642
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v1

    .line 647
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v2

    .line 648
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 649
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 651
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->a(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public j(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)I
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DT()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DT()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 672
    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 677
    if-nez v0, :cond_0

    .line 681
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DV()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DV()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 682
    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->e(ZZ)I

    move-result v0

    .line 687
    if-nez v0, :cond_0

    .line 691
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DW()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DW()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 692
    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 696
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->e(ZZ)I

    move-result v0

    .line 697
    if-nez v0, :cond_0

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DY()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 702
    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DY()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 707
    if-nez v0, :cond_0

    .line 711
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 712
    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 717
    if-nez v0, :cond_0

    .line 721
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 722
    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 727
    if-nez v0, :cond_0

    .line 731
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 732
    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DJ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 736
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 737
    if-nez v0, :cond_0

    .line 741
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 742
    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 747
    if-nez v0, :cond_0

    .line 751
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmPushActionContainer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-nez v1, :cond_3

    .line 902
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, "encryptAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->encryptAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 911
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, "isRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->isRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 915
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string v1, "pushAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    .line 918
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string v1, "appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 927
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Do()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 937
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :cond_1
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v1, :cond_7

    .line 946
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->Ec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    const-string v1, "metaInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-nez v1, :cond_8

    .line 955
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_2
    :goto_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 904
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 920
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lorg/apache/thrift/b;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 929
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 939
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 948
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 957
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'action\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->pushAction:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 973
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'pushAction\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_2

    .line 976
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_2
    return-void
.end method
