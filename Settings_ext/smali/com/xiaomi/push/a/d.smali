.class Lcom/xiaomi/push/a/d;
.super Lcom/xiaomi/a/a/d/f;
.source "LogUploader.java"


# instance fields
.field final synthetic aHT:Lcom/xiaomi/push/a/b;

.field aHU:Lcom/xiaomi/a/a/d/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/xiaomi/push/a/d;->aHT:Lcom/xiaomi/push/a/b;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public yQ()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->aHT:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/f;

    .line 270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/f;->Bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->aHT:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/a/d/f;

    iput-object v0, p0, Lcom/xiaomi/push/a/d;->aHU:Lcom/xiaomi/a/a/d/f;

    .line 272
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->aHU:Lcom/xiaomi/a/a/d/f;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d/f;->yQ()V

    .line 274
    :cond_0
    return-void
.end method

.method public yR()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->aHU:Lcom/xiaomi/a/a/d/f;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xiaomi/push/a/d;->aHU:Lcom/xiaomi/a/a/d/f;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d/f;->yR()V

    .line 281
    :cond_0
    return-void
.end method
