.class Lcom/miui/fmradio/FmRecorder$2;
.super Ljava/lang/Object;
.source "FmRecorder.java"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmRecorder;->startRecord(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmRecorder;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmRecorder;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/fmradio/FmRecorder$2;->this$0:Lcom/miui/fmradio/FmRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 2
    .param p1, "mr"    # Lmiui/media/Mp3Recorder;
    .param p2, "err"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder$2;->this$0:Lcom/miui/fmradio/FmRecorder;

    const/4 v1, 0x1

    # invokes: Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V
    invoke-static {v0, v1, p2}, Lcom/miui/fmradio/FmRecorder;->access$000(Lcom/miui/fmradio/FmRecorder;II)V

    .line 78
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder$2;->this$0:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->stopRecord()V

    .line 79
    return-void
.end method
