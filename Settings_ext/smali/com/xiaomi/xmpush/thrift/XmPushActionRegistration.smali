.class public Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
.super Ljava/lang/Object;
.source "XmPushActionRegistration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDL:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field public static final aDr:Ljava/util/Map;

.field private static final aPd:Lorg/apache/thrift/protocol/a;

.field private static final aPe:Lorg/apache/thrift/protocol/a;

.field private static final aPj:Lorg/apache/thrift/protocol/a;

.field private static final aQc:Lorg/apache/thrift/protocol/a;

.field private static final aQd:Lorg/apache/thrift/protocol/a;

.field private static final aQe:Lorg/apache/thrift/protocol/a;

.field private static final aRr:Lorg/apache/thrift/protocol/a;

.field private static final aRs:Lorg/apache/thrift/protocol/a;

.field private static final aRt:Lorg/apache/thrift/protocol/a;


# instance fields
.field public aliasName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public debug:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public target:Lcom/xiaomi/xmpush/thrift/Target;

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDl:Lorg/apache/thrift/protocol/g;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQc:Lorg/apache/thrift/protocol/a;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "target"

    invoke-direct {v0, v1, v9, v7}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQd:Lorg/apache/thrift/protocol/a;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPd:Lorg/apache/thrift/protocol/a;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPe:Lorg/apache/thrift/protocol/a;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "appVersion"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDL:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPj:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "token"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRr:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "deviceId"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRs:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "aliasName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQe:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "sdkVersion"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRt:Lorg/apache/thrift/protocol/a;

    .line 143
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 144
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRu:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRv:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "target"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRw:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRx:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRy:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "appVersion"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRz:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRA:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "token"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRB:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRC:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;->aRD:Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "sdkVersion"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDr:Ljava/util/Map;

    .line 165
    const-class v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method public DI()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

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
    .line 275
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

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
    .line 443
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

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
    .line 299
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

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
    .line 323
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

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
    .line 371
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ee()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ef()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Eg()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Eh()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 856
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 859
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 860
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 940
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 943
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 944
    return-void

    .line 863
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 936
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 938
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 865
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_1

    .line 866
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    goto :goto_1

    .line 868
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 872
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 873
    new-instance v0, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    .line 874
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 876
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 880
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_3

    .line 881
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    goto :goto_1

    .line 883
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 887
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_4

    .line 888
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    goto :goto_1

    .line 890
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 894
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_5

    .line 895
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    goto :goto_1

    .line 897
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 901
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_6

    .line 902
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 904
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 908
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_7

    .line 909
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    goto :goto_1

    .line 911
    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 915
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_8

    .line 916
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    goto/16 :goto_1

    .line 918
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 922
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_9

    .line 923
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    goto/16 :goto_1

    .line 925
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 929
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v3, :cond_a

    .line 930
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 932
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 863
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

.method public a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 638
    if-nez p1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v1

    .line 642
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v2

    .line 643
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 644
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 646
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v1

    .line 651
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v2

    .line 652
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 653
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 655
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/Target;->a(Lcom/xiaomi/xmpush/thrift/Target;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dg()Z

    move-result v1

    .line 660
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dg()Z

    move-result v2

    .line 661
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 662
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 664
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dh()Z

    move-result v1

    .line 669
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dh()Z

    move-result v2

    .line 670
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 671
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 673
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v1

    .line 678
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v2

    .line 679
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 680
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 682
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v1

    .line 687
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v2

    .line 688
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 689
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 691
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ef()Z

    move-result v1

    .line 696
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ef()Z

    move-result v2

    .line 697
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 698
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 700
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v1

    .line 705
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v2

    .line 706
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 707
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 709
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v1

    .line 714
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v2

    .line 715
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 716
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 718
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v1

    .line 723
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v2

    .line 724
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 725
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 727
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I
    .locals 2

    .prologue
    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
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

    .line 847
    :cond_0
    :goto_0
    return v0

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 748
    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 753
    if-nez v0, :cond_0

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 758
    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 763
    if-nez v0, :cond_0

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 768
    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 773
    if-nez v0, :cond_0

    .line 777
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 778
    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Dh()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 783
    if-nez v0, :cond_0

    .line 787
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 788
    if-nez v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 793
    if-nez v0, :cond_0

    .line 797
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 798
    if-nez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 802
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 803
    if-nez v0, :cond_0

    .line 807
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ef()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ef()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 808
    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ef()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 813
    if-nez v0, :cond_0

    .line 817
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 818
    if-nez v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 823
    if-nez v0, :cond_0

    .line 827
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 828
    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 832
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 833
    if-nez v0, :cond_0

    .line 837
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 838
    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 842
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 843
    if-nez v0, :cond_0

    .line 847
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->validate()V

    .line 949
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 950
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQc:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 953
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 960
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Target;->b(Lorg/apache/thrift/protocol/d;)V

    .line 961
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 965
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPd:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 966
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 970
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPe:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 971
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 975
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aDL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 977
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 981
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 982
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 983
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aPj:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 984
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 988
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 989
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRr:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 990
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 993
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 994
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 995
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRs:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 996
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1000
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1001
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1002
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aQe:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1003
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1007
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1008
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1009
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aRt:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1010
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1014
    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 1015
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 1016
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->b(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)I

    move-result v0

    return v0
.end method

.method public ea(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public eb(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public ec(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public ed(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public ee(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public ef(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 630
    if-nez p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 632
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    if-eqz v1, :cond_0

    .line 633
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionRegistration("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x1

    .line 1023
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1026
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DJ()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1033
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    if-nez v0, :cond_9

    .line 1036
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1045
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1053
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Ee()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v0, "appVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1062
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Do()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1072
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_4
    :goto_5
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v0, "token:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1081
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1087
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1090
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->DK()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1097
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1100
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->Eh()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1107
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v0, "sdkVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1110
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_7
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1028
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->debug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1038
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->target:Lcom/xiaomi/xmpush/thrift/Target;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1047
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1055
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1064
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1074
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1083
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1092
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1102
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->aliasName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1112
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move v1, v0

    goto/16 :goto_1
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1126
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->token:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1129
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_2
    return-void
.end method
