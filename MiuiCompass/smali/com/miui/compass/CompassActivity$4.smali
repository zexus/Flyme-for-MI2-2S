.class Lcom/miui/compass/CompassActivity$4;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Lmiui/app/OnStatusBarChangeListener;


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
    .line 285
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarHeightChange(I)V
    .locals 3
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 288
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "statusBarBlur":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 290
    return-void
.end method
