.class Lcom/miui/fmradio/FmActivity$2;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity;->doAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmActivity;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$2;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 644
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$2;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnPower:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/miui/fmradio/FmActivity;->access$100(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$2;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mBtnPowerLarge:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/miui/fmradio/FmActivity;->access$300(Lcom/miui/fmradio/FmActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 646
    return-void
.end method
