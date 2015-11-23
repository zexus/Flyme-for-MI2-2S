.class Lcom/xiaomi/miui/pushads/sdk/b/d;
.super Landroid/os/Handler;
.source "AdsLogSender.java"


# instance fields
.field final synthetic aGP:Lcom/xiaomi/miui/pushads/sdk/b/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miui/pushads/sdk/b/c;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/b/d;->aGP:Lcom/xiaomi/miui/pushads/sdk/b/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    .line 105
    return-void
.end method
