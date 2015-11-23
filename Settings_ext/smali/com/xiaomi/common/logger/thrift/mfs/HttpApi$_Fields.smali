.class public final enum Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;
.super Ljava/lang/Enum;
.source "HttpApi.java"


# static fields
.field public static final enum aDM:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDN:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDO:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDP:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDQ:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDR:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDS:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDT:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDU:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field public static final enum aDV:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field private static final synthetic aDW:[Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

.field private static final aDx:Ljava/util/Map;


# instance fields
.field private final _fieldName:Ljava/lang/String;

.field private final _thriftId:S


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 60
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "CATEGORY"

    const/4 v2, 0x0

    const-string v3, "category"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDM:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 61
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "UUID"

    const-string v2, "uuid"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDN:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 62
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDO:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 63
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDP:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 64
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "CLIENT_IP"

    const-string v2, "client_ip"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDQ:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 65
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "LOCATION"

    const/4 v2, 0x6

    const-string v3, "location"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDR:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 66
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "HOST_INFO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "host_info"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDS:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 67
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "VERSION_TYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "version_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDT:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 68
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "APP_NAME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "app_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDU:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 69
    new-instance v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const-string v1, "APP_VERSION"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "app_version"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDV:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDM:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDN:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDO:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDP:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDQ:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDR:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDS:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDT:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDU:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDV:Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDW:[Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDx:Ljava/util/Map;

    .line 74
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

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

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    .line 75
    sget-object v2, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDx:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput-short p3, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->_thriftId:S

    .line 131
    iput-object p4, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->_fieldName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->aDW:[Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    invoke-virtual {v0}, [Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/common/logger/thrift/mfs/HttpApi$_Fields;->_fieldName:Ljava/lang/String;

    return-object v0
.end method
