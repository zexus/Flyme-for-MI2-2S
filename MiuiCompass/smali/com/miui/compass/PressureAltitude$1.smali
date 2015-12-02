.class Lcom/miui/compass/PressureAltitude$1;
.super Ljava/lang/Object;
.source "PressureAltitude.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/PressureAltitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/PressureAltitude;


# direct methods
.method constructor <init>(Lcom/miui/compass/PressureAltitude;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 54
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mIsPressure:Z
    invoke-static {v3}, Lcom/miui/compass/PressureAltitude;->access$000(Lcom/miui/compass/PressureAltitude;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v1, 0x43960000    # 300.0f

    .line 55
    .local v1, "l":F
    :goto_0
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mIsPressure:Z
    invoke-static {v3}, Lcom/miui/compass/PressureAltitude;->access$000(Lcom/miui/compass/PressureAltitude;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v0, 0x44898000    # 1100.0f

    .line 56
    .local v0, "h":F
    :goto_1
    sub-float v3, v0, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v3, v4

    .line 57
    .local v2, "maxInterval":F
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mValue:F
    invoke-static {v3}, Lcom/miui/compass/PressureAltitude;->access$100(Lcom/miui/compass/PressureAltitude;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mDrawingValue:F
    invoke-static {v4}, Lcom/miui/compass/PressureAltitude;->access$200(Lcom/miui/compass/PressureAltitude;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    iget-object v4, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mValue:F
    invoke-static {v4}, Lcom/miui/compass/PressureAltitude;->access$100(Lcom/miui/compass/PressureAltitude;)F

    move-result v4

    # setter for: Lcom/miui/compass/PressureAltitude;->mDrawingValue:F
    invoke-static {v3, v4}, Lcom/miui/compass/PressureAltitude;->access$202(Lcom/miui/compass/PressureAltitude;F)F

    .line 63
    :goto_2
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    invoke-virtual {v3}, Lcom/miui/compass/PressureAltitude;->invalidate()V

    .line 64
    return-void

    .line 54
    .end local v0    # "h":F
    .end local v1    # "l":F
    .end local v2    # "maxInterval":F
    :cond_0
    const/high16 v1, -0x3c060000    # -500.0f

    goto :goto_0

    .line 55
    .restart local v1    # "l":F
    :cond_1
    const v0, 0x459c4000    # 5000.0f

    goto :goto_1

    .line 60
    .restart local v0    # "h":F
    .restart local v2    # "maxInterval":F
    :cond_2
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    iget-object v4, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mValue:F
    invoke-static {v4}, Lcom/miui/compass/PressureAltitude;->access$100(Lcom/miui/compass/PressureAltitude;)F

    move-result v4

    iget-object v5, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mDrawingValue:F
    invoke-static {v5}, Lcom/miui/compass/PressureAltitude;->access$200(Lcom/miui/compass/PressureAltitude;)F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    div-float/2addr v4, v5

    # += operator for: Lcom/miui/compass/PressureAltitude;->mDrawingValue:F
    invoke-static {v3, v4}, Lcom/miui/compass/PressureAltitude;->access$216(Lcom/miui/compass/PressureAltitude;F)F

    .line 61
    iget-object v3, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/miui/compass/PressureAltitude;->access$400(Lcom/miui/compass/PressureAltitude;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/compass/PressureAltitude$1;->this$0:Lcom/miui/compass/PressureAltitude;

    # getter for: Lcom/miui/compass/PressureAltitude;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/miui/compass/PressureAltitude;->access$300(Lcom/miui/compass/PressureAltitude;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
