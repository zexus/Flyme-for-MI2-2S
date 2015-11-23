.class final Lcom/xiaomi/smack/d/j;
.super Lcom/xiaomi/a/a/d/f;
.source "TaskExecutor.java"


# instance fields
.field final synthetic aOw:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xiaomi/smack/d/j;->aOw:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public yQ()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/smack/d/j;->aOw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void
.end method
