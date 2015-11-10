.class Lcom/android/server/lights/MiuiLightsService$LightImpl$2;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/MiuiLightsService$LightImpl;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$200(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->isTurnOnButtonLight()Z
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$1100(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v2

    # setter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z
    invoke-static {v0, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$402(Lcom/android/server/lights/MiuiLightsService$LightImpl;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$400(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$500(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$600(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$700(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I
    invoke-static {v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I
    invoke-static {v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v5

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$1201(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$600(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v5

    move v3, v1

    move v4, v1

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$1301(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    goto :goto_0
.end method
