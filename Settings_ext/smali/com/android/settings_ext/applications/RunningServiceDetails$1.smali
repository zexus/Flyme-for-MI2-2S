.class Lcom/android/settings_ext/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kc:Lcom/android/settings_ext/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails$1;->Kc:Lcom/android/settings_ext/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails$1;->Kc:Lcom/android/settings_ext/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails$1;->Kc:Lcom/android/settings_ext/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningServiceDetails;)V

    .line 505
    :cond_0
    return-void
.end method
