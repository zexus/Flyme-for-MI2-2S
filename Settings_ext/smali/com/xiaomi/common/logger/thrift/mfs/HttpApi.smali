.class public Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
.super Ljava/lang/Object;
.source "HttpApi.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# static fields
.field private static final aDE:Lorg/apache/thrift/protocol/a;

.field private static final aDF:Lorg/apache/thrift/protocol/a;

.field private static final aDG:Lorg/apache/thrift/protocol/a;

.field private static final aDH:Lorg/apache/thrift/protocol/a;

.field private static final aDI:Lorg/apache/thrift/protocol/a;

.field private static final aDJ:Lorg/apache/thrift/protocol/a;

.field private static final aDK:Lorg/apache/thrift/protocol/a;

.field private static final aDL:Lorg/apache/thrift/protocol/a;

.field private static final aDl:Lorg/apache/thrift/protocol/g;

.field private static final aDm:Lorg/apache/thrift/protocol/a;

.field private static final aDo:Lorg/apache/thrift/protocol/a;

.field public static final aDr:Ljava/util/Map;


# instance fields
.field private app_name:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private client_ip:Ljava/lang/String;

.field private host_info:Ljava/util/Set;

.field private location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

.field private network:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private version_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0xc

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/g;

    const-string v1, "HttpApi"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDl:Lorg/apache/thrift/protocol/g;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "category"

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDE:Lorg/apache/thrift/protocol/a;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "uuid"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDm:Lorg/apache/thrift/protocol/a;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDF:Lorg/apache/thrift/protocol/a;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "network"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDG:Lorg/apache/thrift/protocol/a;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "client_ip"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDo:Lorg/apache/thrift/protocol/a;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "location"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDH:Lorg/apache/thrift/protocol/a;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "host_info"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDI:Lorg/apache/thrift/protocol/a;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "version_type"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDJ:Lorg/apache/thrift/protocol/a;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "app_name"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDK:Lorg/apache/thrift/protocol/a;

    .line 45
    new-instance v0, Lorg/apache/thrift/protocol/a;

    const-string v1, "app_version"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/a;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDL:Lorg/apache/thrift/protocol/a;

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDM:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDN:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "uuid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDO:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "version"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDP:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "network"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDQ:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "client_ip"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDR:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "location"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDS:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "host_info"

    new-instance v4, Lorg/apache/thrift/meta_data/SetMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v6, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    invoke-direct {v5, v9, v6}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lorg/apache/thrift/meta_data/SetMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDT:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "version_type"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDU:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "app_name"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDV:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "app_version"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDr:Ljava/util/Map;

    .line 170
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDr:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/FieldMetaData;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 385
    return-object p0
.end method

