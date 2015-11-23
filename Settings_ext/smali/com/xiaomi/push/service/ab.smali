.class public abstract Lcom/xiaomi/push/service/ab;
.super Ljava/lang/Object;
.source "XMPushService.java"


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    iput p1, p0, Lcom/xiaomi/push/service/ab;->type:I

    .line 1185
    return-void
.end method


# virtual methods
.method public abstract BA()Ljava/lang/String;
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1189
    iget v0, p0, Lcom/xiaomi/push/service/ab;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/ab;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ab;->BA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/ab;->yQ()V

    .line 1193
    return-void
.end method

.method public abstract yQ()V
.end method
