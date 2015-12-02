.class Lcom/miui/compass/CompassActivity$3;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mAltCannotCalibrate:Z
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$100(Lcom/miui/compass/CompassActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->showAltitudeTipDialog()V
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$200(Lcom/miui/compass/CompassActivity;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$3;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->startCalibrateAltitude(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/miui/compass/CompassActivity;->access$300(Lcom/miui/compass/CompassActivity;ZZ)V

    goto :goto_0
.end method
