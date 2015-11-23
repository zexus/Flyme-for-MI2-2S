.class public Lcom/xiaomi/mipush/sdk/f;
.super Ljava/lang/Object;
.source "MessageHandleService.java"


# instance fields
.field private aFo:Lcom/xiaomi/mipush/sdk/o;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/o;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/f;->aFo:Lcom/xiaomi/mipush/sdk/o;

    .line 99
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/f;->intent:Landroid/content/Intent;

    .line 100
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/f;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public zO()Lcom/xiaomi/mipush/sdk/o;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/f;->aFo:Lcom/xiaomi/mipush/sdk/o;

    return-object v0
.end method
