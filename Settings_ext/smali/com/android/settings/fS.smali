.class Lcom/android/settings/fS;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic vV:Lcom/android/settings/RadioInfo;

.field final synthetic vW:Landroid/os/Handler;

.field final synthetic vX:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/settings/fS;->vV:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/fS;->vW:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/fS;->vX:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/settings/fS;->vV:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->y(Lcom/android/settings/RadioInfo;)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/fS;->vW:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fS;->vX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 855
    return-void
.end method
