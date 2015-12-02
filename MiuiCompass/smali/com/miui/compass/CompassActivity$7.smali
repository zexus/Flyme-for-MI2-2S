.class Lcom/miui/compass/CompassActivity$7;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->showCalibratAltitudeDialog()V
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
    .line 540
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$7;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$7;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$1500(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->cancelCalibrating()V

    .line 544
    return-void
.end method
