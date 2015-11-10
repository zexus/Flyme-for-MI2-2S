.class Lcom/android/server/lights/MiuiLightsService$LightImpl$1;
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
    .line 58
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v0, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$100(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_buttons_state"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z
    invoke-static {v2, v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$202(Lcom/android/server/lights/MiuiLightsService$LightImpl;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$200(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$301(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 70
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$400(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$500(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$600(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$700(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I
    invoke-static {v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;->this$1:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I
    invoke-static {v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v5

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$1001(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    goto :goto_1
.end method
