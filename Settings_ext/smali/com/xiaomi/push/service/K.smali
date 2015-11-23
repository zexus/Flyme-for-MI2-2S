.class Lcom/xiaomi/push/service/K;
.super Lcom/xiaomi/a/a/d/f;
.source "ServiceConfig.java"


# instance fields
.field aJN:Z

.field final synthetic aJO:Lcom/xiaomi/push/service/J;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d/f;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/K;->aJN:Z

    .line 115
    return-void
.end method


# virtual methods
.method public yQ()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/xiaomi/smack/d/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://resolver.msg.xiaomi.net/psc/?t=a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/c/n;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/xiaomi/push/b/b;->f([B)Lcom/xiaomi/push/b/b;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/J;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/K;->aJN:Z

    .line 127
    iget-object v0, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    invoke-static {v0}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/J;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public yR()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/J;Lcom/xiaomi/a/a/d/f;)Lcom/xiaomi/a/a/d/f;

    .line 137
    iget-boolean v0, p0, Lcom/xiaomi/push/service/K;->aJN:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    invoke-static {v0}, Lcom/xiaomi/push/service/J;->b(Lcom/xiaomi/push/service/J;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/L;

    .line 139
    iget-object v2, p0, Lcom/xiaomi/push/service/K;->aJO:Lcom/xiaomi/push/service/J;

    invoke-static {v2}, Lcom/xiaomi/push/service/J;->c(Lcom/xiaomi/push/service/J;)Lcom/xiaomi/push/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/L;->a(Lcom/xiaomi/push/b/b;)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method
