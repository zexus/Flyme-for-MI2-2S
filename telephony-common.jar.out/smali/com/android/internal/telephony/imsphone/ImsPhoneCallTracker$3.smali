.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallHandover ::  srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHandoverFailed :: srcAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", targetAccessTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p4}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1381
    :cond_0
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 7
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1208
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v4, "onCallHeld"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1210
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1211
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1212
    .local v2, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    const/4 v6, 0x0

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    invoke-static {v3, p1, v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1214
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_3

    .line 1217
    :cond_0
    const/4 v1, 0x1

    .line 1218
    .local v1, "isOwner":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallGroup()Lcom/android/ims/internal/CallGroup;

    move-result-object v0

    .line 1219
    .local v0, "callGroup":Lcom/android/ims/internal/CallGroup;
    if-eqz v0, :cond_1

    .line 1220
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v1

    .line 1222
    :cond_1
    if-eqz v1, :cond_2

    .line 1223
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 1234
    .end local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    .end local v1    # "isOwner":Z
    :cond_2
    :goto_0
    monitor-exit v4

    .line 1235
    return-void

    .line 1229
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1230
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1234
    .end local v2    # "oldState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallHoldFailed reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1242
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1243
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v3, 0x94

    if-ne v1, v3, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 1256
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1257
    return-void

    .line 1248
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1253
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x12

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1256
    .end local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallHoldReceived"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1287
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone()V

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1293
    :cond_0
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallMergeFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1341
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallMerged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1314
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    .line 1316
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;Lcom/android/ims/ImsCall;)V

    .line 1331
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->post(Ljava/lang/Runnable;)Z

    .line 1333
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 1335
    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallProgressing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1112
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1114
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1270
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumeReceived"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone()V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1280
    :cond_0
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1265
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStartFailed reasonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0x92

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial()V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v1, 0x12

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1123
    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallSuppServiceReceived: suppServiceInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1300
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1301
    .local v0, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1302
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1303
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 1304
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 1305
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    .line 1307
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 1308
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1166
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallTerminated reasonCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1168
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1169
    .local v2, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Lcom/android/ims/ImsReasonInfo;)I
    invoke-static {v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I

    move-result v0

    .line 1170
    .local v0, "cause":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1171
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1173
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1175
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 1176
    const/4 v0, 0x1

    .line 1182
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1184
    const/16 v0, 0x5b

    .line 1187
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V
    invoke-static {v3, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1189
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    const/16 v4, 0x1f5

    if-ne v3, v4, :cond_2

    .line 1190
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 1193
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 1196
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3

    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1199
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1204
    :cond_3
    :goto_1
    return-void

    .line 1178
    :cond_4
    const/16 v0, 0x10

    goto :goto_0

    .line 1200
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1201
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onCallUpdated"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1128
    if-nez p1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1132
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    goto :goto_0
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v2, "onConferenceParticipantsStateChanged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1354
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1355
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateConferenceParticipants(Ljava/util/List;)V

    .line 1358
    :cond_0
    return-void
.end method
