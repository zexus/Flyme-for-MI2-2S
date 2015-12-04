.class Lcom/miui/fmradio/FmLocalService$4;
.super Landroid/telephony/PhoneStateListener;
.source "FmLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1402
    packed-switch p1, :pswitch_data_0

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1404
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;
    invoke-static {v0}, Lcom/miui/fmradio/FmLocalService;->access$3300(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;
    invoke-static {v0}, Lcom/miui/fmradio/FmLocalService;->access$3300(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    move-result-object v0

    # getter for: Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I
    invoke-static {v0}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->access$2100(Lcom/miui/fmradio/FmLocalService$AudioFocusListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOn()V

    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->abortScanStations()V

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$4;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, v1, v1}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    goto :goto_0

    .line 1402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
