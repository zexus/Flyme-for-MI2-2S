.class Lcom/android/settings/deviceinfo/Status$3;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# instance fields
.field final synthetic Tj:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$3;->Tj:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellBroadcastMessage;

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$3;->Tj:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/Status;->a(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V

    goto :goto_0
.end method
