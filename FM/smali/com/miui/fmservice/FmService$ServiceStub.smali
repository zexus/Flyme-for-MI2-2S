.class public Lcom/miui/fmservice/FmService$ServiceStub;
.super Lcom/miui/fmservice/IFmService$Stub;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStub"
.end annotation


# instance fields
.field private mService:Lcom/miui/fmservice/FmService;

.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method private constructor <init>(Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService;)V
    .locals 0
    .param p2, "service"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/fmservice/FmService$ServiceStub;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Lcom/miui/fmservice/IFmService$Stub;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmservice/FmService;
    .param p2, "x1"    # Lcom/miui/fmservice/FmService;
    .param p3, "x2"    # Lcom/miui/fmservice/FmService$1;

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lcom/miui/fmservice/FmService$ServiceStub;-><init>(Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService;)V

    return-void
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->cancelSearch()Z

    move-result v0

    return v0
.end method

.method public enableSpeaker(Z)V
    .locals 1
    .param p1, "speakerOn"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0, p1}, Lcom/miui/fmservice/FmService;->enableSpeaker(Z)V

    .line 490
    return-void
.end method

.method public fmOff()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    # invokes: Lcom/miui/fmservice/FmService;->fmOff()Z
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$500(Lcom/miui/fmservice/FmService;)Z

    move-result v0

    return v0
.end method

.method public fmOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    # invokes: Lcom/miui/fmservice/FmService;->fmOn()Z
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$400(Lcom/miui/fmservice/FmService;)Z

    move-result v0

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->getRadioText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->isSpeakerEnabled()Z

    move-result v0

    return v0
.end method

.method public registerCallbacks(Lcom/miui/fmservice/IFmServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/miui/fmservice/IFmServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0, p1}, Lcom/miui/fmservice/FmService;->registerCallbacks(Lcom/miui/fmservice/IFmServiceCallback;)V

    .line 500
    return-void
.end method

.method public scan(I)Z
    .locals 1
    .param p1, "pty"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0, p1}, Lcom/miui/fmservice/FmService;->scan(I)Z

    move-result v0

    return v0
.end method

.method public seek(Z)Z
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0, p1}, Lcom/miui/fmservice/FmService;->seek(Z)Z

    move-result v0

    return v0
.end method

.method public tune(I)Z
    .locals 1
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/fmservice/FmService$ServiceStub;->mService:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0, p1}, Lcom/miui/fmservice/FmService;->tune(I)Z

    move-result v0

    return v0
.end method
