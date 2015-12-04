.class Lcom/miui/fmradio/FmLocalService$3;
.super Ljava/lang/Object;
.source "FmLocalService.java"

# interfaces
.implements Lcom/miui/fmradio/FmRecorder$FmRecorderListener;


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
    .line 1147
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordError(II)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1165
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1166
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1167
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1168
    return-void
.end method

.method public onRecordStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1158
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1159
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1160
    return-void
.end method

.method public onRecordStoped(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1151
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1152
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService$3;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    return-void
.end method
