.class Lcom/android/settings_ext/fR;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;

.field final synthetic vW:Landroid/os/Handler;

.field final synthetic vX:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/settings_ext/fR;->vV:Lcom/android/settings_ext/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ext/fR;->vW:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ext/fR;->vX:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/settings_ext/fR;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->x(Lcom/android/settings_ext/RadioInfo;)V

    .line 845
    iget-object v0, p0, Lcom/android/settings_ext/fR;->vW:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/fR;->vX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method
