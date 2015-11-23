.class Lcom/xiaomi/a/a/d/d;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aDa:Lcom/xiaomi/a/a/d/b;

.field final synthetic aDb:Lcom/xiaomi/a/a/d/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d/b;Lcom/xiaomi/a/a/d/f;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/a/a/d/d;->aDa:Lcom/xiaomi/a/a/d/b;

    iput-object p2, p0, Lcom/xiaomi/a/a/d/d;->aDb:Lcom/xiaomi/a/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/a/a/d/d;->aDa:Lcom/xiaomi/a/a/d/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/d/d;->aDb:Lcom/xiaomi/a/a/d/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/d/b;->a(Lcom/xiaomi/a/a/d/f;)V

    .line 91
    return-void
.end method
