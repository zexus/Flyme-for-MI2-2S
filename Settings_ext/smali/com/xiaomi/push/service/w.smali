.class final Lcom/xiaomi/push/service/w;
.super Ljava/lang/Object;
.source "NetworkCheckup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aIT:Ljava/util/List;

.field final synthetic aIU:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xiaomi/push/service/w;->aIT:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/push/service/w;->aIU:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "www.baidu.com:80"

    # invokes: Lcom/xiaomi/push/service/v;->ds(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/xiaomi/push/service/v;->access$200(Ljava/lang/String;)Z

    .line 99
    iget-object v0, p0, Lcom/xiaomi/push/service/w;->aIT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    # invokes: Lcom/xiaomi/push/service/v;->ds(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/xiaomi/push/service/v;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/push/service/w;->aIU:Z

    if-nez v0, :cond_0

    .line 104
    :cond_1
    return-void
.end method
