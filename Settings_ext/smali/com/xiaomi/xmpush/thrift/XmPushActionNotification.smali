.class public Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
.super Ljava/lang/Object;
.source "XmPushActionNotification.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDE:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aLq:Lorg/apache/thrift/protocol/a;

.field private static final aPB:Lorg/apache/thrift/protocol/a;

.field private static final aPd:Lorg/apache/thrift/protocol/a;

.field private static final aPe:Lorg/apache/thrift/protocol/a;

.field private static final aPf:Lorg/apache/thrift/protocol/a;

.field private static final aPj:Lorg/apache/thrift/protocol/a;

.field private static final aQc:Lorg/apache/thrift/protocol/a;

.field private static final aQd:Lorg/apache/thrift/protocol/a;

.field private static final aRf:Lorg/apache/thrift/protocol/a;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public appId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public extra:Ljava/util/Map;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public requireAck:Z

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionNotification"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aQc:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aQd:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPd:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPe:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aLq:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "requireAck"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aRf:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "payload"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPf:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "extra"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPB:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPj:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDE:Lorg/apache/thrift/protocol/a;

    .line 145
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 146
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRg:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRh:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRi:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRj:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRk:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRl:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "requireAck"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRm:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "payload"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRn:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/MapMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v10, v5, v6}, Lorg/apache/thrift/meta_data/MapMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;Lorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRo:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;->aRp:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDr:Ljava/util/Map;

    .line 169
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    .line 173
    iput-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 175
    return-void
.end method


# virtual methods
.method public Ce()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DI()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

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
    .line 293
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 317
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

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
    .line 341
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dj()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

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
    .line 471
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dz()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ed()Z
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    .line 884
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 887
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 888
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 981
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 984
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 985
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'requireAck\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 977
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 979
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 893
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_1

    .line 894
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    goto :goto_1

    .line 896
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 900
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 901
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 902
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 904
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 908
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_3

    .line 909
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    goto :goto_1

    .line 911
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 915
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_4

    .line 916
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    goto :goto_1

    .line 918
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 922
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_5

    .line 923
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    goto :goto_1

    .line 925
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 929
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 930
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ck(Z)V

    goto :goto_1

    .line 933
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 937
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_7

    .line 938
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    goto/16 :goto_1

    .line 940
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 944
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    .line 946
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ER()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    .line 947
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 948
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->size:I

    if-ge v0, v2, :cond_8

    .line 952
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v3

    .line 954
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 956
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->ES()V

    goto/16 :goto_1

    .line 959
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 963
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_a

    .line 964
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 966
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 970
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v5, :cond_b

    .line 971
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    goto/16 :goto_1

    .line 973
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 987
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 988
    return-void

    .line 891
    nop

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

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 666
    if-nez p1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v1

    .line 670
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v2

    .line 671
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 672
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 674
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v1

    .line 679
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v2

    .line 680
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 681
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 683
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dg()Z

    move-result v1

    .line 688
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dg()Z

    move-result v2

    .line 689
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 690
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 692
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v1

    .line 697
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v2

    .line 698
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 699
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 701
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v1

    .line 706
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v2

    .line 707
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 708
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 710
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    :cond_b
    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    if-ne v1, v2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v1

    .line 724
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v2

    .line 725
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 726
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 728
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v1

    .line 733
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v2

    .line 734
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 735
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 737
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v1

    .line 742
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v2

    .line 743
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 744
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 746
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v1

    .line 751
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v2

    .line 752
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 753
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 755
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I
    .locals 2

    .prologue
    .line 768
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
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

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 776
    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 781
    if-nez v0, :cond_0

    .line 785
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 791
    if-nez v0, :cond_0

    .line 795
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 796
    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 805
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 806
    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 815
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 816
    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 820
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 825
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 830
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->e(ZZ)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 835
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 840
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 841
    if-nez v0, :cond_0

    .line 845
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 846
    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 850
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 851
    if-nez v0, :cond_0

    .line 855
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 856
    if-nez v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 860
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 861
    if-nez v0, :cond_0

    .line 865
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 866
    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 870
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 871
    if-nez v0, :cond_0

    .line 875
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 991
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->validate()V

    .line 993
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 994
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aQc:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 997
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aQd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1004
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1005
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1009
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1010
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1014
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1015
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPe:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1016
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1020
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1021
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1022
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aLq:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1023
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1027
    :cond_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aRf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1028
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->cm(Z)V

    .line 1029
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1030
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1031
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1032
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPf:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1033
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1037
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 1038
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1039
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPB:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1041
    new-instance v0, Lorg/apache/thrift/protocol/c;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/c;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/c;)V

    .line 1042
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1044
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1045
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EK()V

    .line 1049
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1052
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1053
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1054
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aPj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1055
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1059
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1060
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1061
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->aDE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1062
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1066
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 1067
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 1068
    return-void
.end method

.method public cj(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 1

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->ck(Z)V

    .line 381
    return-object p0
.end method

.method public ck(Z)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 395
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)I

    move-result v0

    return v0
.end method

.method public dX(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public dY(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public dZ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public e(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 438
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 658
    if-nez p1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v1, :cond_0

    .line 661
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionNotification("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x1

    .line 1075
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1078
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->DJ()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1085
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_a

    .line 1088
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1097
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1106
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Ce()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1113
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v0, "type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1116
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_4
    :goto_4
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v0, "requireAck:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->requireAck:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dj()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1127
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v0, "payload:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1130
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Dz()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1137
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    const-string v0, "extra:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 1140
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->Do()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1147
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1150
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->yZ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1157
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1160
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :cond_8
    :goto_8
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1080
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1090
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1099
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1108
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1118
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1132
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->payload:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1142
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1152
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1162
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_0
    return-void
.end method

.method public yZ()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
