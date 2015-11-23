.class public final enum Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;
.super Ljava/lang/Enum;
.source "HostInfo.java"


# static fields
.field public static final enum aDB:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

.field public static final enum aDC:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

.field private static final synthetic aDD:[Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

.field private static final aDx:Ljava/util/Map;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    const-string v1, "HOST"

    const-string v2, "host"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDB:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    .line 45
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    const-string v1, "LAND_NODE_INFO"

    const-string v2, "land_node_info"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDC:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    .line 43
    new-array v0, v5, [Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDB:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDC:Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDD:[Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDx:Ljava/util/Map;

    .line 50
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    .line 51
    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDx:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-short p3, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->_thriftId:S

    .line 91
    iput-object p4, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->_fieldName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->aDD:[Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HostInfo$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
