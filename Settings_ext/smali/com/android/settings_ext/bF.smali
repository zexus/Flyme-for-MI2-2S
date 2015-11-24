.class Lcom/android/settings_ext/bF;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ju:Lcom/android/settings_ext/bE;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bE;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ext/bF;->ju:Lcom/android/settings_ext/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/bF;->ju:Lcom/android/settings_ext/bE;

    iget-object v0, v0, Lcom/android/settings_ext/bE;->jt:Lcom/android/settings_ext/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method
