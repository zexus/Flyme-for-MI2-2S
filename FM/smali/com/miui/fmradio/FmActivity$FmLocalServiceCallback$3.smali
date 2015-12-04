.class Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->onFmRecordError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

.field final synthetic val$errCode:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;II)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iput p2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->val$errCode:I

    iput p3, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, "errMsg":I
    iget v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->val$errCode:I

    packed-switch v1, :pswitch_data_0

    .line 1003
    :goto_0
    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iget-object v1, v1, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # invokes: Lcom/miui/fmradio/FmActivity;->showToast(I)V
    invoke-static {v1, v0}, Lcom/miui/fmradio/FmActivity;->access$1400(Lcom/miui/fmradio/FmActivity;I)V

    .line 1006
    :cond_0
    return-void

    .line 984
    :pswitch_0
    iget v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;->val$what:I

    packed-switch v1, :pswitch_data_1

    .line 989
    const v0, 0x7f0a0032

    .line 990
    goto :goto_0

    .line 986
    :pswitch_1
    const v0, 0x7f0a0034

    .line 987
    goto :goto_0

    .line 994
    :pswitch_2
    const v0, 0x7f0a0033

    .line 995
    goto :goto_0

    .line 997
    :pswitch_3
    const v0, 0x7f0a0035

    .line 998
    goto :goto_0

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 984
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
