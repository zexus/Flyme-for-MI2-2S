.class Lcom/xiaomi/d/h;
.super Lcom/xiaomi/push/service/L;
.source "StatsHandler.java"


# instance fields
.field final synthetic aOK:Lcom/xiaomi/d/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/g;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xiaomi/d/h;->aOK:Lcom/xiaomi/d/g;

    invoke-direct {p0}, Lcom/xiaomi/push/service/L;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/b/d;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->Bz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaomi/d/g;->CU()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/d;->By()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->setDuration(I)V

    .line 75
    :cond_0
    return-void
.end method