.method public a(Lorg/apache/thrift/protocol/d;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 894
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EN()Lorg/apache/thrift/protocol/g;

    .line 897
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EP()Lorg/apache/thrift/protocol/a;

    move-result-object v0

    .line 898
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-nez v1, :cond_0

    .line 989
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EO()V

    .line 992
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->validate()V

    .line 993
    return-void

    .line 901
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/a;->aUx:S

    packed-switch v1, :pswitch_data_0

    .line 985
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    .line 987
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EQ()V

    goto :goto_0

    .line 903
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_1

    .line 904
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    goto :goto_1

    .line 906
    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 910
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_2

    .line 911
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    goto :goto_1

    .line 913
    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 917
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_3

    .line 918
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    goto :goto_1

    .line 920
    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 924
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_4

    .line 925
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    goto :goto_1

    .line 927
    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 931
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_5

    .line 932
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    goto :goto_1

    .line 934
    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 938
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 939
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/mfs/Location;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    .line 940
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->a(Lorg/apache/thrift/protocol/d;)V

    goto :goto_1

    .line 942
    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto :goto_1

    .line 946
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    const/16 v2, 0xe

    if-ne v1, v2, :cond_8

    .line 948
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EV()Lorg/apache/thrift/protocol/f;

    move-result-object v1

    .line 949
    new-instance v0, Ljava/util/HashSet;

    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    .line 950
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/f;->size:I

    if-ge v0, v2, :cond_7

    .line 953
    new-instance v2, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    invoke-direct {v2}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;-><init>()V

    .line 954
    invoke-virtual {v2, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->a(Lorg/apache/thrift/protocol/d;)V

    .line 955
    iget-object v3, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 957
    :cond_7
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EW()V

    goto/16 :goto_1

    .line 960
    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 964
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_9

    .line 965
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 967
    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 971
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_a

    .line 972
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    goto/16 :goto_1

    .line 974
    :cond_a
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 978
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/a;->type:B

    if-ne v1, v4, :cond_b

    .line 979
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    goto/16 :goto_1

    .line 981
    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/a;->type:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;B)V

    goto/16 :goto_1

    .line 901
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

.method public a(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 676
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yZ()Z

    move-result v1

    .line 680
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yZ()Z

    move-result v2

    .line 681
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 682
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 684
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yS()Z

    move-result v1

    .line 689
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yS()Z

    move-result v2

    .line 690
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 691
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 693
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->za()Z

    move-result v1

    .line 698
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->za()Z

    move-result v2

    .line 699
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 700
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 702
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zb()Z

    move-result v1

    .line 707
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zb()Z

    move-result v2

    .line 708
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 709
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 711
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v1

    .line 716
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v2

    .line 717
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 718
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 720
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v1

    .line 725
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v2

    .line 726
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 727
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 729
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v1, v2}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->b(Lcom/xiaomi/common/logger/thrift/mfs/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v1

    .line 734
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v2

    .line 735
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 736
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 738
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v1

    .line 743
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v2

    .line 744
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 745
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 747
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v1

    .line 752
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v2

    .line 753
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 754
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 756
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v1

    .line 761
    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v2

    .line 762
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 763
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 765
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)I
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 779
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

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yZ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yZ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 786
    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yZ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 791
    if-nez v0, :cond_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yS()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 796
    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->yS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 801
    if-nez v0, :cond_0

    .line 805
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->za()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->za()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 806
    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->za()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 810
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 811
    if-nez v0, :cond_0

    .line 815
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 816
    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 820
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 825
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 826
    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 830
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 831
    if-nez v0, :cond_0

    .line 835
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 836
    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 840
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 841
    if-nez v0, :cond_0

    .line 845
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 846
    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 850
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 851
    if-nez v0, :cond_0

    .line 855
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 856
    if-nez v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 860
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 861
    if-nez v0, :cond_0

    .line 865
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 866
    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 870
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 871
    if-nez v0, :cond_0

    .line 875
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 876
    if-nez v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 880
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->Q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 881
    if-nez v0, :cond_0

    .line 885
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/d;)V
    .locals 3

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->validate()V

    .line 998
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDl:Lorg/apache/thrift/protocol/g;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/g;)V

    .line 999
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1000
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDE:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1001
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1005
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDm:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1006
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1010
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDF:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1011
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1015
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDG:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1016
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1020
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDo:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1022
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1026
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-eqz v0, :cond_5

    .line 1027
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1028
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDH:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1029
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/Location;->b(Lorg/apache/thrift/protocol/d;)V

    .line 1030
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1033
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 1034
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDI:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1037
    new-instance v0, Lorg/apache/thrift/protocol/f;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/f;)V

    .line 1038
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;

    .line 1040
    invoke-virtual {v0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;->b(Lorg/apache/thrift/protocol/d;)V

    goto :goto_0

    .line 1042
    :cond_6
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EM()V

    .line 1044
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1047
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1048
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1049
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDJ:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1050
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1054
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1055
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1056
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDK:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1057
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1061
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1062
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1063
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->aDL:Lorg/apache/thrift/protocol/a;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->a(Lorg/apache/thrift/protocol/a;)V

    .line 1064
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/d;->writeString(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EI()V

    .line 1068
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EJ()V

    .line 1069
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/d;->EH()V

    .line 1070
    return-void
.end method

.method public c(Lcom/xiaomi/common/logger/thrift/mfs/HostInfo;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method public cA(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public cB(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public cC(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    .line 496
    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->b(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)I

    move-result v0

    return v0
.end method

.method public cv(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public cw(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public cx(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public cy(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public cz(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    .line 361
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 668
    if-nez p1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    .line 670
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    if-eqz v1, :cond_0

    .line 671
    check-cast p1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;

    invoke-virtual {p0, p1}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->a(Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpApi("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1079
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1087
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1095
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, "network:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1103
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v1, "client_ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1112
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    const-string v1, "location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-nez v1, :cond_b

    .line 1122
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zf()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1129
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const-string v1, "host_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    if-nez v1, :cond_c

    .line 1132
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1139
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v1, "version_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1142
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    :cond_3
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zh()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1149
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, "app_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 1152
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    :cond_4
    :goto_8
    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->zi()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1159
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v1, "app_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1162
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_5
    :goto_9
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1081
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1089
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1097
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1105
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1114
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1124
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1134
    :cond_c
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1144
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1154
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1164
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'category\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1178
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uuid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1181
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1184
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'network\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_3
    return-void
.end method

.method public yS()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yZ()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public za()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zb()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->network:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zc()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->client_ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zd()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->location:Lcom/xiaomi/common/logger/thrift/mfs/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ze()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public zf()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->host_info:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zg()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->version_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zh()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zi()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi;->app_version:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
