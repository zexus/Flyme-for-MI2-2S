.class Lcom/miui/fmradio/FmLocalService$AudioFocusListener;
.super Ljava/lang/Object;
.source "FmLocalService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private mAudioState:I

.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 1

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p2, "x1"    # Lcom/miui/fmradio/FmLocalService$1;

    .prologue
    .line 1352
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/fmradio/FmLocalService$AudioFocusListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    .prologue
    .line 1352
    iget v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I

    return v0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x0

    .line 1356
    packed-switch p1, :pswitch_data_0

    .line 1376
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I

    .line 1377
    return-void

    .line 1358
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOff()V

    goto :goto_0

    .line 1363
    :pswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, v1, v1}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    goto :goto_0

    .line 1369
    :pswitch_3
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOn()V

    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
