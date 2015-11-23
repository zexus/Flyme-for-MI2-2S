.class Lcom/android/settings/bF;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ju:Lcom/android/settings/bE;


# direct methods
.method constructor <init>(Lcom/android/settings/bE;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/bF;->ju:Lcom/android/settings/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/bF;->ju:Lcom/android/settings/bE;

    iget-object v0, v0, Lcom/android/settings/bE;->jt:Lcom/android/settings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method
