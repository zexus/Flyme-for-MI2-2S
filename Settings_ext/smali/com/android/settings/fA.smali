.class Lcom/android/settings/fA;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# instance fields
.field final synthetic vV:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->h(Lcom/android/settings/RadioInfo;)V

    .line 196
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 184
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->f(Lcom/android/settings/RadioInfo;)V

    .line 179
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 208
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->d(Lcom/android/settings/RadioInfo;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->e(Lcom/android/settings/RadioInfo;)V

    .line 174
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->g(Lcom/android/settings/RadioInfo;)V

    .line 190
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 165
    iget-object v0, p0, Lcom/android/settings/fA;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;)V

    .line 166
    return-void
.end method
