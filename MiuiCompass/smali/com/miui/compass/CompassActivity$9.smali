.class Lcom/miui/compass/CompassActivity$9;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->showLocationServiceDialog()V
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
    .line 575
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$9;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$9;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$1500(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->enableLocationProvider()V

    .line 579
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$9;->this$0:Lcom/miui/compass/CompassActivity;

    const v1, 0x7f080025

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 582
    return-void
.end method
