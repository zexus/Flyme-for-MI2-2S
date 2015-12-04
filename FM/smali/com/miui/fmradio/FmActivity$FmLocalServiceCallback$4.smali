.class Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$4;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->onHeadsetStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$4;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const v1, 0x7f0a0015

    # invokes: Lcom/miui/fmradio/FmActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$1400(Lcom/miui/fmradio/FmActivity;I)V

    .line 1022
    return-void
.end method
