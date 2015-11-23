.class Lcom/xiaomi/d/b;
.super Lcom/xiaomi/push/service/ab;
.source "BindTracker.java"


# instance fields
.field final synthetic aOE:Lcom/xiaomi/d/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/a;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xiaomi/d/b;->aOE:Lcom/xiaomi/d/a;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public BA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Handling bind stats"

    return-object v0
.end method

.method public yQ()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/d/b;->aOE:Lcom/xiaomi/d/a;

    invoke-static {v0}, Lcom/xiaomi/d/a;->a(Lcom/xiaomi/d/a;)V

    .line 51
    return-void
.end method
