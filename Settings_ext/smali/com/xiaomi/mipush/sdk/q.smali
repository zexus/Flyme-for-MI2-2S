.class Lcom/xiaomi/mipush/sdk/q;
.super Landroid/database/ContentObserver;
.source "PushServiceClient.java"


# instance fields
.field final synthetic aFF:Lcom/xiaomi/mipush/sdk/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/p;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/mipush/sdk/p;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/E;->cE(Landroid/content/Context;)Lcom/xiaomi/push/service/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/E;->BL()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/mipush/sdk/p;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 319
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->b(Lcom/xiaomi/mipush/sdk/p;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/mipush/sdk/p;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p;->a(Lcom/xiaomi/mipush/sdk/p;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/e/a;->bZ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->aFF:Lcom/xiaomi/mipush/sdk/p;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p;->Ae()V

    .line 325
    :cond_0
    return-void
.end method
