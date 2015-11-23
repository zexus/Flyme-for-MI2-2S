.class Lcom/xiaomi/smack/s;
.super Ljava/lang/Object;
.source "XMPPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aMH:Lcom/xiaomi/smack/p;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/xiaomi/smack/s;->aMH:Lcom/xiaomi/smack/p;

    iput-object p2, p0, Lcom/xiaomi/smack/s;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 559
    invoke-static {}, Lcom/xiaomi/c/f;->AP()Lcom/xiaomi/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/s;->val$host:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/c/f;->i(Ljava/lang/String;Z)Lcom/xiaomi/c/b;

    .line 560
    return-void
.end method
