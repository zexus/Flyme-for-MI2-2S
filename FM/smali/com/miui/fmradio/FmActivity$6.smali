.class Lcom/miui/fmradio/FmActivity$6;
.super Landroid/os/Handler;
.source "FmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmActivity;
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
    .line 759
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$6;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 762
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 772
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$6;->this$0:Lcom/miui/fmradio/FmActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmActivity;->updateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$900(Lcom/miui/fmradio/FmActivity;I)V

    goto :goto_0

    .line 767
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$6;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x4

    # invokes: Lcom/miui/fmradio/FmActivity;->doAnimation(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$1000(Lcom/miui/fmradio/FmActivity;I)V

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
