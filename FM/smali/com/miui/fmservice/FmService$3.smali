.class Lcom/miui/fmservice/FmService$3;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method constructor <init>(Lcom/miui/fmservice/FmService;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/miui/fmservice/FmService$3;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/fmservice/FmService$3;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    .line 407
    return-void
.end method
