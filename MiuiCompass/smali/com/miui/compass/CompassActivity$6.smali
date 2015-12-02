.class Lcom/miui/compass/CompassActivity$6;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->showMobiledataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;

.field final synthetic val$d:Lcom/miui/compass/MobileDataAlertDialog;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;Lcom/miui/compass/MobileDataAlertDialog;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$6;->this$0:Lcom/miui/compass/CompassActivity;

    iput-object p2, p0, Lcom/miui/compass/CompassActivity$6;->val$d:Lcom/miui/compass/MobileDataAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$6;->val$d:Lcom/miui/compass/MobileDataAlertDialog;

    invoke-virtual {v0}, Lcom/miui/compass/MobileDataAlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$6;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0, v2}, Lcom/miui/compass/CompassPreferences;->saveShowMobiledataAlert(Landroid/content/Context;Z)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$6;->this$0:Lcom/miui/compass/CompassActivity;

    const/4 v1, 0x1

    # invokes: Lcom/miui/compass/CompassActivity;->startCalibrateAltitude(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/miui/compass/CompassActivity;->access$300(Lcom/miui/compass/CompassActivity;ZZ)V

    .line 526
    return-void
.end method
