.class public final enum Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
.super Ljava/lang/Enum;
.source "PushClientsManager.java"


# static fields
.field public static final enum aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field public static final enum aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field public static final enum aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field private static final synthetic aJo:[Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const-string v1, "unbind"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 30
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const-string v1, "binding"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 31
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const-string v1, "binded"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJl:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJm:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJn:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJo:[Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->aJo:[Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    return-object v0
.end method
