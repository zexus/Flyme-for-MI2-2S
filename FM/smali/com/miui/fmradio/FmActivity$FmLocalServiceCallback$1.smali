.class Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$1;
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


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$1;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$1;->this$1:Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;

    iget-object v0, v0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # invokes: Lcom/miui/fmradio/FmActivity;->showDonotSupportDialog()V
    invoke-static {v0}, Lcom/miui/fmradio/FmActivity;->access$1200(Lcom/miui/fmradio/FmActivity;)V

    .line 906
    return-void
.end method
