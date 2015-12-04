.class Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->onFmServiceError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

.field final synthetic val$tId:I


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;I)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iput p2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;->val$tId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    iget v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;->val$tId:I

    # invokes: Lcom/miui/fmradio/FmActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$1400(Lcom/miui/fmradio/FmActivity;I)V

    .line 926
    return-void
.end method
