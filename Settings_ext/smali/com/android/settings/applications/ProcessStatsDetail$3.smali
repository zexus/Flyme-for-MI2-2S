.class Lcom/android/settings/applications/ProcessStatsDetail$3;
.super Landroid/content/BroadcastReceiver;
.source "ProcessStatsDetail.java"


# instance fields
.field final synthetic Iu:Lcom/android/settings/applications/ProcessStatsDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$3;->Iu:Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$3;->Iu:Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-static {v0}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
