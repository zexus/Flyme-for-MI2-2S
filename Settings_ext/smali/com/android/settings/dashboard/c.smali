.class Lcom/android/settings/dashboard/c;
.super Landroid/os/Handler;
.source "DashboardSummary.java"


# instance fields
.field final synthetic Rh:Lcom/android/settings/dashboard/b;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/b;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/dashboard/c;->Rh:Lcom/android/settings/dashboard/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dashboard/c;->Rh:Lcom/android/settings/dashboard/b;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/settings/dashboard/c;->Rh:Lcom/android/settings/dashboard/b;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/b;->a(Lcom/android/settings/dashboard/b;Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
