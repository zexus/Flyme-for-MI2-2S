.class Lcom/miui/compass/CompassActivity$8;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->showAltitudeTipDialog()V
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
    .line 556
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$8;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 559
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$8;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->startCalibrateAltitude(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/miui/compass/CompassActivity;->access$300(Lcom/miui/compass/CompassActivity;ZZ)V

    .line 560
    return-void
.end method
