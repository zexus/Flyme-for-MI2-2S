.class Lcom/android/settings_ext/dB;
.super Landroid/os/Handler;
.source "MiuiDeviceInfoSettings.java"


# instance fields
.field final synthetic pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 745
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 764
    :goto_0
    return-void

    .line 747
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->b(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v0

    iput-wide v2, v0, Lcom/android/settings_ext/dD;->pq:J

    .line 748
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->b(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v0

    iput-wide v2, v0, Lcom/android/settings_ext/dD;->gK:J

    .line 749
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->c(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v0

    iput-wide v2, v0, Lcom/android/settings_ext/dD;->pq:J

    .line 750
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->c(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v0

    iput-wide v2, v0, Lcom/android/settings_ext/dD;->gK:J

    .line 751
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->d(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dE;

    .line 752
    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->eG()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->c(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/settings_ext/dD;->gK:J

    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->eF()Lcom/android/settings_ext/dD;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/settings_ext/dD;->gK:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/settings_ext/dD;->gK:J

    .line 754
    iget-object v2, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->c(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/settings_ext/dD;->pq:J

    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->eF()Lcom/android/settings_ext/dD;

    move-result-object v0

    iget-wide v6, v0, Lcom/android/settings_ext/dD;->pq:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/settings_ext/dD;->pq:J

    goto :goto_1

    .line 756
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->b(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/settings_ext/dD;->gK:J

    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->eF()Lcom/android/settings_ext/dD;

    move-result-object v3

    iget-wide v6, v3, Lcom/android/settings_ext/dD;->gK:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/settings_ext/dD;->gK:J

    .line 757
    iget-object v2, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->b(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Lcom/android/settings_ext/dD;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/settings_ext/dD;->pq:J

    invoke-virtual {v0}, Lcom/android/settings_ext/dE;->eF()Lcom/android/settings_ext/dD;

    move-result-object v0

    iget-wide v6, v0, Lcom/android/settings_ext/dD;->pq:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/settings_ext/dD;->pq:J

    goto :goto_1

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/dB;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->e(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)V

    goto/16 :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
