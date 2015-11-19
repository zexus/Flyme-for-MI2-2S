.class public final enum Lcom/milink/api/v1/type/ReturnCode;
.super Ljava/lang/Enum;
.source "ReturnCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/milink/api/v1/type/ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum Error:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum NotConnected:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum NotSupport:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum OK:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum ServiceException:Lcom/milink/api/v1/type/ReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    .line 6
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "Error"

    invoke-direct {v0, v1, v4}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    .line 7
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "ServiceException"

    invoke-direct {v0, v1, v5}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    .line 8
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "NotConnected"

    invoke-direct {v0, v1, v6}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    .line 9
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "NotSupport"

    invoke-direct {v0, v1, v7}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    .line 10
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "InvalidParams"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    .line 11
    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "InvalidUrl"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/milink/api/v1/type/ReturnCode;

    sget-object v1, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->$VALUES:[Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/milink/api/v1/type/ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/ReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->$VALUES:[Lcom/milink/api/v1/type/ReturnCode;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/ReturnCode;

    return-object v0
.end method
