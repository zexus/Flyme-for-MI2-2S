.class public Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
.super Ljava/lang/Object;
.source "XmPushActionAckMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDE:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aPd:Lorg/apache/thrift/protocol/a;

.field private static final aPe:Lorg/apache/thrift/protocol/a;

.field private static final aPj:Lorg/apache/thrift/protocol/a;

.field private static final aPt:Lorg/apache/thrift/protocol/a;

.field private static final aPu:Lorg/apache/thrift/protocol/a;

.field private static final aQc:Lorg/apache/thrift/protocol/a;

.field private static final aQd:Lorg/apache/thrift/protocol/a;

.field private static final aQe:Lorg/apache/thrift/protocol/a;

.field private static final aQf:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public messageTs:J

.field public packageName:Ljava/lang/String;

.field public request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionAckMessage"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQc:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQd:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPd:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPe:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "messageTs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPt:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "topic"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPu:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQe:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "request"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQf:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPj:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v6, v10}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDE:Lorg/apache/thrift/protocol/a;

    .line 145
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 146
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQg:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQh:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQi:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQj:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQk:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "messageTs"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v10}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQl:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQm:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQn:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "request"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQo:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;->aQp:Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDr:Ljava/util/Map;

    .line 167
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    .line 171
    return-void
.end method


# virtual methods
.method public DI()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DJ()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DK()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DL()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dg()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dh()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Do()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dr()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public Ds()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L(J)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 1

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bX(Z)V

    .line 343
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 859
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 862
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 863
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 945
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 948
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dr()Z

    move-result v0

    if-nez v0, :cond_b

    .line 949
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 941
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 943
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 868
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 869
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    goto :goto_1

    .line 871
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 875
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 876
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 877
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 879
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 883
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 884
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    goto :goto_1

    .line 886
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 890
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 891
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    goto :goto_1

    .line 893
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 897
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 898
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    .line 899
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->bX(Z)V

    goto :goto_1

    .line 901
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 905
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_6

    .line 906
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    goto :goto_1

    .line 908
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 912
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 913
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    goto :goto_1

    .line 915
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 919
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_8

    .line 920
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    .line 921
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lorg/apache/thrift/protocol/d;)V

    goto/16 :goto_1

    .line 923
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 927
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_9

    .line 928
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 930
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 934
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_a

    .line 935
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 937
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 951
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 952
    return-void

    .line 866
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 641
    if-nez p1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v1

    .line 645
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v2

    .line 646
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 647
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 649
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v1

    .line 654
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v2

    .line 655
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 656
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 658
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dg()Z

    move-result v1

    .line 663
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dg()Z

    move-result v2

    .line 664
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 665
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 667
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dh()Z

    move-result v1

    .line 672
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dh()Z

    move-result v2

    .line 673
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 674
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 676
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    :cond_9
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v1

    .line 690
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v2

    .line 691
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 692
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 694
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v1

    .line 699
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v2

    .line 700
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 701
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 703
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v1

    .line 708
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v2

    .line 709
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 710
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 712
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v1

    .line 717
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v2

    .line 718
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 719
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 721
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v1

    .line 726
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v2

    .line 727
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 728
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 730
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I
    .locals 4

    .prologue
    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
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

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 751
    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 756
    if-nez v0, :cond_0

    .line 760
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 761
    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 766
    if-nez v0, :cond_0

    .line 770
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 771
    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 776
    if-nez v0, :cond_0

    .line 780
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 781
    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 790
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 791
    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Dr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/b;->g(JJ)I

    move-result v0

    .line 796
    if-nez v0, :cond_0

    .line 800
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 805
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 806
    if-nez v0, :cond_0

    .line 810
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 815
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 816
    if-nez v0, :cond_0

    .line 820
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 825
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 830
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 835
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 840
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 841
    if-nez v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 845
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 846
    if-nez v0, :cond_0

    .line 850
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->validate()V

    .line 957
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 958
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQc:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 961
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 968
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 969
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 973
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 974
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 978
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPe:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 979
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 982
    :cond_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 983
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/d;->M(J)V

    .line 984
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 985
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 986
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPu:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 988
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 992
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 993
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 994
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQe:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 995
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 999
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-eqz v0, :cond_6

    .line 1000
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1001
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aQf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1002
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1003
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1006
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1007
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1008
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aPj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1009
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1013
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1014
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1015
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aDE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1016
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1020
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 1021
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 1022
    return-void
.end method

.method public bX(Z)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 357
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)I

    move-result v0

    return v0
.end method

.method public dL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public dM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public dN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public dO(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 635
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    if-eqz v1, :cond_0

    .line 636
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionAckMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1027
    const/4 v0, 0x1

    .line 1029
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1030
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1032
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DJ()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1039
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_9

    .line 1042
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1051
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1059
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v0, "messageTs:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->messageTs:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Ds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1072
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DK()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1082
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->DL()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1089
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v0, "request:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    if-nez v0, :cond_e

    .line 1092
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->Do()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1099
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1102
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->yZ()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1109
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1112
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_7
    :goto_8
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1044
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1053
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1061
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1074
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->topic:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1084
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1094
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->request:Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1104
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1114
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1128
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_1
    return-void
.end method

.method public yZ()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
